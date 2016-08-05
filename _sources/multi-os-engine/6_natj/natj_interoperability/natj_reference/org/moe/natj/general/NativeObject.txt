NativeObject
============

.. java:package:: org.moe.natj.general
   :noindex:

.. java:type:: public class NativeObject

   The ascendant of every native object.

Constructors
------------
NativeObject
^^^^^^^^^^^^

.. java:constructor:: protected NativeObject(Pointer peer)
   :outertype: NativeObject

   Constructs a \ :java:ref:`NativeObject`\  from a \ :java:ref:`Pointer`\ .

   :param peer: The pointer pointing to the native peer.

Methods
-------
getPeer
^^^^^^^

.. java:method:: public final Pointer getPeer()
   :outertype: NativeObject

   Returns the native pointer.

   :return: The pointer

getPeerPointer
^^^^^^^^^^^^^^

.. java:method:: public final long getPeerPointer()
   :outertype: NativeObject

   Returns the native pointer's peer or 0.

   :return: the pointer's peer or 0

