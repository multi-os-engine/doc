.. java:import:: org.moe.natj.c CRuntime

.. java:import:: org.moe.natj.c OpaquePtr

.. java:import:: org.moe.natj.general Mapper

.. java:import:: org.moe.natj.general NatJ.JavaObjectConstructionInfo

.. java:import:: org.moe.natj.general NatJ.NativeObjectConstructionInfo

.. java:import:: org.moe.natj.general Pointer

.. java:import:: org.moe.natj.general.ann ReferenceInfo

.. java:import:: org.moe.natj.general.ptr ConstPtr

.. java:import:: org.moe.natj.general.ptr ConstVoidPtr

.. java:import:: org.moe.natj.general.ptr.impl PtrImplementer

.. java:import:: java.lang.reflect Constructor

ReferenceMapper
===============

.. java:package:: org.moe.natj.general.map
   :noindex:

.. java:type:: public class ReferenceMapper implements Mapper

   Mapper for references.

Methods
-------
toJava
^^^^^^

.. java:method:: @Override public Object toJava(long peer, JavaObjectConstructionInfo info)
   :outertype: ReferenceMapper

   Creates a reference from the pointer.

toNative
^^^^^^^^

.. java:method:: @Override public long toNative(Object instance, NativeObjectConstructionInfo info)
   :outertype: ReferenceMapper

   Returns the native pointer of the reference.

