.. java:import:: org.moe.natj.c CRuntime

.. java:import:: org.moe.natj.c.ann Variadic

.. java:import:: org.moe.natj.general.ann Library

.. java:import:: org.moe.natj.general.ann Runtime

.. java:import:: org.moe.natj.general.map ReferenceMapper

.. java:import:: org.moe.natj.general.ptr ConstVoidPtr

.. java:import:: java.io File

.. java:import:: java.io IOException

.. java:import:: java.lang.annotation Annotation

.. java:import:: java.lang.ref WeakReference

.. java:import:: java.lang.reflect Constructor

.. java:import:: java.lang.reflect Field

.. java:import:: java.lang.reflect Method

.. java:import:: java.util Arrays

.. java:import:: java.util HashMap

.. java:import:: java.util HashSet

.. java:import:: java.util Map

.. java:import:: java.util Properties

.. java:import:: java.util Set

.. java:import:: java.util.concurrent ConcurrentHashMap

NatJ
====

.. java:package:: org.moe.natj.general
   :noindex:

.. java:type:: public class NatJ

   The entry class of the NatJ library.

Methods
-------
buildJavaObjectConstructionInfo
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

.. java:method:: public static JavaObjectConstructionInfo buildJavaObjectConstructionInfo(NativeRuntime defaultRuntime, Class<?> type, Class<?> mapperClass, Annotation callback, Object typeInfo, boolean owned, boolean byvalue, boolean arg)
   :outertype: NatJ

   Constructs a \ :java:ref:`JavaObjectConstructionInfo`\  instance.

   The responsible runtime determined by the following simplified formula: runtime = (mapperClass != null ? getRuntime(mapperClass) : getRuntime(type));
   runtime = runtime != null ? runtime : defaultRuntime;

   :param defaultRuntime: Runtime used when the runtime can not be determined
   :param type: The type to convert
   :param mapperClass: Specifies the mapper class to use
   :param callback: Extra information for callbacks
   :param typeInfo: Type information for reference types
   :param owned: Specifies the ownership
   :param byvalue: Specifies whether it is for a by-value value
   :param arg: Specifies whether it is for an argument
   :return: The constructed \ :java:ref:`JavaObjectConstructionInfo`\  instance

buildNativeObjectConstructionInfo
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

.. java:method:: public static NativeObjectConstructionInfo buildNativeObjectConstructionInfo(NativeRuntime defaultRuntime, Class<?> type, Class<?> mapperClass, Annotation callback, boolean owned, boolean byvalue, boolean arg)
   :outertype: NatJ

   Constructs a \ :java:ref:`NativeObjectConstructionInfo`\  instance.

   :param defaultRuntime: Runtime used when the runtime can not be determined by the \ ``type``\
   :param type: The type to convert
   :param mapperClass: Specifies the mapper class to use
   :param callback: Extra information for callbacks
   :param owned: Specifies the ownership
   :param byvalue: Specifies whether it is for a by-value value
   :param arg: Specifies whether it is for an argument
   :return: The constructed \ :java:ref:`NativeObjectConstructionInfo`\  instance

disposeFunctionPtr
^^^^^^^^^^^^^^^^^^

.. java:method:: public static void disposeFunctionPtr(Object callback)
   :outertype: NatJ

   Iterates over every cached runtime and tells them to dispose callbacks for the given instance.

   :param callback: The instance we want to do callback disposing for

getAndRemoveObjectCacheForRuntime
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

.. java:method:: @SuppressWarnings public static Object getAndRemoveObjectCacheForRuntime(Class<? extends NativeRuntime> runtimeClass, Object instance)
   :outertype: NatJ

   Returns and deletes cache for \ ``runtime``\  of the \ ``instance``\ .

   :param runtimeClass: The runtime we want to get and delete cache for
   :param instance: The instance we want to get and delete cache of
   :return: The cache

getMethod
^^^^^^^^^

.. java:method:: public static Method getMethod(Class<?> cls, String name, java.lang.Class<?>[] argTypes, int[] idxRef, int[] countRef)
   :outertype: NatJ

   Lookups a method in a class by its given name and argument types, and computes the method's index and the method count.

   :param cls: The class in we want to do the lookup
   :param name: The method name to lookup
   :param argTypes: The method argument types
   :param idxRef: Out argument to return the computed index
   :param countRef: Out argument to return the method count
   :return: The method

getMethodIndex
^^^^^^^^^^^^^^

.. java:method:: public static int getMethodIndex(Method method)
   :outertype: NatJ

   Computes index for a method.

   :param method: The method we want to get the index of
   :return: The method index

getObjectCacheForRuntime
^^^^^^^^^^^^^^^^^^^^^^^^

