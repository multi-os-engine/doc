.. java:import:: org.moe.natj.c CRuntime

.. java:import:: org.moe.natj.general.ann Runtime

.. java:import:: java.lang.annotation ElementType

.. java:import:: java.lang.annotation Retention

.. java:import:: java.lang.annotation RetentionPolicy

.. java:import:: java.lang.annotation Target

CFunction
=========

.. java:package:: org.moe.natj.c.ann
   :noindex:

.. java:type:: @Runtime @Retention @Target public @interface CFunction

   Annotation for C functions.

   Any native method marked by this annotation will be bound by NatJ to a native C function. If the name is not specified by the value, then the method name will be used for symbol lookup.

