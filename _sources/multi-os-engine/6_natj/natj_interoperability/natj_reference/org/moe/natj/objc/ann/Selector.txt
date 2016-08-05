.. java:import:: org.moe.natj.general.ann Runtime

.. java:import:: org.moe.natj.objc ObjCRuntime

.. java:import:: java.lang.annotation ElementType

.. java:import:: java.lang.annotation Retention

.. java:import:: java.lang.annotation RetentionPolicy

.. java:import:: java.lang.annotation Target

Selector
========

.. java:package:: org.moe.natj.objc.ann
   :noindex:

.. java:type:: @Runtime @Retention @Target public @interface Selector

   Mark a native method with this annotation to tell NatJ that which selectors the method responds to.

   Only native methods with this annotation will be registered in the runtime created Objective-C classes by NatJ.

