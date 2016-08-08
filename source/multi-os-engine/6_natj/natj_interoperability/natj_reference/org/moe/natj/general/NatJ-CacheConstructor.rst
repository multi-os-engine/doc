.. java:import:: org.moe.natj.c CRuntime

.. java:import:: org.moe.natj.c.ann Variadic

.. java:import:: org.moe.natj.general.ann Library

.. java:import:: org.moe.natj.general.ann Runtime

.. java:import:: org.moe.natj.general.map ReferenceMapper

.. java:import:: org.moe.natj.general.ptr ConstVoidPtr

.. java:import:: java.io File

.. java:import:: java.io IOException

.. java:import:: java.lang.annotation Annotation

.. java:import:: java.lang.ref WeakReference

.. java:import:: java.lang.reflect Constructor

.. java:import:: java.lang.reflect Field

.. java:import:: java.lang.reflect Method

.. java:import:: java.util Arrays

.. java:import:: java.util HashMap

.. java:import:: java.util HashSet

.. java:import:: java.util Map

.. java:import:: java.util Properties

.. java:import:: java.util Set

.. java:import:: java.util.concurrent ConcurrentHashMap

NatJ.CacheConstructor
=====================

.. java:package:: org.moe.natj.general
   :noindex:

.. java:type:: public interface CacheConstructor
   :outertype: NatJ

   Interface used for cache construction through the NatJ interface.

Methods
-------
constructCache
^^^^^^^^^^^^^^

.. java:method:: public Object constructCache()
   :outertype: NatJ.CacheConstructor

