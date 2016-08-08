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

NatJ.NativeObjectConstructionInfo
=================================

.. java:package:: org.moe.natj.general
   :noindex:

.. java:type:: public static class NativeObjectConstructionInfo
   :outertype: NatJ

   Class used for storing every information needed when constructing a native value from a Java one.

Fields
------
arg
^^^

.. java:field:: public boolean arg
   :outertype: NatJ.NativeObjectConstructionInfo

   Specifies whether this is a conversion for an argument value.

byvalue
^^^^^^^

.. java:field:: public boolean byvalue
   :outertype: NatJ.NativeObjectConstructionInfo

   Specifies whether the value passed by reference or value.

callback
^^^^^^^^

.. java:field:: public Object callback
   :outertype: NatJ.NativeObjectConstructionInfo

   Extra information for callbacks.

data
^^^^

.. java:field:: public Object data
   :outertype: NatJ.NativeObjectConstructionInfo

   User data for custom use.

mapper
^^^^^^

.. java:field:: public Mapper mapper
   :outertype: NatJ.NativeObjectConstructionInfo

   Specifies which mapper to use.

owned
^^^^^

.. java:field:: public boolean owned
   :outertype: NatJ.NativeObjectConstructionInfo

   Specifies the ownership of the value, used for memory management.

ref
^^^

.. java:field:: public boolean ref
   :outertype: NatJ.NativeObjectConstructionInfo

   Specifies whether this is a conversion for a reference.

