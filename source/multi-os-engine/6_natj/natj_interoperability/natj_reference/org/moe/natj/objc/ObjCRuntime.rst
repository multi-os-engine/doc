.. java:import:: org.moe.natj.c OpaquePtr

.. java:import:: org.moe.natj.c.ann Variadic

.. java:import:: org.moe.natj.general NatJ

.. java:import:: org.moe.natj.general NatJ.JavaObjectConstructionInfo

.. java:import:: org.moe.natj.general NativeRuntime

.. java:import:: org.moe.natj.general Pointer

.. java:import:: org.moe.natj.general Pointer.Releaser

.. java:import:: org.moe.natj.objc.ann ObjCBlock

.. java:import:: org.moe.natj.objc.ann ObjCCategory

.. java:import:: org.moe.natj.objc.ann ObjCProtocolName

.. java:import:: org.moe.natj.objc.map ObjCCallbackMapper

.. java:import:: org.moe.natj.objc.map ObjCObjectMapper

.. java:import:: org.moe.natj.objc.map ObjCStringMapper

.. java:import:: java.io PrintWriter

.. java:import:: java.io StringWriter

.. java:import:: java.lang.annotation Annotation

.. java:import:: java.lang.reflect Method

.. java:import:: java.util Arrays

.. java:import:: java.util HashMap

.. java:import:: java.util HashSet

.. java:import:: java.util LinkedList

.. java:import:: java.util List

.. java:import:: java.util Map

.. java:import:: java.util Set

.. java:import:: java.util SortedMap

.. java:import:: java.util TreeMap

.. java:import:: java.util.concurrent Callable

ObjCRuntime
===========

.. java:package:: org.moe.natj.objc
   :noindex:

.. java:type:: public class ObjCRuntime extends NativeRuntime

   ObjCRuntime.

   \ :java:ref:`NativeRuntime`\  implementation used for supporting Objective-C features like NSObjects and block codes.

Methods
-------
addExternalPackage
^^^^^^^^^^^^^^^^^^

.. java:method:: public void addExternalPackage(String name)
   :outertype: ObjCRuntime

   Adds an external package name.

   :param name: Package name

addExternalPackagesForPrefix
^^^^^^^^^^^^^^^^^^^^^^^^^^^^

.. java:method:: public void addExternalPackagesForPrefix(String prefix, Set<String> packages)
   :outertype: ObjCRuntime

   Adds external packages for a prefix.

   :param prefix: Class name prefix
   :param packages: Package names

associateObjCObject
^^^^^^^^^^^^^^^^^^^

.. java:method:: public static void associateObjCObject(long owner, Object instance)
   :outertype: ObjCRuntime

   Associates an object to an Objective-C object.

   The Objective-C object will retain the object for itself and it will release the object when it gets deallocated.

   :param owner: Object to associate with
   :param instance: Object to add

associateObjCObject
^^^^^^^^^^^^^^^^^^^

.. java:method:: public static void associateObjCObject(ObjCObject owner, Object instance)
   :outertype: ObjCRuntime

   Associates an object to an Objective-C object.

   The Objective-C object will retain the object for itself and it will release the object when it gets deallocated.

   :param owner: Object to associate with
   :param instance: Object to add

associateObjCObject
^^^^^^^^^^^^^^^^^^^

.. java:method:: public static void associateObjCObject(long owner, Object instance, String name, java.lang.Class<?>[] argTypes)
   :outertype: ObjCRuntime

   Associates an object to an Objective-C object as an Objective-C Block.

   The Objective-C object will retain the object for itself and it will release the object when it gets deallocated.

   :param owner: Object to associate with
   :param instance: Object to add
   :param name: Block name
   :param argTypes: Block argument types

associateObjCObject
^^^^^^^^^^^^^^^^^^^

.. java:method:: public static void associateObjCObject(ObjCObject owner, Object instance, String name, java.lang.Class<?>[] argTypes)
   :outertype: ObjCRuntime

   Associates an object to an Objective-C object as an Objective-C block.

   The Objective-C object will retain the object for itself and it will release the object when it gets deallocated.

   :param owner: Object to associate with
   :param instance: Object to add
   :param name: Block name
   :param argTypes: Block argument types

associateObjCObject
^^^^^^^^^^^^^^^^^^^

.. java:method:: public static native void associateObjCObject(long object, long instance)
   :outertype: ObjCRuntime

   Associates an object to an Objective-C object.

   The Objective-C object will retain the object for itself and it will release the object when it gets deallocated.

   Also documented in ObjCRuntime.h

   :param object: The ObjCObject to which we want to associate the instance
   :param instance: The object we want to associate

