.. java:import:: org.moe.natj.general Mapper

.. java:import:: org.moe.natj.general NatJ

.. java:import:: org.moe.natj.general NatJ.JavaObjectConstructionInfo

.. java:import:: org.moe.natj.general NatJ.NativeObjectConstructionInfo

.. java:import:: org.moe.natj.general NativeObject

.. java:import:: org.moe.natj.general Pointer

.. java:import:: org.moe.natj.general Pointer.Releaser

.. java:import:: org.moe.natj.general.ann NUInt

.. java:import:: org.moe.natj.general.ann Runtime

.. java:import:: org.moe.natj.objc ObjCObject

.. java:import:: org.moe.natj.objc ObjCOpaqueObject

.. java:import:: org.moe.natj.objc ObjCRuntime

.. java:import:: org.moe.natj.objc WeakReference

.. java:import:: org.moe.natj.objc.ann ObjCProtocolName

.. java:import:: org.moe.natj.objc.ann Selector

ObjCObjectMapper
================

.. java:package:: org.moe.natj.objc.map
   :noindex:

.. java:type:: @Runtime public class ObjCObjectMapper implements Mapper

   Mapper for Objective-C objects.

Fields
------
proxy2addr
^^^^^^^^^^

.. java:field:: public Map<Object, WeakReference> proxy2addr
   :outertype: ObjCObjectMapper

   Collection for caching the created Objective-C proxy objects.

type2ProtocolInfo
^^^^^^^^^^^^^^^^^

.. java:field:: public Map<Class<?>, NativeProtocolInfo> type2ProtocolInfo
   :outertype: ObjCObjectMapper

   Collection for caching the created info of native protocol proxies.

Methods
-------
cleanupObjCProxy
^^^^^^^^^^^^^^^^

.. java:method:: public void cleanupObjCProxy(Object peer)
   :outertype: ObjCObjectMapper

   Removes the object from the proxy map.

   :param peer: Proxy object

createStrongBindingPointer
^^^^^^^^^^^^^^^^^^^^^^^^^^

.. java:method:: public static Pointer createStrongBindingPointer(long peer, boolean owned)
   :outertype: ObjCObjectMapper

   Creates a strong binding pointer to an Objective-C object.

   Retains if doing so is needed to keep the strong ownership.

   :param peer: The pointer
   :param owned: If this is false, the pointer objects will be retained
   :return: The created \ :java:ref:`Pointer`\  object

dispose
^^^^^^^

.. java:method:: public boolean dispose(Object object)
   :outertype: ObjCObjectMapper

   Disposes an object if it can be.

   :param object: The object of which we want to dispose the native peer
   :return: Whether the given object was disposable

getNativePeerOfProxyedObject
^^^^^^^^^^^^^^^^^^^^^^^^^^^^

.. java:method:: public Pointer getNativePeerOfProxyedObject(Object object)
   :outertype: ObjCObjectMapper

   Returns the Objective-C object for a proxied Java instance.

   :param object: The object we want to get native proxy object for.
   :return: The native proxy object

toJava
^^^^^^

.. java:method:: @Override public Object toJava(long peer, JavaObjectConstructionInfo info)
   :outertype: ObjCObjectMapper

   Creates Java objects from Objective-C objects.

   For \ :java:ref:`NativeObject`\ s this will use the Java instances associated with the Objective-C objects. If there are no references, then this will create new \ :java:ref:`NativeObject`\ s, and associate them with the Objective-C objects. For strings this will forward to \ :java:ref:`ObjCStringMapper`\ . For blocks this will forward to \ :java:ref:`ObjCCallbackMapper`\ .

   For proxies it will return the the Java instances associated with the Objective-C proxy objects.

toNative
^^^^^^^^

.. java:method:: @Override public long toNative(Object instance, NativeObjectConstructionInfo info)
   :outertype: ObjCObjectMapper

   Creates Objective-C objects from Java objects.

   For \ :java:ref:`NativeObject`\ s this will only return their peers. For strings this will forward to \ :java:ref:`ObjCStringMapper`\ . For every other cases this will generate proxy classes with using \ :java:ref:`class2addr`\  as cache for Objective-C classes, and instance them with using \ :java:ref:`proxy2addr`\  as a cache for instantiations.

