.. java:import:: java.util Collections

.. java:import:: java.util Set

.. java:import:: java.util.concurrent ConcurrentHashMap

CxxInheritedObject.ICxxConstructor
==================================

.. java:package:: org.moe.natj.cxx
   :noindex:

.. java:type:: public interface ICxxConstructor
   :outertype: CxxInheritedObject

   Native constructor interface.

Methods
-------
construct
^^^^^^^^^

.. java:method::  long construct(long javaReference)
   :outertype: CxxInheritedObject.ICxxConstructor

   Constructs the native object with the specified Java reference.

   :param javaReference: Java object UID
   :return: Native peer

