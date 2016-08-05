.. java:import:: java.lang.annotation ElementType

.. java:import:: java.lang.annotation Retention

.. java:import:: java.lang.annotation RetentionPolicy

.. java:import:: java.lang.annotation Target

NotImplemented
==============

.. java:package:: org.moe.natj.objc.ann
   :noindex:

.. java:type:: @Retention @Target public @interface NotImplemented

   Mark a native dummy method that implements an interface method marked with \ :java:ref:`IsOptional`\  annotation to tell NatJ not to register the method.

