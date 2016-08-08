CxxObjectBaseImpl
=================

.. java:package:: org.moe.natj.cxx
   :noindex:

.. java:type:: public abstract class CxxObjectBaseImpl implements CxxObject

   Base class for all C++ classes.

Methods
-------
_cxx_rt_delete2
^^^^^^^^^^^^^^^

.. java:method:: final synchronized void _cxx_rt_delete2()
   :outertype: CxxObjectBaseImpl

   Invokes the _cxx_rt_delete method and invalidates the native peer.

_cxx_rt_invalidate
^^^^^^^^^^^^^^^^^^

.. java:method:: final void _cxx_rt_invalidate()
   :outertype: CxxObjectBaseImpl

   Invalidates the native peer.

_cxx_rt_swapPeer
^^^^^^^^^^^^^^^^

.. java:method:: abstract long _cxx_rt_swapPeer(long newPeer)
   :outertype: CxxObjectBaseImpl

   Swaps the current peer with the specified.

   :param newPeer: New peer
   :return: Old peer

cxxGetDirectInterface
^^^^^^^^^^^^^^^^^^^^^

.. java:method:: @Override public final <T extends CxxObject> T cxxGetDirectInterface(Class<T> cls)
   :outertype: CxxObjectBaseImpl

cxxGetUnsafeDirectInterface
^^^^^^^^^^^^^^^^^^^^^^^^^^^

.. java:method:: @Override public final <T extends CxxObject> T cxxGetUnsafeDirectInterface(Class<T> cls)
   :outertype: CxxObjectBaseImpl

cxxGetUnsafeImplInterface
^^^^^^^^^^^^^^^^^^^^^^^^^

.. java:method:: @Override public final <T extends CxxObject> T cxxGetUnsafeImplInterface(Class<T> cls)
   :outertype: CxxObjectBaseImpl

cxxIsConstInterface
^^^^^^^^^^^^^^^^^^^

.. java:method:: @Override public final boolean cxxIsConstInterface()
   :outertype: CxxObjectBaseImpl

cxxIsDirectInterface
^^^^^^^^^^^^^^^^^^^^

.. java:method:: @Override public boolean cxxIsDirectInterface()
   :outertype: CxxObjectBaseImpl

cxxIsIdenticalTo
^^^^^^^^^^^^^^^^

.. java:method:: @Override public final boolean cxxIsIdenticalTo(Object other)
   :outertype: CxxObjectBaseImpl

