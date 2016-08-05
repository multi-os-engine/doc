.. java:import:: org.moe.natj.general Mapper

.. java:import:: org.moe.natj.general NatJ.JavaObjectConstructionInfo

.. java:import:: org.moe.natj.general NatJ.NativeObjectConstructionInfo

.. java:import:: org.moe.natj.general.ann Runtime

.. java:import:: org.moe.natj.objc ObjCRuntime

ObjCStringMapper
================

.. java:package:: org.moe.natj.objc.map
   :noindex:

.. java:type:: @Runtime public class ObjCStringMapper implements Mapper

   Mapper for Objective-C strings.

Methods
-------
toJava
^^^^^^

.. java:method:: @Override public Object toJava(long peer, JavaObjectConstructionInfo info)
   :outertype: ObjCStringMapper

   Creates a Java string from an Objective-C string.

   :param peer: NSString pointer
   :param info: Construction info
   :return: Java String object

toNative
^^^^^^^^

.. java:method:: @Override public long toNative(Object instance, NativeObjectConstructionInfo info)
   :outertype: ObjCStringMapper

   Creates an Objective-C string from a Java string.

   :param instance: Java String object
   :param info: Construction info
   :return: NSString pointer

