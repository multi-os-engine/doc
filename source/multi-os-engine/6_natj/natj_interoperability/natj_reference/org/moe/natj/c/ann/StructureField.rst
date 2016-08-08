.. java:import:: java.lang.annotation ElementType

.. java:import:: java.lang.annotation Retention

.. java:import:: java.lang.annotation RetentionPolicy

.. java:import:: java.lang.annotation Target

StructureField
==============

.. java:package:: org.moe.natj.c.ann
   :noindex:

.. java:type:: @Retention @Target public @interface StructureField

   Annotation for C structure field getters and setters.

   Marking a native method with this annotation will tell NatJ to handle the method as a structure field getter or setter. This annotation only affects classes with the \ :java:ref:`org.moe.natj.c.ann.Structure`\  annotation.

