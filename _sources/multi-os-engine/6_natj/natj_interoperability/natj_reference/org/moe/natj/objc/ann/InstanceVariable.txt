.. java:import:: java.lang.annotation ElementType

.. java:import:: java.lang.annotation Retention

.. java:import:: java.lang.annotation RetentionPolicy

.. java:import:: java.lang.annotation Target

InstanceVariable
================

.. java:package:: org.moe.natj.objc.ann
   :noindex:

.. java:type:: @Retention @Target public @interface InstanceVariable

   Annotation for Objective-C instance variable getters and setters.

   Marking a native method with this annotation will tell NatJ to handle the method as an instance variable getter or setter.

