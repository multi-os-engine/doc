.. java:import:: java.lang.annotation ElementType

.. java:import:: java.lang.annotation Retention

.. java:import:: java.lang.annotation RetentionPolicy

.. java:import:: java.lang.annotation Target

ProtocolClassMethod
===================

.. java:package:: org.moe.natj.objc.ann
   :noindex:

.. java:type:: @Retention @Target public @interface ProtocolClassMethod

   Annotation used for a workaround of Objective-C protocol class methods.

   Because Java does not support static methods in interfaces, static interface members will be bound by non-static methods with this annotation that specifies the original method names. In this way name collision can be avoided.

