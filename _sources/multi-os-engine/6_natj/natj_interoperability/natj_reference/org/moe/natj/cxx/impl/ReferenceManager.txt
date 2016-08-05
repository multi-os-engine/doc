.. java:import:: java.lang.ref ReferenceQueue

.. java:import:: java.lang.ref WeakReference

.. java:import:: java.util HashMap

.. java:import:: java.util.concurrent.atomic AtomicBoolean

ReferenceManager
================

.. java:package:: org.moe.natj.cxx.impl
   :noindex:

.. java:type:: public class ReferenceManager

Constructors
------------
ReferenceManager
^^^^^^^^^^^^^^^^

.. java:constructor:: public ReferenceManager()
   :outertype: ReferenceManager

Methods
-------
get
^^^

.. java:method:: public Object get(long id)
   :outertype: ReferenceManager

objectCount
^^^^^^^^^^^

.. java:method:: public int objectCount()
   :outertype: ReferenceManager

put
^^^

.. java:method:: public long put(Object obj)
   :outertype: ReferenceManager

