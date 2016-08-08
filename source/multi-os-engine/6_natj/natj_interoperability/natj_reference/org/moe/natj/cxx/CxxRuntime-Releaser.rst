.. java:import:: org.moe.natj.cxx.impl ReferenceManager

.. java:import:: org.moe.natj.general NativeRuntime

.. java:import:: org.moe.natj.general Pointer

.. java:import:: org.moe.natj.general.ann NFloat

.. java:import:: org.moe.natj.general.ann NLong

.. java:import:: org.moe.natj.general.ann NULong

.. java:import:: org.moe.natj.general.ann WCharT

.. java:import:: org.moe.natj.general.ptr BoolPtr

.. java:import:: org.moe.natj.general.ptr BytePtr

.. java:import:: org.moe.natj.general.ptr CharPtr

.. java:import:: org.moe.natj.general.ptr ConstVoidPtr

.. java:import:: org.moe.natj.general.ptr DoublePtr

.. java:import:: org.moe.natj.general.ptr FloatPtr

.. java:import:: org.moe.natj.general.ptr IntPtr

.. java:import:: org.moe.natj.general.ptr LongPtr

.. java:import:: org.moe.natj.general.ptr NFloatPtr

.. java:import:: org.moe.natj.general.ptr NLongPtr

.. java:import:: org.moe.natj.general.ptr NULongPtr

.. java:import:: org.moe.natj.general.ptr ShortPtr

.. java:import:: org.moe.natj.general.ptr VoidPtr

.. java:import:: org.moe.natj.general.ptr WCharTPtr

.. java:import:: org.moe.natj.general.ptr.impl PtrFactory

.. java:import:: org.moe.natj.general.ptr.impl PtrImplementer

.. java:import:: java.lang.reflect Constructor

.. java:import:: java.lang.reflect Field

.. java:import:: java.lang.reflect InvocationTargetException

.. java:import:: java.lang.reflect Method

.. java:import:: java.util Collections

.. java:import:: java.util HashMap

.. java:import:: java.util Map

.. java:import:: java.util.concurrent.locks Lock

.. java:import:: java.util.concurrent.locks ReadWriteLock

.. java:import:: java.util.concurrent.locks ReentrantReadWriteLock

CxxRuntime.Releaser
===================

.. java:package:: org.moe.natj.cxx
   :noindex:

.. java:type:: public interface Releaser<T extends CxxObject>
   :outertype: CxxRuntime

   Interface for releasing C++ objects.

   :param <T>: Type to release

Methods
-------
release
^^^^^^^

.. java:method::  void release(T object)
   :outertype: CxxRuntime.Releaser

   Releases the object.

   :param object: Object to release