autoreleaseObject
^^^^^^^^^^^^^^^^^

.. java:method:: public static native void autoreleaseObject(long pointer)
   :outertype: ObjCRuntime

   Autoreleases an Objective-C object.

   Also documented in ObjCRuntime.h

   :param pointer: The Objective-C object we want to autorelease

autoreleasepool
^^^^^^^^^^^^^^^

.. java:method:: public static void autoreleasepool(Runnable runnable)
   :outertype: ObjCRuntime

   Executes the specified runnable in an autorelease pool.

   :param runnable: Runnable to execute

autoreleasepool
^^^^^^^^^^^^^^^

.. java:method:: public static <T> T autoreleasepool(Callable<T> callable) throws Exception
   :outertype: ObjCRuntime

   Executes the specified callable in an autorelease pool.

   :param callable: Callable to execute
   :throws Exception: If unable to compute a result
   :return: Computed result

cast
^^^^

.. java:method:: public static <T extends ObjCObject> T cast(Object instance, java.lang.Class<T> cls)
   :outertype: ObjCRuntime

   Casts an instance to a given Objective-C type with native transparency.

   :param <T>: Objective-C class to cast to
   :param instance: The instance we want to cast
   :param cls: The desired type of the class
   :return: The new object with the given type

cast
^^^^

.. java:method:: public static <T extends ObjCObject> T cast(Object instance, java.lang.Class<T> cls, boolean transparent)
   :outertype: ObjCRuntime

   Casts an instance to a given Objective-C type with a given native transparency.

   :param <T>: Objective-C class to cast to
   :param instance: The instance we want to cast
   :param cls: The desired type of the class
   :param transparent: If this is true, then native side will see only the original peer
   :return: The new object with the given type

cast
^^^^

.. java:method:: @SuppressWarnings public static <T extends ObjCObject> T cast(OpaquePtr ptr, java.lang.Class<T> cls)
   :outertype: ObjCRuntime

   Casts an opaque pointer to a given Objective-C type.

   :param <T>: Objective-C class to cast to
   :param ptr: The opaque pointer we want to cast
   :param cls: The desired type of the class
   :return: The new object with the given type

cast
^^^^

.. java:method:: @SuppressWarnings public static <T extends OpaquePtr> T cast(ObjCObject obj, java.lang.Class<T> cls)
   :outertype: ObjCRuntime

   Casts an Objective-C object to an opaque pointer.

   :param <T>: opaque pointer type class to cast to
   :param obj: The Objective-C object we want to cast
   :param cls: The desired type of the class
   :return: The new opaque pointer with the given type

castToProtocol
^^^^^^^^^^^^^^

.. java:method:: public static <T> T castToProtocol(Object instance, java.lang.Class<T> cls)
   :outertype: ObjCRuntime

   Casts an instance to a given Objective-C protocol type with native transparency.

   :param <T>: Objective-C class to cast to
   :param instance: The instance we want to cast
   :param cls: The desired type of the class
   :return: The new object with the given type

castToProtocol
^^^^^^^^^^^^^^

.. java:method:: public static <T> T castToProtocol(Object instance, java.lang.Class<T> cls, boolean transparent)
   :outertype: ObjCRuntime

   Casts an instance to a given Objective-C protocol with a given native transparency.

   :param <T>: Objective-C class to cast to
   :param instance: The instance we want to cast
   :param cls: The desired type of the class
   :param transparent: If this is true, then native side will see only the original peer
   :return: The new object with the given type

copyBlock
^^^^^^^^^

.. java:method:: public static native long copyBlock(long object)
   :outertype: ObjCRuntime

   Copies a native block.

   Also documented in ObjCRuntime.h

   :param object: The object we want to copy
   :return: The copied block

createAutoreleasePool
^^^^^^^^^^^^^^^^^^^^^

.. java:method:: public static native long createAutoreleasePool()
   :outertype: ObjCRuntime

   Creates a new autorelease pool.

   Also documented in ObjCRuntime.h

   :return: The newly created autorelease pool

createDataForJavaBlock
^^^^^^^^^^^^^^^^^^^^^^

.. java:method:: public static native long createDataForJavaBlock(Object method)
   :outertype: ObjCRuntime

   Creates Java block construction data for a Java method.

   Also documented in ObjCRuntime.h

   :param method: The Java method
   :return: The Java block construction data pointer

