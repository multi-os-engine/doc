.. java:import:: java.lang.annotation ElementType

.. java:import:: java.lang.annotation Inherited

.. java:import:: java.lang.annotation Retention

.. java:import:: java.lang.annotation RetentionPolicy

.. java:import:: java.lang.annotation Target

Structure
=========

.. java:package:: org.moe.natj.c.ann
   :noindex:

.. java:type:: @Inherited @Retention @Target public @interface Structure

   Annotation for C structures.

   Marking a class with this annotation will tell NatJ to handle the class as a C structure. The field alignment specifies the required alignment of the represented C structure, 0 means aligning is not required.

