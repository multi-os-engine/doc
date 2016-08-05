.. highlight:: java

=============
Using the NatJ Library
=============

The NatJ library provided with the Intel’s Multi-OS Engine Technology Preview enables you to easily bind native
methods to Java*. This  section  describes how to use the main features of NatJ and provides code examples.



**Binding C Functions to Java**

To bind C functions to Java*, create an enclosing class definition and add binding method definitions to this class::

    @Runtime(CRuntime.class)
    class MyCFunctions {

        @CFunction("myfunction")
        public native void method(NSSomething nsSomething);

    }

In this code example, the ``@Runtime(CRuntime.class)`` annotation of the ``MyCFunctions`` class indicates that this
class belongs to the C run time and will be handled as such by NatJ. The annotation can be inherited, so you do not
need to mark the descendants. The ``@CFunction`` annotation completes the binding of the appropriately typed native
C function and specifies the symbol name of the original C function.

.. note::
    NatJ uses internal heuristics to determine the run time the definition belongs to, so in most cases you do
    not need to add the ``@Runtime(...)`` annotation. For example, in the previous code sample the ``method``
    method is marked with ``@CFunction(...)`` annotation that belongs to the C run time, so NatJ uses it as the
    default when processing that method.



**Binding Native Global Variables**

To bind global variables, use the ``@CVariable`` annotation::

    @CVariable(name = "nativeInteger", isGetter = true)
    int getNativeInteger();

    @CVariable(name = "nativeInteger", isGetter = false)
    void setNativeInteger(int newVal);

The ``name`` argument of the ``@CVariable`` annotation specifies the
native symbol name. The ``isGetter`` argument specifies whether
the method is a getter or a setter.



**Binding Objective-C* Classes to Java***

An existing Objective-C* class is bound to Java* as a (possibly indirect) subclass of ``ObjCObject``.
The Objective-C class hierarchy should be retained. For example, ``ObjCObject > NSObject > NSArray`` is a
valid hierarchy.

The ``ObjCObject`` class is a subclass of ``NativeObject`` that represents Java objects
that have a native counterpart, which we call `peer`.

The binding code of an imaginary class ``NSSomething`` will look as follows::

    @ObjCClassBinding
    class NSSomething extends NSObject implements NSCopying {

        static {
            NatJ.register(); // registers the type with the NatJ system
        }

        //The constructor is only used inside the NatJ code
        protected NSSomething(Pointer peer) {
            super(peer);
        }

        // Allocates an uninitalized object
        @Selector("alloc")
        public static native NSSomething alloc();

        // Initializes an object with the default
        @Selector("init")
        public native NSSomething init();

        // A method binding corresponding to the defined selector
        @Selector("aMethod:::")
        public native void aMethod(int x, int y, int z);

    }

The ``@ObjCClassBinding`` annotation indicates that NatJ should handle the class as a binding class. Classes without
this annotation will be considered to be inherited classes. By default, binding classes represent Objective-C classes
with the same unqualified name the Java class has. At the same time, inherited classes have the qualified name at the
Objective-C side. You can explicitly define the native-side names by adding the ``@ObjCClassName`` annotation to the
Java class definition by filling its argument with the actual name you want to assign to this class on the Objective-C
side. To bind native methods, mark them with the ``@Selector`` annotation. The annotation  argument specifies the
selector of the Objective-C method.



**Passing Object References as Regular Java References**

You can easily pass object references as arguments. NatJ automatically converts them for you::

    class CustomClass extends NSObject {

        //...

        @Selector("setReceiver:")
        public void setReceiver(NSObject receiver)

        //...

    }

    //...

    NSObject obj = NSObject.alloc().init();
    CustomClass anotherObj = CustomClass.alloc().init();
    anotherObj.setReceiver(obj);

You do not have to worry about memory management, because NatJ makes all the required retain/release calls.



**Passing Regular Java Objects to the Objective-C Side**

NatJ generates the Objective-C proxy objects automatically. For example::

    class X {

        @Selector("aMethod:")
        public void aMethod();

    }

If you pass a reference to this object to the Objective-C side, then the Objective-C code will be able to call the
``aMethod:`` selector. You can use this feature if you want to implement a native interface inline with an anonymous
class.



**Automatic Conversion Between Java Strings and Native Strings**

If you want to bind an Objective-C method with an NSString argument or return value, you can bind it as a
Java String class. For example, suppose you have the following Objective-C method:

.. code-block:: objc

    - (NSString *)someMethod:(NSString *)aParam;

