.. java:import:: java.util Collections

.. java:import:: java.util Set

.. java:import:: java.util.concurrent ConcurrentHashMap

CxxInheritedObject
==================

.. java:package:: org.moe.natj.cxx
   :noindex:

.. java:type:: public class CxxInheritedObject extends CxxObjectBaseImpl

   Abstract base class for all inherited type objects.

Constructors
------------
CxxInheritedObject
^^^^^^^^^^^^^^^^^^

.. java:constructor:: protected CxxInheritedObject(ICxxConstructor constructor)
   :outertype: CxxInheritedObject

   Creates a new CxxInheritedObject instance.

   :param constructor: Constructor instance

Methods
-------
_cxx_rt_delete
^^^^^^^^^^^^^^

.. java:method:: @Override public void _cxx_rt_delete()
   :outertype: CxxInheritedObject

_cxx_rt_peer
^^^^^^^^^^^^

.. java:method:: @Override public long _cxx_rt_peer()
   :outertype: CxxInheritedObject

_cxx_rt_release_java
^^^^^^^^^^^^^^^^^^^^

.. java:method:: public final void _cxx_rt_release_java()
   :outertype: CxxInheritedObject

   Releases the Java part of this object.

_cxx_rt_swapPeer
^^^^^^^^^^^^^^^^

.. java:method:: @Override  long _cxx_rt_swapPeer(long newPeer)
   :outertype: CxxInheritedObject

