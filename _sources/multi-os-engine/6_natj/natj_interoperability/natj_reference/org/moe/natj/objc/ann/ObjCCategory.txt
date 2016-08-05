.. java:import:: org.moe.natj.general.ann Runtime

.. java:import:: org.moe.natj.objc ObjCObject

.. java:import:: org.moe.natj.objc ObjCRuntime

.. java:import:: java.lang.annotation ElementType

.. java:import:: java.lang.annotation Retention

.. java:import:: java.lang.annotation RetentionPolicy

.. java:import:: java.lang.annotation Target

ObjCCategory
============

.. java:package:: org.moe.natj.objc.ann
   :noindex:

.. java:type:: @Runtime @Retention @Target public @interface ObjCCategory

   Mark a class with this to tell NatJ to handle the class as an Objective-C category.

   The first argument of non-class category methods have to be the object we want to send the message to. Class methods have to be marked with the \ :java:ref:`CategoryClassMethod`\  annotation.