createDataForNativeBlock
^^^^^^^^^^^^^^^^^^^^^^^^

.. java:method:: public static native long createDataForNativeBlock(Object method)
   :outertype: ObjCRuntime

   Creates Native block construction data for a Java method.

   Also documented in ObjCRuntime.h

   :param method: The Java method
   :return: The native block construction data pointer

createDataForNativeProtocolProxy
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

.. java:method:: public static native Object[] createDataForNativeProtocolProxy(java.lang.Class<?> inter)
   :outertype: ObjCRuntime

   Creates Native protocol proxy construction data for a Java interface

   Also documented in ObjCRuntime.h

   :param inter: Tha Java interface
   :return: The native protocol proxy construction data pointer

createJavaString
^^^^^^^^^^^^^^^^

.. java:method:: public static native String createJavaString(long pointer)
   :outertype: ObjCRuntime

   Constructs a Java string from an NSString instance.

   Also documented in ObjCRuntime.h

   :param pointer: The NSString instance we want to create Java string from
   :return: The Java string

createNativeCallbackFromJavaInstance
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

.. java:method:: public static native long createNativeCallbackFromJavaInstance(Object instance, long data)
   :outertype: ObjCRuntime

   Constructs an Objective-C block from a Java method.

   Also documented in ObjCRuntime.h

   :param instance: The Java instance we want to create native callback for
   :param data: The data pointer created by a call to createDataForJavaBlock()
   :return: The native callback

createNativeString
^^^^^^^^^^^^^^^^^^

.. java:method:: public static native long createNativeString(String string)
   :outertype: ObjCRuntime

   Constructs an NSString instance from a Java string.

   Also documented in ObjCRuntime.h

   :param string: The Java string we want to create NSString instance from
   :return: The native string

createProxyClass
^^^^^^^^^^^^^^^^

.. java:method:: public static native long createProxyClass(java.lang.Class<?> type)
   :outertype: ObjCRuntime

   Constructs an Objective-C class from a Java class.

   Also documented in ObjCRuntime.h

   :param type: The Java class we want to create proxy for
   :return: The newly created Objective-C class

createProxyClassWithExtension
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

.. java:method:: public static native long createProxyClassWithExtension(java.lang.Class<?> type, String base, java.lang.Class<? extends ProxyExtensionBase> extension)
   :outertype: ObjCRuntime

   Constructs an Objective-C class from a Java class and adds implementations specified by extension.

   Also documented in ObjCRuntime.h

   :param type: The Java class we want to create proxy for
   :param base: Name of the base Objective-C class to be used as super class
   :param extension: The extension we want to use extra selectors from
   :return: The newly created Objective-C class

createProxyInstance
^^^^^^^^^^^^^^^^^^^

.. java:method:: public static native long createProxyInstance(long type, Object instance)
   :outertype: ObjCRuntime

   Instantiates a proxy class for a Java instance. Works only for classes we generate with Java_org_natj_objc_ObjCRuntime_createProxyClass().

   Also documented in ObjCRuntime.h

   :param type: The Objective-C class object we want to instantiate
   :param instance: Java instance we want to create proxy object for
   :return: The Objective-C instance

createStrongPointer
^^^^^^^^^^^^^^^^^^^

.. java:method:: public static Pointer createStrongPointer(long peer, boolean owned)
   :outertype: ObjCRuntime

   Creates a strong pointer to an Objective-C object.

   Retains if doing so is needed to keep the strong ownership.

   :param peer: The pointer
   :param owned: If this is false, the pointer objects will be retained
   :return: The created \ :java:ref:`Pointer`\  object

createWeakReference
^^^^^^^^^^^^^^^^^^^

.. java:method:: public static WeakReference createWeakReference(long peer)
   :outertype: ObjCRuntime

   Creates a weak reference to an Objective-C object.

   :param peer: The pointer
   :return: The created \ :java:ref:`Pointer`\  object

destroyWeak
^^^^^^^^^^^

.. java:method:: public static native void destroyWeak(long location)
   :outertype: ObjCRuntime

   Destroys a weak reference to an Objective-C object.

   Also documented in ObjCRuntime.h

   :param location: The address of the reference

disposeObject
^^^^^^^^^^^^^

.. java:method:: public static void disposeObject(Object object)
   :outertype: ObjCRuntime

   Tries to dispose the Objective-C peer of a given object

   This will invalidate the given object and thus further use may result in undefined behaviour.

   This will only work for objects originated from native side, namely: Bindings, Native Blocks and Protocol Proxies.

   :param object: The object of which we want to dispose the native peer

