.. java:import:: org.moe.natj.c CRuntime

.. java:import:: org.moe.natj.general Mapper

.. java:import:: org.moe.natj.general NatJ.JavaObjectConstructionInfo

.. java:import:: org.moe.natj.general NatJ.NativeObjectConstructionInfo

.. java:import:: org.moe.natj.general NativeObject

.. java:import:: org.moe.natj.general Pointer

.. java:import:: java.lang.reflect Constructor

CObjectMapper
=============

.. java:package:: org.moe.natj.c.map
   :noindex:

.. java:type:: public class CObjectMapper implements Mapper

   Mapper for C structures.

Methods
-------
toJava
^^^^^^

.. java:method:: @Override public Object toJava(long peer, JavaObjectConstructionInfo info)
   :outertype: CObjectMapper

   Creates a Java \ :java:ref:`NativeObject`\ .

   At first it copies the peer if needed, then it creates a \ :java:ref:`NativeObject`\  with reflection. The reflected constructor cached in \ ``info.data``\ . After the construction it returns the resulted object.

toNative
^^^^^^^^

.. java:method:: @Override public long toNative(Object instance, NativeObjectConstructionInfo info)
   :outertype: CObjectMapper

   Gets the native structure pointer from the \ :java:ref:`NativeObject`\  and returns it.

