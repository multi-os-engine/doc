.. java:import:: org.moe.natj.general NativeObject

.. java:import:: org.moe.natj.general Pointer

.. java:import:: org.moe.natj.general.ann Runtime

StructObject
============

.. java:package:: org.moe.natj.c
   :noindex:

.. java:type:: @Runtime public class StructObject extends NativeObject

   StructObject the ascendant of every structure.

Constructors
------------
StructObject
^^^^^^^^^^^^

.. java:constructor:: protected StructObject(Pointer peer)
   :outertype: StructObject

   StructObject constructor.

   Uses the parameter \ ``peer``\  as peer.

   :param peer: Pointer to the front of the structure

StructObject
^^^^^^^^^^^^

.. java:constructor:: protected StructObject(Class<? extends StructObject> type)
   :outertype: StructObject

   StructObject constructor.

   Allocates space for \ ``type``\  and use it as peer.

   :param type: The Java class of the structure to allocate

