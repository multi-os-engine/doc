.. java:import:: org.moe.natj.general.ann Runtime

.. java:import:: org.moe.natj.objc ObjCRuntime

.. java:import:: java.lang.annotation ElementType

.. java:import:: java.lang.annotation Retention

.. java:import:: java.lang.annotation RetentionPolicy

.. java:import:: java.lang.annotation Target

ObjCClassName
=============

.. java:package:: org.moe.natj.objc.ann
   :noindex:

.. java:type:: @Runtime @Retention @Target public @interface ObjCClassName

   Mark a class with this annotation to specify the name of the Objective-C class that NatJ will generate.

   Without this annotation the Objective-C class name will be the same as the full name of the Java class in case of non-binding classes, otherwise it will be the same as the simple name.