dissociateObjCObject
^^^^^^^^^^^^^^^^^^^^

.. java:method:: public static void dissociateObjCObject(long owner, Object instance)
   :outertype: ObjCRuntime

   Removes an object from an Objective-C object's association list.

   If the object was associated with the Objective-C object then it will be removed from the association list and released.

   :param owner: Object to dissociate from
   :param instance: Object to remove

dissociateObjCObject
^^^^^^^^^^^^^^^^^^^^

.. java:method:: public static void dissociateObjCObject(ObjCObject owner, Object instance)
   :outertype: ObjCRuntime

   Removes an object from an Objective-C object's association list.

   If the object was associated with the Objective-C object then it will be removed from the association list and released.

   :param owner: Object to dissociate from
   :param instance: Object to remove

dissociateObjCObject
^^^^^^^^^^^^^^^^^^^^

.. java:method:: public static void dissociateObjCObject(long owner, Object instance, String name, java.lang.Class<?>[] argTypes)
   :outertype: ObjCRuntime

   Removes an Objective-C block object from an Objective-C object's association list.

   If the object was associated with the Objective-C object then it will be removed from the association list and released.

   :param owner: Object to dissociate from
   :param instance: Object to remove
   :param name: Block name
   :param argTypes: Block argument types

dissociateObjCObject
^^^^^^^^^^^^^^^^^^^^

.. java:method:: public static void dissociateObjCObject(ObjCObject owner, Object instance, String name, java.lang.Class<?>[] argTypes)
   :outertype: ObjCRuntime

   Removes an Objective-C block object from an Objective-C object's association list.

   If the object was associated with the Objective-C object then it will be removed from the association list and released.

   :param owner: Object to dissociate from
   :param instance: Object to remove
   :param name: Block name
   :param argTypes: Block argument types

dissociateObjCObject
^^^^^^^^^^^^^^^^^^^^

.. java:method:: public static native void dissociateObjCObject(long object, long instance)
   :outertype: ObjCRuntime

   Removes an object from an Objective-C object's association list.

   If the object was associated with the Objective-C object then it will be removed from the association list and released.

   Also documented in ObjCRuntime.h

   :param object: The ObjCObject with which we want to dissociate the instance
   :param instance: The object we want to dissociate

doRegistration
^^^^^^^^^^^^^^

.. java:method:: @Override protected void doRegistration(java.lang.Class<?> type)
   :outertype: ObjCRuntime

   Process the Java class.

   This will register native handlers for native methods. Handles methods with selectors and instance variable getters and setters.

   :param type: class

forwardBooleanBlockCall
^^^^^^^^^^^^^^^^^^^^^^^

.. java:method:: public static native boolean forwardBooleanBlockCall(long peer, long data, Object[] args)
   :outertype: ObjCRuntime

   Forwards a call to a boolean native block.

   :param peer: The block to call
   :param data: The native block data generated by a call to createDataForNativeBlock()
   :param args: The arguments of the call
   :return: The result of the call

forwardBooleanProtocolCall
^^^^^^^^^^^^^^^^^^^^^^^^^^

.. java:method:: public static native boolean forwardBooleanProtocolCall(long peer, long data, Object[] args)
   :outertype: ObjCRuntime

   Forwards a call to a boolean native protocol proxy.

   :param peer: The native protocol peer
   :param data: The native protocol proxy data generated by a call to createDataForNativeProtocolProxy()
   :param args: The arguments of the call
   :return: The result of the call

forwardByteBlockCall
^^^^^^^^^^^^^^^^^^^^

.. java:method:: public static native byte forwardByteBlockCall(long peer, long data, Object[] args)
   :outertype: ObjCRuntime

   Forwards a call to a byte native block.

   :param peer: The block to call
   :param data: The native block data generated by a call to createDataForNativeBlock()
   :param args: The arguments of the call
   :return: The result of the call

forwardByteProtocolCall
^^^^^^^^^^^^^^^^^^^^^^^

.. java:method:: public static native byte forwardByteProtocolCall(long peer, long data, Object[] args)
   :outertype: ObjCRuntime

   Forwards a call to a byte native protocol proxy.

   :param peer: The native protocol peer
   :param data: The native protocol proxy data generated by a call to createDataForNativeProtocolProxy()
   :param args: The arguments of the call
   :return: The result of the call

forwardCharBlockCall
^^^^^^^^^^^^^^^^^^^^

