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

CCallbackMapper.CallbackInfo
============================

.. java:package:: org.moe.natj.c.map
   :noindex:

.. java:type:: public static class CallbackInfo
   :outertype: CCallbackMapper

   Used for storing the callback pointer and the extra field.

   The meaning of the extra field is opaque from Java and strongly platform dependent.

Fields
------
callback
^^^^^^^^

.. java:field:: public Pointer callback
   :outertype: CCallbackMapper.CallbackInfo

extra
^^^^^

.. java:field:: public long extra
   :outertype: CCallbackMapper.CallbackInfo

Constructors
------------
CallbackInfo
^^^^^^^^^^^^

.. java:constructor:: public CallbackInfo(Pointer callback, long extra)
   :outertype: CCallbackMapper.CallbackInfo

