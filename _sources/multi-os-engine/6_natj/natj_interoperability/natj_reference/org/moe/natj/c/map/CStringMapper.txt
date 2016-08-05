.. java:import:: org.moe.natj.c CRuntime

.. java:import:: org.moe.natj.general Mapper

.. java:import:: org.moe.natj.general NatJ.JavaObjectConstructionInfo

.. java:import:: org.moe.natj.general NatJ.NativeObjectConstructionInfo

.. java:import:: org.moe.natj.general Pointer

.. java:import:: java.util Map

.. java:import:: java.util WeakHashMap

CStringMapper
=============

.. java:package:: org.moe.natj.c.map
   :noindex:

.. java:type:: public class CStringMapper implements Mapper

   Mapper for C strings.

Fields
------
string2addr
^^^^^^^^^^^

.. java:field:: public Map<String, Pointer> string2addr
   :outertype: CStringMapper

   Collection used for caching generated native C strings.

   Because this is a weak has map, the C strings will be released after every Java reference to them is gone.

Methods
-------
toJava
^^^^^^

.. java:method:: @Override public Object toJava(long peer, JavaObjectConstructionInfo info)
   :outertype: CStringMapper

   Creates a Java string.

   Creates a Java string from a C string.

toNative
^^^^^^^^

.. java:method:: @Override public long toNative(Object instance, NativeObjectConstructionInfo info)
   :outertype: CStringMapper

   Creates a C string.

   At first it lookups in the cache, if it results in a success, then it uses it as a result. Otherwise, it creates a C string and cache it in {link #string2addr} and returns it.