To bind this method in Java, use the ``@Selector(...)`` annotation. For example::

    @Selector("someMethod:")
    String bindOfSomeMethodA(String aParam);

    //or

    @Selector("someMethod:")
    String bindOfSomeMethodB(NSString aParam);

You can bind the same native Objective-C method with multiple binding
methods by specifying the same selector string in the ``@Selector(...)`` annotations.

Automatic string conversion also works for C. For example, you can bind the system function ``getenv`` as follows::

    @CFunction("getenv")
    String getenv(String env);

**Passing Struct by Value as a Method Argument**

With NatJ, you can pass and return structure objects by value::

    @Selector("substringWithRange:")
    public native String substringWithRange(@ByValue NSRange range);

When you pass or return an object by value, it is passed on the stack. This is not supported by default in
Java Native Interface (JNI) specifications, because in Java every object is in the heap.



**Using Objective-C Protocols as Java Interfaces**

Objective-C protocols correspond to Java interfaces. Each method is decorated with a ``@Selector``
annotation to mark the correct selector this method corresponds to. The Objective-C name of the
protocol can be specified in the ``@ObjCProtocolName("SomeName")`` annotation. Otherwise, it is simply the
name of the class::

    @ObjCProtocolName("UIApplicationDelegate") // Optional
    interface UIApplicationDelegate {

        // ...

        @Selector("applicationDidBecomeActive:")
        public native void applicationDidBecomeActive(UIApplication application);

    }



**Extending Objective-C Classes in Java**

You can extend or define an Objective-C class in pure Java code. For example, to define a
new ``MyApplicationDelegate`` class that can be instantiated from regular Objective-C code, you can
do the following::

    @ObjCClassName("MyApplicationDelegate")
    class MyApplicationDelegate extends NSObject implements UIApplicationDelegate {

        static {
            NatJ.register(); // Register the custom type
        }

        @Selector("alloc")
        public static native MyApplicationDelegate alloc();

        //Implement methods ...

        @Override
        @Selector("applicationDidBecomeActive:")
        public void applicationDidBecomeActive(UIApplication application) {
            // Custom code
        }

    }

NatJ registers the class object with the Objective-C run time. When class objects are registered,
their definitions become accessible from the Objective-C code.

If the Objective-C run time already includes a class with the same name, NatJ switches into a hybrid
mode and injects each Java-side implementation into the native class. In this case, you are recommended
to use your implementations from the start of your application by adding the ``@RegisterOnStartup``annotation
to your class. This annotation performs pre-main initialization of your Java class, so your implementations
are injected before the native class gets invoked.

.. warning::
    If your hybrid class contains a selector implementation at the native side that is not represented in
    the interface definition, then NatJ can not guarantee that you can invoke that implementation from
    the Java code.



**Binding Objective-C Categories in Java**

As Java does not support class extensions, you can only bind Objective-C categories by adding them
to a new binding class, not to the original class this category extends.

For example, to extend the NSString class with an Objective-C category, do the following::

    @ObjCCategory(NSString.class)
    class MyCategoryClass extends NSObject {

        static {
            NatJ.register(); // Register the category methods
        }

        /*
         * Category instance method.
         *
         * The first argument indicates the instance object the corresponding
         * message will be sent to.
         */
        @Selector("countChar:")
        public static native int countChar(NSString str, char chr);

        @Selector("countChar:")
        public static native int countChar(String str, char chr);

        /*
         * Category class method.
         *
         * Message will be send to the class specified by @ObjCCategory
         * annotation
         */
        @Selector("repeatString:times:")
        @CategoryClassMethod //Annotate class category methods with the this annotation.
        public static native String repeatString(String str, int times);

    }

Both class and instance methods will be presented in the category binding java class as static methods.
Class methods should be marked with ``@CategoryClassMethod`` annotation. The corresponding message 
will be send to the class object specified by the ``@ObjCCategory`` annotation. All other static native methods
specified with the ``@Selector`` will be treated as instance category methods and the corresponding selector
will be sent to the object passed as the first argument. You can use explicit and implicit mappings with all 
the arguments and return values, including the first arguments.

.. note::
    You only have to bind a category in this manner, when the original class the category extends has an uneditable
    code, otherwise NatJGen will append every category method to the appropriate classes.



**Binding Variadic Methods in Java**

You can bind variadic C functions using the ``@Variadic()`` annotation. In its ``unboxPolicy`` optional field,
you can specify the policy for handling primitives using the following values:

