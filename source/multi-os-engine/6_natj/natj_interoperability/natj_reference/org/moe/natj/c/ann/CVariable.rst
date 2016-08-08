.. java:import:: java.lang.annotation ElementType

.. java:import:: java.lang.annotation Retention

.. java:import:: java.lang.annotation RetentionPolicy

.. java:import:: java.lang.annotation Target

CVariable
=========

.. java:package:: org.moe.natj.c.ann
   :noindex:

.. java:type:: @Retention @Target public @interface CVariable

   Annotation for C variables.

   Any native method marked by this annotation will be bound by NatJ as a getter or setter for a native global variable. If the name is not specified by the value, then the variable's name will be used for symbol lookup.

