.. java:import:: org.moe.natj.general NatJ.JavaObjectConstructionInfo

.. java:import:: org.moe.natj.general NatJ.NativeObjectConstructionInfo

Mapper
======

.. java:package:: org.moe.natj.general
   :noindex:

.. java:type:: public interface Mapper

   Mapper interface.

   Implement this interface to add support for handling new native types. Adding \ ``MappedReturn(MyMapper.class)``\  or \ ``Mapped(MyMapper.class)``\  to a native method or one of its argument, respectively, will tell NatJ to use the mapper implementation whenever it has to convert the return or argument value between Java and native side. When converting to Java NatJ will use the implementation's \ ``toJava(long, JavaObjectConstructionInfo)``\  method to convert native value to a Java one. Reasonably, the \ ``toNative(Object, NativeObjectConstructionInfo)``\  method will be used for the other direction. \ :java:ref:`JavaObjectConstructionInfo.data`\  and \ :java:ref:`NativeObjectConstructionInfo.data`\  fields are not used by NatJ and free to use for anything.

Methods
-------
toJava
^^^^^^

.. java:method:: public Object toJava(long instance, JavaObjectConstructionInfo info)
   :outertype: Mapper

   Has to convert a native value to Java value and return it.

   :param instance: The pointer pointing to the native value
   :param info: Contains every information needed for conversion
   :return: The Java value

toNative
^^^^^^^^

.. java:method:: public long toNative(Object instance, NativeObjectConstructionInfo info)
   :outertype: Mapper

   Has to convert a Java value to native value and return its pointer.

   :param instance: The Java value to convert
   :param info: Contains every information needed for conversion
   :return: The native value

