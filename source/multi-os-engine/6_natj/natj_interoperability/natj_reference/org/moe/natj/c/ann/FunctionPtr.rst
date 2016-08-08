.. java:import:: org.moe.natj.c CRuntime

.. java:import:: org.moe.natj.general.ann Callable

.. java:import:: org.moe.natj.general.ann Runtime

.. java:import:: java.lang.annotation ElementType

.. java:import:: java.lang.annotation Retention

.. java:import:: java.lang.annotation RetentionPolicy

.. java:import:: java.lang.annotation Target

FunctionPtr
===========

.. java:package:: org.moe.natj.c.ann
   :noindex:

.. java:type:: @Callable @Runtime @Retention @Target public @interface FunctionPtr

   Mark a native method or its arguments to tell NatJ that the value is a C callback.

   NatJ will lookup a method by the \ :java:ref:`name()`\  and \ :java:ref:`argTypes()`\ .

