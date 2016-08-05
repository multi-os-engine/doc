.. java:import:: org.moe.natj.cxx.impl ReferenceManager

.. java:import:: org.moe.natj.general NativeRuntime

.. java:import:: org.moe.natj.general Pointer

.. java:import:: org.moe.natj.general.ann NFloat

.. java:import:: org.moe.natj.general.ann NLong

.. java:import:: org.moe.natj.general.ann NULong

.. java:import:: org.moe.natj.general.ann WCharT

.. java:import:: org.moe.natj.general.ptr BoolPtr

.. java:import:: org.moe.natj.general.ptr BytePtr

.. java:import:: org.moe.natj.general.ptr CharPtr

.. java:import:: org.moe.natj.general.ptr ConstVoidPtr

.. java:import:: org.moe.natj.general.ptr DoublePtr

.. java:import:: org.moe.natj.general.ptr FloatPtr

.. java:import:: org.moe.natj.general.ptr IntPtr

.. java:import:: org.moe.natj.general.ptr LongPtr

.. java:import:: org.moe.natj.general.ptr NFloatPtr

.. java:import:: org.moe.natj.general.ptr NLongPtr

.. java:import:: org.moe.natj.general.ptr NULongPtr

.. java:import:: org.moe.natj.general.ptr ShortPtr

.. java:import:: org.moe.natj.general.ptr VoidPtr

.. java:import:: org.moe.natj.general.ptr WCharTPtr

.. java:import:: org.moe.natj.general.ptr.impl PtrFactory

.. java:import:: org.moe.natj.general.ptr.impl PtrImplementer

.. java:import:: java.lang.reflect Constructor

.. java:import:: java.lang.reflect Field

.. java:import:: java.lang.reflect InvocationTargetException

.. java:import:: java.lang.reflect Method

.. java:import:: java.util Collections

.. java:import:: java.util HashMap

.. java:import:: java.util Map

.. java:import:: java.util.concurrent.locks Lock

.. java:import:: java.util.concurrent.locks ReadWriteLock

.. java:import:: java.util.concurrent.locks ReentrantReadWriteLock

CxxRuntime
==========

.. java:package:: org.moe.natj.cxx
   :noindex:

.. java:type:: public class CxxRuntime

   CxxRuntime.

   \ :java:ref:`NativeRuntime`\  implementation used for supporting C++ features.

Fields
------
ILLEGAL_MEMORY_ADDRESS
^^^^^^^^^^^^^^^^^^^^^^

.. java:field:: public static final long ILLEGAL_MEMORY_ADDRESS
   :outertype: CxxRuntime

   Placeholder value for illegal memory address.

primitivePtrTypeMap
^^^^^^^^^^^^^^^^^^^

.. java:field:: public static final Map<Class<?>, Class<?>> primitivePtrTypeMap
   :outertype: CxxRuntime

   Primitive pointer type map.

Methods
-------
castToPtr
^^^^^^^^^

.. java:method:: public static <T extends CxxObject> VoidPtr castToPtr(T object)
   :outertype: CxxRuntime

   Casts the specified object to a VoidPtr.

   :param object: Object to cast
   :param <T>: Object type
   :return: VoidPtr instance or null

construct
^^^^^^^^^

.. java:method:: @SuppressWarnings public static <T extends CxxObject> T construct(long peer, Class<T> implClass)
   :outertype: CxxRuntime

   Constructs a Java object with the specified impl Class.

   :param peer: Native peer
   :param implClass: Impl class
   :param <T>: Object type
   :return: Constructed object

constructPtrForPeer
^^^^^^^^^^^^^^^^^^^

.. java:method:: public static ConstVoidPtr constructPtrForPeer(long peer, int depth, Class<?> elementClass)
   :outertype: CxxRuntime

   Creates a pointer for the specified peer, depth and element Class.

   :param peer: Native peer
   :param depth: Indirection depth
   :param elementClass: Element class
   :throws NoSuchMethodException:
   :return: Constructed pointer

delete
^^^^^^

.. java:method:: public static void delete(CxxObject obj)
   :outertype: CxxRuntime

   Invokes the 'delete' operator on the given object.

   :param obj: Object to delete

deleteWith
^^^^^^^^^^

