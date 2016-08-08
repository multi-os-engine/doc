.. java:import:: org.moe.natj.general.ann Runtime

.. java:import:: org.moe.natj.objc ObjCRuntime

.. java:import:: java.lang.annotation ElementType

.. java:import:: java.lang.annotation Retention

.. java:import:: java.lang.annotation RetentionPolicy

.. java:import:: java.lang.annotation Target

ObjCProtocolName
================

.. java:package:: org.moe.natj.objc.ann
   :noindex:

.. java:type:: @Runtime @Retention @Target public @interface ObjCProtocolName

   Mark an interface with this to tell NatJ to handle the interface as an Objective-C protocol.

   Implementing an interface with this annotation will affect how NatJ creates inherited or proxy classes. The runtime created classes that created from Java classes implementing interfaces with the annotation will conform the Objective-C protocols with the names given by the annotation. If one creates an Objective-C binding, inherited or proxy class, then interfaces without this annotation will be ignored.

   If a native protocol gets removed by the compiler's optimization, then the protocol will be ignored.

