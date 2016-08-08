.. java:import:: org.moe.natj.general Mapper

.. java:import:: org.moe.natj.general NatJ

.. java:import:: org.moe.natj.general Pointer

.. java:import:: org.moe.natj.general.ann Runtime

.. java:import:: org.moe.natj.objc ObjCObject

.. java:import:: org.moe.natj.objc ObjCRuntime

.. java:import:: org.moe.natj.objc WeakReference

.. java:import:: org.moe.natj.objc.ann ObjCBlock

.. java:import:: java.lang.reflect Constructor

.. java:import:: java.lang.reflect InvocationHandler

.. java:import:: java.lang.reflect Method

.. java:import:: java.lang.reflect Proxy

.. java:import:: java.util HashMap

.. java:import:: java.util Map

.. java:import:: java.util WeakHashMap

ObjCCallbackMapper
==================

.. java:package:: org.moe.natj.objc.map
   :noindex:

.. java:type:: @Runtime public class ObjCCallbackMapper implements Mapper

   Mapper for Objective-C blocks.

Fields
------
block2blockInfo
^^^^^^^^^^^^^^^

.. java:field:: public Map<Class<?>, NativeBlockInfo> block2blockInfo
   :outertype: ObjCCallbackMapper

   Collection for caching the created Java proxy classes and data of native blocks.

class2data
^^^^^^^^^^

.. java:field:: public Map<Class<?>, Long> class2data
   :outertype: ObjCCallbackMapper

   Collection used for caching data generated for Java blocks.

instance2callbacks
^^^^^^^^^^^^^^^^^^

.. java:field:: public Map<Object, WeakReference[]> instance2callbacks
   :outertype: ObjCCallbackMapper

   Collection used for caching generated native blocks where the Java instance has no cache field.

Methods
-------
cleanupObjCBlock
^^^^^^^^^^^^^^^^

.. java:method:: public void cleanupObjCBlock(Object instance, Method method)
   :outertype: ObjCCallbackMapper

   Clean ups after an Objective-C block.

   :param instance: Block object
   :param method: Callback method

createStrongBlockBindingPointer
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

.. java:method:: public static Pointer createStrongBlockBindingPointer(long peer, boolean owned)
   :outertype: ObjCCallbackMapper

   Creates a strong block binding pointer to an Objective-C object.

   Retains if doing so is needed to keep the strong ownership.

   :param peer: The pointer
   :param owned: If this is false, the pointer objects will be retained
   :return: The created \ :java:ref:`Pointer`\  object

dispose
^^^^^^^

.. java:method:: public boolean dispose(Object object)
   :outertype: ObjCCallbackMapper

   Disposes an object if it can be.

   :param object: The object of which we want to dispose the native peer
   :return: Whether the given object was disposable

getJavaBlockPeer
^^^^^^^^^^^^^^^^

.. java:method:: public Pointer getJavaBlockPeer(Object instance, String name, java.lang.Class<?>[] argTypes)
   :outertype: ObjCCallbackMapper

   Gets the peer for a Java block object.

   :param instance: Block object
   :param name: Callback method name
   :param argTypes: Argument types
   :return: Pointer to block object

getNativeBlockPeer
^^^^^^^^^^^^^^^^^^

.. java:method:: public Pointer getNativeBlockPeer(Object instance)
   :outertype: ObjCCallbackMapper

   Gets the peer for a native block object.

   :param instance: Block object
   :return: Pointer to native block

toJava
^^^^^^

.. java:method:: @Override public Object toJava(long peer, NatJ.JavaObjectConstructionInfo info)
   :outertype: ObjCCallbackMapper

   Creates a Java instance from a native block.

   This only works with Objective-C blocks we create.

toNative
^^^^^^^^

.. java:method:: @Override public long toNative(Object instance, NatJ.NativeObjectConstructionInfo info)
   :outertype: ObjCCallbackMapper

   Creates a native block from a Java instance.

