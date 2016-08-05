CxxBindingObject
================

.. java:package:: org.moe.natj.cxx
   :noindex:

.. java:type:: public abstract class CxxBindingObject extends CxxObjectBaseImpl

   Abstract base class for all binding type objects.

Constructors
------------
CxxBindingObject
^^^^^^^^^^^^^^^^

.. java:constructor:: protected CxxBindingObject(long peer)
   :outertype: CxxBindingObject

   Creates an instance by passing the peer.

   :param peer: peer

Methods
-------
_cxx_rt_peer
^^^^^^^^^^^^

.. java:method:: public final long _cxx_rt_peer()
   :outertype: CxxBindingObject

   Returns the object's C++ peer.

   :return: C++ peer

_cxx_rt_swapPeer
^^^^^^^^^^^^^^^^

.. java:method:: @Override  long _cxx_rt_swapPeer(long newPeer)
   :outertype: CxxBindingObject

toString
^^^^^^^^

.. java:method:: @Override public String toString()
   :outertype: CxxBindingObject