.. java:method:: @SuppressWarnings public static Object getObjectCacheForRuntime(Class<? extends NativeRuntime> runtimeClass, Object instance)
   :outertype: NatJ

   Returns cache for the given instance.

   If a cache found for the \ ``runtime``\ , then it will return it, otherwise null will be returned.

   :param runtimeClass: For which runtime we want to get the cache
   :param instance: Of which object we want to get the cache
   :return: The cache, nil if creation was not possible

getOrCreateInstanceOfRuntimeClass
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

.. java:method:: public static NativeRuntime getOrCreateInstanceOfRuntimeClass(Class<? extends NativeRuntime> runtimeClass)
   :outertype: NatJ

   Returns an instance for a runtime class with using a cache.

   :param runtimeClass: The runtime class we want to get instance for.
   :return: The instance of the runtime class.

getOrCreateObjectCacheForRuntime
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

.. java:method:: @SuppressWarnings public static Object getOrCreateObjectCacheForRuntime(Class<? extends NativeRuntime> runtimeClass, Object instance, CacheConstructor constructor)
   :outertype: NatJ

   Optionally creates a cache for a given instance then returns it.

   If the \ ``instance``\  has a \ ``__natjCache``\  field and it's not initialized, then it will save a hash map in it to be able to store cache for every runtime. If a cache found for the \ ``runtime``\ , then it will return it, otherwise, it will create one by the given \ ``constructor``\  and store it in the cache for the \ ``runtimeClass``\  and return it. If there are no \ ``__natjCache``\  fields to use, then this will return \ ``null``\  to tell the caller there are no caching capabilities of the \ ``instance``\ .

   :param runtimeClass: For which runtime we want to get the cache
   :param instance: Of which object we want to get the cache
   :param constructor: Cache factory implementation
   :return: The cache, nil if creation was not possible

getPlatformName
^^^^^^^^^^^^^^^

.. java:method:: public static native String getPlatformName()
   :outertype: NatJ

   Returns the platform name.

   Also documented in NatJ.h

   :return: The platform name.

getReferenceMapper
^^^^^^^^^^^^^^^^^^

.. java:method:: public static Mapper getReferenceMapper()
   :outertype: NatJ

   Returns the reference mapper instance.

   :return: The reference mapper.

is64Bit
^^^^^^^

.. java:method:: public static boolean is64Bit()
   :outertype: NatJ

isBoxedPrimitiveType
^^^^^^^^^^^^^^^^^^^^

.. java:method:: public static boolean isBoxedPrimitiveType(Class<?> type)
   :outertype: NatJ

   Determines whether a class is a kind of a boxed type, like Integer, Boolean, etc.

   :param type: The type to check.
   :return: Whether the given type is a boxed one.

loadFramework
^^^^^^^^^^^^^

.. java:method:: public static native boolean loadFramework(String path)
   :outertype: NatJ

   Try to load framework. Should be applied only for darwin OS.

   :param path: The full path to framework executable file
   :return: Status of loading. True for cussess and false for all other cases

lookUpLibrary
^^^^^^^^^^^^^

.. java:method:: protected static String lookUpLibrary(String name, boolean load)
   :outertype: NatJ

   Looks up a library by its name in the file system.

   Uses \ :java:ref:`resolvedLibraries`\  for caching to avoid looking up the same library for multiple times.

   :param name: The library name we want to resolve a path for
   :param load: If this is true and the lookup resulted in a success, then it will load the library
   :return: The resolved path of the library

register
^^^^^^^^

.. java:method:: public static void register()
   :outertype: NatJ

   Registers a class with its determined runtime.

   Usable from static initializers: class MyClass {
       static {
           NatJ.register();
       }
       // ...
   }

   At first use it initializes NatJ. Loads the library specified by a \ :java:ref:`Library`\  annotation, if found any. Determines the responsible runtime with \ :java:ref:`getRuntime(Class,boolean)`\  and uses it for registering the class.

registerRuntime
^^^^^^^^^^^^^^^

.. java:method:: public static void registerRuntime(Class<? extends NativeRuntime> runtimeClass)
   :outertype: NatJ

   Registers a runtime.

   :param runtimeClass: The runtime we want to register.

toJava
^^^^^^

.. java:method:: public static Object toJava(long peer, JavaObjectConstructionInfo info)
   :outertype: NatJ

   Forwards to \ ``info.mapper``\ .

   :param peer: The native pointer pointing to the object we want to convert.
   :param info: The conversion info.
   :return: The Java peer.

toNative
^^^^^^^^

.. java:method:: public static long toNative(Object instance, NativeObjectConstructionInfo info)
   :outertype: NatJ

   Forwards to \ ``info.mapper``\ .

   :param instance: The Java object we want to convert.
   :param info: The conversion info.
   :return: The native pointer pointing to the native peer.

