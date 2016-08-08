.. java:import:: org.moe.natj.c CRuntime

.. java:import:: org.moe.natj.general.ann Runtime

.. java:import:: java.lang.annotation ElementType

.. java:import:: java.lang.annotation Retention

.. java:import:: java.lang.annotation RetentionPolicy

.. java:import:: java.lang.annotation Target

Variadic
========

.. java:package:: org.moe.natj.c.ann
   :noindex:

.. java:type:: @Runtime @Retention @Target public @interface Variadic

   Mark a native method as variadic with this annotation to tell NatJ that how the arguments should be handled.

Fields
------
Box
^^^

.. java:field:: public static final byte Box
   :outertype: Variadic

   Pass boxed primitive values without unboxing.

Runtime
^^^^^^^

.. java:field:: public static final byte Runtime
   :outertype: Variadic

   Auto select Unbox or Box policy based on the actual runtime.

Unbox
^^^^^

.. java:field:: public static final byte Unbox
   :outertype: Variadic

   Unbox boxed primitive values.

