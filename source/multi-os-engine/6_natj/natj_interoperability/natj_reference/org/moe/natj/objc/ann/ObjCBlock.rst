.. java:import:: org.moe.natj.general.ann Callable

.. java:import:: org.moe.natj.general.ann Runtime

.. java:import:: org.moe.natj.objc ObjCRuntime

.. java:import:: java.lang.annotation ElementType

.. java:import:: java.lang.annotation Retention

.. java:import:: java.lang.annotation RetentionPolicy

.. java:import:: java.lang.annotation Target

ObjCBlock
=========

.. java:package:: org.moe.natj.objc.ann
   :noindex:

.. java:type:: @Callable @Runtime @Retention @Target public @interface ObjCBlock

   Mark a native method or one of its argument to tell NatJ the value an Objective-C block.

   NatJ will lookup a method by the \ :java:ref:`name()`\  and \ :java:ref:`argTypes()`\ .