* ``Variadic.Runtime`` (default) - use runtime-specific default policy.
* ``Variadic.Box`` - use the default policy for Objective-C to leave each boxed variadic argument as is.
* ``Variadic.Unbox`` - use the default policy for C to unbox all boxed variadic argument and pass them as primitive
  ones.

An example for ``printf``::

    @Variadic()
    @CFunction
    public static native int printf(String arg1, Object... varargs);

    // ...

    printf("%d %f", 3, 3.0f);

Since this is a C function, each (auto)boxed value will be passed as a primitive value. In case of an Objective-C
selector these two arguments would be incorrectly passed as proxied ``java.lang.Integer`` and ``java.lang.Float``
objects.

If a method takes heterogeneous primitive variadic arguments, you can bind it with a primitive variadic method::

    @Variadic()
    @Selector("sum::")
    public static native float sum(int c, float... varargs);

    // ...

    sum(3, 1.0f, 2.0f, 3.0f);

This kind of bindings will always use unboxing policy regardless of the actual run time. If you want to pass
the values as objects, then you can bind them as ``Float...``, because the actual run time is Objective-C, so
by default, no unboxing will happen in that case.

As the variadic values cannot be annotated one-by-one, explicit mapper or any other modifier needs to be specified
by a dedicated ``VariadicArg`` wrapper object. You can construct this wrapper object using one of the following
factory methods:

* ``createMap(Object, Class<? extends Mapper>)``, uses the specified mapper to map the object.
* ``createBox(Object)``, forces boxing for an object.
* ``createUnbox(Object)``, forces unboxing for a boxed primitive object.
* ``createNFloat(Double)``, forces unboxing for a ``Float`` object and passes it as a native sized floating-point
  value.
* ``createNUInt(Long)``, forces unboxing for a ``Long`` object and passes it as a native sized unsigned integer value.
* ``createNInt(Long)``, forces unboxing for a ``Long`` object and passes it as a native sized signed integer value.
* ``createByValue(StructObject)``, forces by-value passing for a ``StructObject`` object.

For example::

    @Variadic()
    @Selector("someVariadic::")
    public static native void someVariadic(int c, Object... varargs);

    // ...

    someVariadic(4,
        VariadicArg.createMap(myCallbackInstace, CCallbackMapper.class),
        VariadicArg.createUnbox(42),
        VariadicArg.createNFloat(42.0f),
        VariadicArg.createByValue(new CGPoint(0.0, 0.0)));



**Using Platform-Dependent Types**

Some native methods may have arguments or return types with  platform-dependent width. To bind such methods
to Java, use the *Unified Java API* extension of NatJ. This extension includes three specific types that take
four bytes on 32-bit platforms and eight bytes on 64-bit platforms. Use the following annotations for
platform-dependent arguments or return types:

* ``@NUInt`` for unsigned integers, on Java side this is a long
* ``@NInt`` for signed integers, on Java side this is a long
* ``@NFloat`` for floating point values, on Java side this is a double

For example::

    @Selector("arrayWithCapacity:")
    public static native NSMutableArray arrayWithCapacity(@NUInt long numItems);



**Passing Regular Java Classes to Objective-C**

You can pass any Java object to native methods. NatJ automatically maps them, let it be a String or anything
else. For mapping object types, NatJ uses mappers. You can explicitly specify the mapper in a method or one of
its arguments, and NatJ will use this mapper when converting between the two sides.

You can extend NatJ by implementing new mappers. For example, you can create a mapper that will be used for
converting String[] objects to native ``const char**``::

    public class CStringArrayMapper implements Mapper {

        public Map<String[], Pointer> strings2addr = new WeakHashMap<String[], Pointer>();

        @Override
        public long toNative(Object instance, NativeObjectConstructionInfo info) {
            if(instance == null) return 0;
            String[] strings = (String[])instance;
            Pointer pointer;
            synchronized(strings2addr) {
                pointer = strings2addr.get(strings);
                if(pointer == null) {
                    long peer = CRuntime.createNativeStringArray(strings);
                    pointer = CRuntime.createStrongPointer(peer, true);
                    strings2addr.put(strings, pointer);
                }
            }
            return pointer.getPeer();
        }

        @Override
        public Object toJava(long peer, JavaObjectConstructionInfo info) {
            throw new RuntimeException("Converting native string array is not supported!");
        }

    }

The info parameters contain all the information needed for the memory management and for the conversion itself.
After you have implemented your new mapper, you can use it when writing the binding code::

        native void parseStrings(@Mapped(CStringArrayMapper.class) strings);

        //..

        parseStrings(new String[]{"string1", "string2"});



