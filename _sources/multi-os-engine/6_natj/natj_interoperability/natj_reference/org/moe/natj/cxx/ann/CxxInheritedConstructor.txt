.. java:import:: java.lang.annotation ElementType

.. java:import:: java.lang.annotation Retention

.. java:import:: java.lang.annotation RetentionPolicy

.. java:import:: java.lang.annotation Target

CxxInheritedConstructor
=======================

.. java:package:: org.moe.natj.cxx.ann
   :noindex:

.. java:type:: @Retention @Target public @interface CxxInheritedConstructor

   Marks a static method as being a constructor of an inherited class. Such methods must be static, the return type must be long, it must have at least one parameter and the first parameter's type must be long. All following parameters will be passed to the parent's constructor.

