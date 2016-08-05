.. java:import:: java.util.concurrent.atomic AtomicLong

ObjCAutoreleasePool
===================

.. java:package:: org.moe.natj.objc
   :noindex:

.. java:type:: public class ObjCAutoreleasePool implements AutoCloseable

   A utility class for using NSAutoreleasePools.

Constructors
------------
ObjCAutoreleasePool
^^^^^^^^^^^^^^^^^^^

.. java:constructor:: public ObjCAutoreleasePool()
   :outertype: ObjCAutoreleasePool

   Create a new autorelease pool.

Methods
-------
close
^^^^^

.. java:method:: @Override public void close() throws Exception
   :outertype: ObjCAutoreleasePool

drain
^^^^^

.. java:method:: public void drain()
   :outertype: ObjCAutoreleasePool

   Releases all objects int this pool.

release
^^^^^^^

.. java:method:: public void release()
   :outertype: ObjCAutoreleasePool

   Releases all objects int this pool.