**Callback Support**

NatJ supports Objective-C blocks and C callbacks. Using this feature, you can pass Java implementations to the
native side. You can even invoke Objective-C blocks originating from the native side by calling the appropriate
method of this block.

For C callbacks use the ``@FunctionPtr`` annotation::

    class Test {

        private Object __natjCache;

        static {
            NatJ.register();
        }

        @Selector("countChar:")
        public native void useCallback(
            @FunctionPtr(name = "call_useCallback") Block_useCallback object);

        static public interface Block_useCallback {
            public void call_useCallback();
        }

    }

    //...

    Test o = new Test;
    o.useCallback(new Block_useCallback() {
        @Override
        void call_useCallback() {
            //do stuff
        }
    });

Java interface to be passed as a function pointer parameter can contain several methods. You have to specify which
particular method should be called inside this native function. For this purpose, you can use the ``@FunctionPtr``
annotation to specify the name of the interface method and list the argument types. These fields are optional and
NatJ will use the first match with presented information. The ``__natjCache`` field is optional, NatJ can use this
field for caching. When using the C callback support, you have to use the ``NatJ.disposeFunctionPtr(Object callback
)`` method to release the callback created by NatJ when the callback is not needed anymore.

For Objective-C blocks, use the ``@ObjCBlock`` instead of the ``@FunctionPtr`` annotation::

    //...

    public static native void useCallback(
        @ObjCBlock(name = "method") Block_useCallback object);

    //...

The ``@ObjCBlock`` annotation takes the same arguments as the ``@FunctionPtr`` and everything said before about
the C callbacks applies here as well, except for the ``NatJ.disposeFunctionPtr(Object callback)`` method. As
Objective-C has a memory management mechanism, you do not need to release the callback created by NatJ. Disposal
of blocks is done automatically and any explicit initiations will be ignored.

.. warning::
    You cannot bind callback objects by multiple different types as it will cause an exception.



**Other Objective-C Support Features**

You also can create Objective-C classes and ``SEL`` objects as follows::

    new Class("classname");

    new SEL("selector:");

As Objective-C has a proper memory management, you do not have to do manual retaining, releasing or autoreleasing
if all your bindings are valid.



**References**

To construct a reference, use ``PtrFactory``::

    native void addTwoInts(int lhs, int rhs, IntePtr result);

    //...

    IntPtr ref = PtrFactory.newIntPtr(1, true, true);
    addTwoInts(2, 3, ref);
    int result = ref.getValue();

NatJ provides reference classes for ``StructObject``, ``ObjCObject``, and for all primitive types. When working with
references, NatJ automatically uses the right mapper. Using ``PtrFactory``, you can construct any type of pointers::

    IntPtr //int*
    Ptr<IntPtr> //int**
    Ptr<Ptr<IntPtr>> // int***
    ConstPtr<IntPtr> //int * const *
    Ptr<NSObject> //NSObject**, single indirection, because it's an ID
    Ptr<NSRange> //NSRange*, single indirection, because it's a structure



**Binding Structures**

To bind structures, use the ``@Structure`` and ``@StructureField`` annotations, as follows::

    @Structure
    public class CGPoint extends StructObject {

        private static long __natjCache; //Used by NatJ for optimizations

        static {
            NatJ.register();
        }

        protected CGPoint(Pointer peer) {
            super(peer);
        }

        public CGPoint(float x, float y) {
            super(CGPoint.class);
            setX(x);
            setY(y);
        }

        @StructureField(order = 0, isGetter = true)
        public native float x();

        @StructureField(order = 0, isGetter = false)
        public native void setX(float x);

        @StructureField(order = 1, isGetter = true)
        public native float y();

        @StructureField(order = 1, isGetter = false)
        public native void setY(float y);

        @StructureField(order = 1, isGetter = true, count=2)
        public native float getStaticArrayElement(int idx);

        @StructureField(order = 1, isGetter = false, count=2)
        public native void setStaticArrayElement(float y, int idx);

    }

The ``@Structure`` annotation takes an optional argument that specifies the alignment of the structure. Set
this argument if the alignment of the structure differs from the one the current architecture would assign
to the structure.

The ``@StructureField`` annotation takes the following arguments:

* ``order`` - specifies the actual field order.
* ``isGetter`` - specifies whether this is a getter or a setter method for the field.
* ``count`` - Optional. Specifies the element count for the nested static array fields. The default value is 1.