.. java:method:: public static native char forwardCharBlockCall(long peer, long data, Object[] args)
   :outertype: ObjCRuntime

   Forwards a call to a char native block.

   :param peer: The block to call
   :param data: The native block data generated by a call to createDataForNativeBlock()
   :param args: The arguments of the call
   :return: The result of the call

forwardCharProtocolCall
^^^^^^^^^^^^^^^^^^^^^^^

.. java:method:: public static native char forwardCharProtocolCall(long peer, long data, Object[] args)
   :outertype: ObjCRuntime

   Forwards a call to a char native protocol proxy.

   :param peer: The native protocol peer
   :param data: The native protocol proxy data generated by a call to createDataForNativeProtocolProxy()
   :param args: The arguments of the call
   :return: The result of the call

forwardDoubleBlockCall
^^^^^^^^^^^^^^^^^^^^^^

.. java:method:: public static native double forwardDoubleBlockCall(long peer, long data, Object[] args)
   :outertype: ObjCRuntime

   Forwards a call to a double native block.

   :param peer: The block to call
   :param data: The native block data generated by a call to createDataForNativeBlock()
   :param args: The arguments of the call
   :return: The result of the call

forwardDoubleProtocolCall
^^^^^^^^^^^^^^^^^^^^^^^^^

.. java:method:: public static native double forwardDoubleProtocolCall(long peer, long data, Object[] args)
   :outertype: ObjCRuntime

   Forwards a call to a double native protocol proxy.

   :param peer: The native protocol peer
   :param data: The native protocol proxy data generated by a call to createDataForNativeProtocolProxy()
   :param args: The arguments of the call
   :return: The result of the call

forwardFloatBlockCall
^^^^^^^^^^^^^^^^^^^^^

.. java:method:: public static native float forwardFloatBlockCall(long peer, long data, Object[] args)
   :outertype: ObjCRuntime

   Forwards a call to a float native block.

   :param peer: The block to call
   :param data: The native block data generated by a call to createDataForNativeBlock()
   :param args: The arguments of the call
   :return: The result of the call

forwardFloatProtocolCall
^^^^^^^^^^^^^^^^^^^^^^^^

.. java:method:: public static native float forwardFloatProtocolCall(long peer, long data, Object[] args)
   :outertype: ObjCRuntime

   Forwards a call to a float native protocol proxy.

   :param peer: The native protocol peer
   :param data: The native protocol proxy data generated by a call to createDataForNativeProtocolProxy()
   :param args: The arguments of the call
   :return: The result of the call

forwardIntBlockCall
^^^^^^^^^^^^^^^^^^^

.. java:method:: public static native int forwardIntBlockCall(long peer, long data, Object[] args)
   :outertype: ObjCRuntime

   Forwards a call to a int native block.

   :param peer: The block to call
   :param data: The native block data generated by a call to createDataForNativeBlock()
   :param args: The arguments of the call
   :return: The result of the call

forwardIntProtocolCall
^^^^^^^^^^^^^^^^^^^^^^

.. java:method:: public static native int forwardIntProtocolCall(long peer, long data, Object[] args)
   :outertype: ObjCRuntime

   Forwards a call to a int native protocol proxy.

   :param peer: The native protocol peer
   :param data: The native protocol proxy data generated by a call to createDataForNativeProtocolProxy()
   :param args: The arguments of the call
   :return: The result of the call

forwardLongBlockCall
^^^^^^^^^^^^^^^^^^^^

.. java:method:: public static native long forwardLongBlockCall(long peer, long data, Object[] args)
   :outertype: ObjCRuntime

   Forwards a call to a long native block.

   :param peer: The block to call
   :param data: The native block data generated by a call to createDataForNativeBlock()
   :param args: The arguments of the call
   :return: The result of the call

forwardLongProtocolCall
^^^^^^^^^^^^^^^^^^^^^^^

.. java:method:: public static native long forwardLongProtocolCall(long peer, long data, Object[] args)
   :outertype: ObjCRuntime

   Forwards a call to a long native protocol proxy.

   :param peer: The native protocol peer
   :param data: The native protocol proxy data generated by a call to createDataForNativeProtocolProxy()
   :param args: The arguments of the call
   :return: The result of the call

forwardObjectBlockCall
^^^^^^^^^^^^^^^^^^^^^^

.. java:method:: public static native Object forwardObjectBlockCall(long peer, long data, Object[] args)
   :outertype: ObjCRuntime

   Forwards a call to a Object native block.

   :param peer: The block to call
   :param data: The native block data generated by a call to createDataForNativeBlock()
   :param args: The arguments of the call
   :return: The result of the call

