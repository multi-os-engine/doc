Pointer
=======

.. java:package:: org.moe.natj.general
   :noindex:

.. java:type:: public class Pointer

   Pointer class to handle pointers.

   Have automatic cleanup with using \ :java:ref:`releasers <Releaser>`\ .

Constructors
------------
Pointer
^^^^^^^

.. java:constructor:: public Pointer(long peer, Releaser releaser)
   :outertype: Pointer

   Constructs a \ :java:ref:`Pointer`\  object for a native pointer with a given releaser.

   :param peer: The native peer pointer.
   :param releaser: The releaser instance responsible for cleanup after this object has been collected by the GC.

Pointer
^^^^^^^

.. java:constructor:: public Pointer(long peer)
   :outertype: Pointer

   Constructs a \ :java:ref:`Pointer`\  object for a native pointer without releaser.

   :param peer: The native peer pointer.

Methods
-------
equals
^^^^^^

.. java:method:: @Override public boolean equals(Object object)
   :outertype: Pointer

   Returns true if the peers are pointing to the same memory space.

finalize
^^^^^^^^

.. java:method:: protected void finalize()
   :outertype: Pointer

   Invokes the \ :java:ref:`releaser <releaser>`\ 's \ :java:ref:`Releaser.release(long)`\  method.

getPeer
^^^^^^^

.. java:method:: public long getPeer()
   :outertype: Pointer

   Returns the native pointer.

   :return: The native peer pointer.

hasReleaser
^^^^^^^^^^^

.. java:method:: public boolean hasReleaser()
   :outertype: Pointer

   Return true if the pointer has a releaser.

   :return: true when releaser is set

setPeer
^^^^^^^

.. java:method:: public void setPeer(long peer)
   :outertype: Pointer

   Sets the native pointer.

   :param peer: The native peer pointer.

