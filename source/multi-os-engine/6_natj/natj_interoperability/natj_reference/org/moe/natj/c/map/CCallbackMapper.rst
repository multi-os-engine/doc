.. java:import:: org.moe.natj.c CRuntime

.. java:import:: org.moe.natj.c.ann FunctionPtr

.. java:import:: org.moe.natj.general Mapper

.. java:import:: org.moe.natj.general NatJ

.. java:import:: org.moe.natj.general NatJ.JavaObjectConstructionInfo

.. java:import:: org.moe.natj.general NatJ.NativeObjectConstructionInfo

.. java:import:: org.moe.natj.general Pointer

.. java:import:: java.lang.reflect Method

.. java:import:: java.util HashMap

.. java:import:: java.util Map

CCallbackMapper
===============

.. java:package:: org.moe.natj.c.map
   :noindex:

.. java:type:: public class CCallbackMapper implements Mapper

   Mapper for C callbacks.

Fields
------
callback2extras
^^^^^^^^^^^^^^^

.. java:field:: public Map<Long, Long> callback2extras
   :outertype: CCallbackMapper

   Collection used for caching extras for callbacks.

instance2callbacks
^^^^^^^^^^^^^^^^^^

.. java:field:: public Map<Object, CallbackInfo[]> instance2callbacks
   :outertype: CCallbackMapper

   Collection used for caching generated native callbacks where the Java instance has no cache field.

Methods
-------
toJava
^^^^^^

.. java:method:: @Override public Object toJava(long peer, JavaObjectConstructionInfo info)
   :outertype: CCallbackMapper

   Creates a Java instance from a native callback.

   This only works with C callbacks we create.

toNative
^^^^^^^^

.. java:method:: @Override public long toNative(Object instance, NativeObjectConstructionInfo info)
   :outertype: CCallbackMapper

   Creates a native callback from a Java instance.

   At first this computes the method index that is used for cache indexing. Then it tries to get or create a cache through the NatJ interface. If this results in a failure that means the Java instance has no cache field, in this case it uses \ :java:ref:`instance2callbacks`\  as cache. If the cache has a generated \ :java:ref:`Pointer`\  at the computed index, then it uses it as a result, otherwise, if the cache does not contain anything for the method, then it creates the native callback and saves it in the cache at the computed index. And at last it returns the created native callback.