forwardObjectProtocolCall
^^^^^^^^^^^^^^^^^^^^^^^^^

.. java:method:: public static native Object forwardObjectProtocolCall(long peer, long data, Object[] args)
   :outertype: ObjCRuntime

   Forwards a call to a Object native protocol proxy.

   :param peer: The native protocol peer
   :param data: The native protocol proxy data generated by a call to createDataForNativeProtocolProxy()
   :param args: The arguments of the call
   :return: The result of the call

forwardShortBlockCall
^^^^^^^^^^^^^^^^^^^^^

.. java:method:: public static native short forwardShortBlockCall(long peer, long data, Object[] args)
   :outertype: ObjCRuntime

   Forwards a call to a short native block.

   :param peer: The block to call
   :param data: The native block data generated by a call to createDataForNativeBlock()
   :param args: The arguments of the call
   :return: The result of the call

forwardShortProtocolCall
^^^^^^^^^^^^^^^^^^^^^^^^

.. java:method:: public static native short forwardShortProtocolCall(long peer, long data, Object[] args)
   :outertype: ObjCRuntime

   Forwards a call to a short native protocol proxy.

   :param peer: The native protocol peer
   :param data: The native protocol proxy data generated by a call to createDataForNativeProtocolProxy()
   :param args: The arguments of the call
   :return: The result of the call

forwardVoidBlockCall
^^^^^^^^^^^^^^^^^^^^

.. java:method:: public static native void forwardVoidBlockCall(long peer, long data, Object[] args)
   :outertype: ObjCRuntime

   Forwards a call to a void native block.

   :param peer: The block to call
   :param data: The native block data generated by a call to createDataForNativeBlock()
   :param args: The arguments of the call

forwardVoidProtocolCall
^^^^^^^^^^^^^^^^^^^^^^^

.. java:method:: public static native void forwardVoidProtocolCall(long peer, long data, Object[] args)
   :outertype: ObjCRuntime

   Forwards a call to a void native protocol proxy.

   :param peer: The native protocol peer
   :param data: The native protocol proxy data generated by a call to createDataForNativeProtocolProxy()
   :param args: The arguments of the call

getClassByName
^^^^^^^^^^^^^^

.. java:method:: public static native long getClassByName(String name)
   :outertype: ObjCRuntime

   Looks up and returns Objective-C class by its name.

   Also documented in ObjCRuntime.h

   :param name: The name of the Objective-C class we want to get
   :return: The Objective-C class

getClassName
^^^^^^^^^^^^

.. java:method:: public static native String getClassName(long peer)
   :outertype: ObjCRuntime

   Returns the name of an Objective-C class.

   Also documented in ObjCRuntime.h

   :param peer: The Objective-C class object we want to get the name of
   :return: The Objective-C class name

getClassParent
^^^^^^^^^^^^^^

.. java:method:: public static native long getClassParent(long object)
   :outertype: ObjCRuntime

   Returns the parent of an Objective-C class object.

   Also documented in ObjCRuntime.h

   :param object: The Objective-C class object we want to get the parent of
   :return: The parent class

getDefaultUnboxPolicy
^^^^^^^^^^^^^^^^^^^^^

.. java:method:: @Override public byte getDefaultUnboxPolicy()
   :outertype: ObjCRuntime

   Returns the default unbox policy for variadic arguments.

   For Objective-C Runtime the policy is boxing, because this runtime does have object types.

   :return: The default unbox policy.

getExceptionStacktrace
^^^^^^^^^^^^^^^^^^^^^^

.. java:method:: public static String getExceptionStacktrace(Throwable throwable)
   :outertype: ObjCRuntime

   Print full description of throwable object into single string including name, reason, stacktrace and other info.

   Used during converting java throwable to NSException with keeping stacktrace information.

   :param throwable: input object
   :return: full stacktrace of throwable object

getHierarchyRootType
^^^^^^^^^^^^^^^^^^^^

.. java:method:: public static java.lang.Class<? extends ObjCObject> getHierarchyRootType()
   :outertype: ObjCRuntime

   Returns the resolved hierarchy root type.

   :return: Root type class

getInitTargetOnCurrentThread
^^^^^^^^^^^^^^^^^^^^^^^^^^^^

.. java:method:: public static native Object getInitTargetOnCurrentThread()
   :outertype: ObjCRuntime

   Gets the target of an actual initializer method call of the current thread.

   Also documented in ObjCRuntime.h

   :return: The init call target

