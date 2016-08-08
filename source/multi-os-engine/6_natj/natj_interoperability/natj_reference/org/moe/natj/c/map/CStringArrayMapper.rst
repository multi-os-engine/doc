.. java:import:: org.moe.natj.c CRuntime

.. java:import:: org.moe.natj.general Mapper

.. java:import:: org.moe.natj.general NatJ.JavaObjectConstructionInfo

.. java:import:: org.moe.natj.general NatJ.NativeObjectConstructionInfo

.. java:import:: org.moe.natj.general Pointer

.. java:import:: java.util Map

.. java:import:: java.util WeakHashMap

CStringArrayMapper
==================

.. java:package:: org.moe.natj.c.map
   :noindex:

.. java:type:: public class CStringArrayMapper implements Mapper

   Mapper for C string arrays.

Fields
------
strings2addr
^^^^^^^^^^^^

.. java:field:: public Map<String[], Pointer> strings2addr
   :outertype: CStringArrayMapper

   Collection used for caching generated native C string arrays.

   Because this is a weak has map, the C string arrays will be released after every Java reference to them is gone.

Methods
-------
toJava
^^^^^^

.. java:method:: @Override public Object toJava(long peer, JavaObjectConstructionInfo info)
   :outertype: CStringArrayMapper

   Throws runtime error, because there is no way to support this direction.

toNative
^^^^^^^^

.. java:method:: @Override public long toNative(Object instance, NativeObjectConstructionInfo info)
   :outertype: CStringArrayMapper

   Creates a C string array.

   At first it lookups in the cache, if it results in a success, then it uses it as a result. Otherwise, it creates a C string array and cache it in \ :java:ref:`strings2addr`\  and returns it.

