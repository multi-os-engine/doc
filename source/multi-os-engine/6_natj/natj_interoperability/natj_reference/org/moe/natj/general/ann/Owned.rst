.. java:import:: java.lang.annotation ElementType

.. java:import:: java.lang.annotation Retention

.. java:import:: java.lang.annotation RetentionPolicy

.. java:import:: java.lang.annotation Target

Owned
=====

.. java:package:: org.moe.natj.general.ann
   :noindex:

.. java:type:: @Retention @Target public @interface Owned

   Mark a method or method argument to specify ownership.

   Marking a argument means that the owner of the value will be the callee. Marking a method means that the owner of the returned value will be the caller.

   For example, in the case of an Objective-C method this annotation will indicate that whether the method returns the object with only retaining or with retaining and auto-releasing it.