getInstanceForJavaBlock
^^^^^^^^^^^^^^^^^^^^^^^

.. java:method:: public static native Object getInstanceForJavaBlock(long callback)
   :outertype: ObjCRuntime

   Constructs a Java instance from a given callback. Works only with callbacks we create with createNativeCallbackFromJavaInstance().

   Also documented in ObjCRuntime.h

   :param callback: The callback we want to create Java instance from
   :return: The Java instance

getJavaReferenceOfBindingObject
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

.. java:method:: public static native Object getJavaReferenceOfBindingObject(long peer)
   :outertype: ObjCRuntime

   Returns the Java instance associated with an Objective-C object.

   Also documented in ObjCRuntime.h

   :param peer: The Objective-C object we want to get Java instance from
   :return: The Java instance

getJavaReferenceOfCustomObject
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

.. java:method:: public static native Object getJavaReferenceOfCustomObject(long peer)
   :outertype: ObjCRuntime

   Returns the custom Java instance associated with an Objective-C object.

   Also documented in ObjCRuntime.h

   :param peer: The Objective-C object we want to get Java instance from
   :return: The Java instance

getJavaTypeForHybridClass
^^^^^^^^^^^^^^^^^^^^^^^^^

.. java:method:: public static native java.lang.Class<?> getJavaTypeForHybridClass(long object)
   :outertype: ObjCRuntime

   Gets Java type for hybrid Objective-C class.

   Also documented in ObjCRuntime.h

   :param object: The Objective-C object we want to get the relevant Java class for
   :return: The relevant Java class

getObjCCastProxyPeer
^^^^^^^^^^^^^^^^^^^^

.. java:method:: public static native long getObjCCastProxyPeer(long instance)
   :outertype: ObjCRuntime

   Returns the peer of a _NatJObjCCastProxy object.

   Also documented in ObjCRuntime.h

   :param instance: The instance of the proxy target
   :return: The peer of _NatJObjCCastProxy

getObjectClass
^^^^^^^^^^^^^^

.. java:method:: public static native long getObjectClass(long peer)
   :outertype: ObjCRuntime

   Returns the Objective-C class of an Objective-C object.

   Also documented in ObjCRuntime.h

   :param peer: The Objective-C object we want to get the class of
   :return: The class of the Objective-C object

getObjectClassName
^^^^^^^^^^^^^^^^^^

.. java:method:: public static String getObjectClassName(Object instance)
   :outertype: ObjCRuntime

   Returns the respective native object class name for a Java instance.

   :param instance: The Java instance we want to get respective native class name for
   :return: The native class name

getObjectDescription
^^^^^^^^^^^^^^^^^^^^

.. java:method:: public static native String getObjectDescription(long peer)
   :outertype: ObjCRuntime

   Gets description of an Objective-C object.

   Also documented in ObjCRuntime.h

   :param peer: The Objective-C object
   :return: The object description

handleFrameworkInitializer
^^^^^^^^^^^^^^^^^^^^^^^^^^

.. java:method:: public void handleFrameworkInitializer(IFrameworkInitializer initializer)
   :outertype: ObjCRuntime

   Handles an @{link org.moe.natj.objc.IFrameworkInitializer} instance.

   :param initializer: Framework initializer

isKindOfHybridClass
^^^^^^^^^^^^^^^^^^^

.. java:method:: public static native boolean isKindOfHybridClass(long peer)
   :outertype: ObjCRuntime

   Determines whether an Objective-C class is a hybrid class.

   Also documented in ObjCRuntime.h

   :param peer: The Objective-C class object
   :return: Whether the given class is a runtime created hybrid class

isKindOfInheritedClass
^^^^^^^^^^^^^^^^^^^^^^

.. java:method:: public static native boolean isKindOfInheritedClass(long peer)
   :outertype: ObjCRuntime

   Determines whether an Objective-C class is a runtime created inherited class.

   Also documented in ObjCRuntime.h

   :param peer: The Objective-C class object
   :return: Whether the given class is a runtime created inherited class

isKindOfProxyClass
^^^^^^^^^^^^^^^^^^

.. java:method:: public static native boolean isKindOfProxyClass(long peer)
   :outertype: ObjCRuntime

   Determines whether an Objective-C class is a runtime created proxy class.

   Also documented in ObjCRuntime.h

   :param peer: The Objective-C class object
   :return: Whether the given class is a runtime created proxy class

isObjectBlock
^^^^^^^^^^^^^