.. java:method:: public static <T extends CxxObject> void deleteWith(T object, Releaser<T> releaser)
   :outertype: CxxRuntime

   Releases the specified object with the specified releaser.

   :param object: Object to release
   :param releaser: Releaser instance
   :param <T>: Type to release

detachOnly
^^^^^^^^^^

.. java:method:: public static <T extends CxxObject> void detachOnly(T object)
   :outertype: CxxRuntime

   Detaches the specified object from the runtime cache.

   :param object: Object to detach
   :param <T>: Type of object

get
^^^

.. java:method:: public static CxxObject get(long peer)
   :outertype: CxxRuntime

   Returns the cached object for the specified peer.

   :param peer: Native peer
   :return: Cached object or null

getClassImplForName
^^^^^^^^^^^^^^^^^^^

.. java:method:: public static Class<?> getClassImplForName(String className, String implSuffix)
   :outertype: CxxRuntime

   Returns the impl class for the specified class.

   :param className: Base class
   :param implSuffix: Impl class suffix
   :return: Impl class

getImplClass
^^^^^^^^^^^^

.. java:method:: @SuppressWarnings public static <T extends CxxObject> Class<T> getImplClass(Class<T> cls)
   :outertype: CxxRuntime

   Returns the impl class for the specified class.

   :param cls: Base class
   :param <T>: Class type
   :return: Impl class

getObjectForUID
^^^^^^^^^^^^^^^

.. java:method:: public static Object getObjectForUID(long uid)
   :outertype: CxxRuntime

   Returns the object associated with the UID.

   :param uid: UID
   :return: Associated object

getPtrDeleteMethod
^^^^^^^^^^^^^^^^^^

.. java:method:: public static final <T extends CxxObject> Method getPtrDeleteMethod(Class<T> cls)
   :outertype: CxxRuntime

   Returns the 'ptrdeletej' method for the specified class.

   :param cls: Owner Class
   :param <T>: Class type
   :return: Method instance or null on failure

getPtrGetMethod
^^^^^^^^^^^^^^^

.. java:method:: public static final <T extends CxxObject> Method getPtrGetMethod(Class<T> cls)
   :outertype: CxxRuntime

   Returns the 'ptrgetji' method for the specified class.

   :param cls: Owner Class
   :param <T>: Class type
   :return: Method instance or null on failure

getPtrNewMethod
^^^^^^^^^^^^^^^

.. java:method:: public static final <T extends CxxObject> Method getPtrNewMethod(Class<T> cls)
   :outertype: CxxRuntime

   Returns the 'ptrnewi' method for the specified class.

   :param cls: Owner Class
   :param <T>: Class type
   :return: Method instance or null on failure

getPtrSetMethod
^^^^^^^^^^^^^^^

.. java:method:: public static final <T extends CxxObject> Method getPtrSetMethod(Class<T> cls)
   :outertype: CxxRuntime

   Returns the 'ptrsetjij' method for the specified class.

   :param cls: Owner Class
   :param <T>: Class type
   :return: Method instance or null on failure

getUIDForObject
^^^^^^^^^^^^^^^

.. java:method:: public static long getUIDForObject(Object object)
   :outertype: CxxRuntime

   Returns a new UID for the specified object.

   :param object: Object to associate with the UID
   :return: UID

initialize
^^^^^^^^^^

.. java:method:: public static void initialize()
   :outertype: CxxRuntime

   Initializes the C++ runtime.

register
^^^^^^^^

.. java:method:: public static void register(CxxObject object)
   :outertype: CxxRuntime

   Registers the object in the Object cache.

   :param object: Object to register

sizeof
^^^^^^

.. java:method:: public static final long sizeof(CxxObject object)
   :outertype: CxxRuntime

   Returns the native 'sizeof' value for the C++ class/struct represented by the specified object.

   :param object: Binding object
   :return: 'sizeof' value or -1 if the required field does not exist

sizeof
^^^^^^

.. java:method:: public static final <T extends CxxObject> long sizeof(Class<T> cls)
   :outertype: CxxRuntime

   Returns the native 'sizeof' value for the C++ class/struct represented by the specified Class.

   :param cls: Binding class
   :param <T>: Class type
   :return: 'sizeof' value or -1 if the required field does not exist