.. java:method:: public static native boolean isObjectBlock(long object)
   :outertype: ObjCRuntime

   Determines whether the given object is a block.

   Also documented in ObjCRuntime.h

   :param object: The object we want to check
   :return: Whether the object is a block

isObjectString
^^^^^^^^^^^^^^

.. java:method:: public static native boolean isObjectString(long object)
   :outertype: ObjCRuntime

   Determines whether the given object is a string.

   Also documented in ObjCRuntime.h

   :param object: The object we want to check
   :return: Whether the object is a string

isStackBlock
^^^^^^^^^^^^

.. java:method:: public static native boolean isStackBlock(long object)
   :outertype: ObjCRuntime

   Determines whether the given object is a stack block.

   Also documented in ObjCRuntime.h

   :param object: The object we want to check
   :return: Whether the object is a stack block

loadWeak
^^^^^^^^

.. java:method:: public static native long loadWeak(long location)
   :outertype: ObjCRuntime

   Loads a weak reference to an Objective-C object.

   Also documented in ObjCRuntime.h

   :param location: The address of the reference
   :return: The referenced Objective-C object

lockObject
^^^^^^^^^^

.. java:method:: public static native void lockObject(long object)
   :outertype: ObjCRuntime

   Locks Objective-C object.

   Also documented in ObjCRuntime.h

   :param object: The Objective-C object we want to lock

registerSelector
^^^^^^^^^^^^^^^^

.. java:method:: public static native long registerSelector(String string)
   :outertype: ObjCRuntime

   Registers a selector by its name.

   Also documented in ObjCRuntime.h

   :param string: The name of the selector we want to register
   :return: The SEL object

releaseAutoreleasePool
^^^^^^^^^^^^^^^^^^^^^^

.. java:method:: public static native void releaseAutoreleasePool(long pool)
   :outertype: ObjCRuntime

   Releases an autorelease pool.

   Also documented in ObjCRuntime.h

   :param pool: The pool we want to release

releaseObject
^^^^^^^^^^^^^

.. java:method:: public static native void releaseObject(long pointer)
   :outertype: ObjCRuntime

   Releases an Objective-C object.

   Also documented in ObjCRuntime.h

   :param pointer: The Objective-C object we want to release

resolveObjCClass
^^^^^^^^^^^^^^^^

.. java:method:: @SuppressWarnings public java.lang.Class<?> resolveObjCClass(long cls)
   :outertype: ObjCRuntime

   Resolve Java class by Objective-C class.

   At failure it defaults to the hierarchy root type.

   :param cls: The Objective-C class we want to resolve respective Java class for
   :return: The Java class

retainObject
^^^^^^^^^^^^

.. java:method:: public static native void retainObject(long pointer)
   :outertype: ObjCRuntime

   Retains an Objective-C object.

   Also documented in ObjCRuntime.h

   :param pointer: The Objective-C object we want to retain

setJavaReferenceOfBindingObject
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

.. java:method:: public static native void setJavaReferenceOfBindingObject(long peer, Object ref)
   :outertype: ObjCRuntime

   Sets the Java instance associated with an Objective-C object.

   Also documented in ObjCRuntime.h

   :param peer: The Objective-C object we want to set the associated Java instance of
   :param ref: The Java instance we want to associate with the Objective-C object

setJavaReferenceOfCustomObject
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

.. java:method:: public static native void setJavaReferenceOfCustomObject(long peer, Object ref)
   :outertype: ObjCRuntime

   Sets the custom Java instance associated with an Objective-C object.

   Also documented in ObjCRuntime.h

   :param peer: The Objective-C object we want to set the associated Java instance of
   :param ref: The Java instance we want to associate with the Objective-C object

storeWeak
^^^^^^^^^

.. java:method:: public static native void storeWeak(long object, long location)
   :outertype: ObjCRuntime

   Stores a weak reference to an Objective-C object.

   Also documented in ObjCRuntime.h

   :param object: The Objective-C object we want to store weak reference for
   :param location: The address of the reference

tryToDisposeCallback
^^^^^^^^^^^^^^^^^^^^

.. java:method:: @Override public void tryToDisposeCallback(Object callback)
   :outertype: ObjCRuntime

   Empty implementation for disposing Objective-C callbacks (blocks).

   Empty, because blocks are objects, so they have proper memory management.

   :param callback: Callback object

unlockObject
^^^^^^^^^^^^

.. java:method:: public static native void unlockObject(long object)
   :outertype: ObjCRuntime

   Unlocks Objective-C object.

   Also documented in ObjCRuntime.h

   :param object: The Objective-C object we want to unlock

