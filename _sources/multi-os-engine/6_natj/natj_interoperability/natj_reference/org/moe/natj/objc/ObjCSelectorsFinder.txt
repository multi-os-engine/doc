.. java:import:: org.moe.natj.general NativeObject

.. java:import:: org.moe.natj.objc.ann ObjCProtocolName

.. java:import:: org.moe.natj.objc.ann Selector

.. java:import:: java.lang Class

.. java:import:: java.lang.reflect Method

.. java:import:: java.lang.reflect Modifier

.. java:import:: java.util Arrays

.. java:import:: java.util HashMap

.. java:import:: java.util LinkedList

.. java:import:: java.util List

.. java:import:: java.util Map

ObjCSelectorsFinder
===================

.. java:package:: org.moe.natj.objc
   :noindex:

.. java:type:: public class ObjCSelectorsFinder

Fields
------
methodsWithSelectorsForClass
^^^^^^^^^^^^^^^^^^^^^^^^^^^^

.. java:field::  Map<Method, Selector> methodsWithSelectorsForClass
   :outertype: ObjCSelectorsFinder

Methods
-------
getSelectorForMethod
^^^^^^^^^^^^^^^^^^^^

.. java:method:: public Selector getSelectorForMethod(Method m)
   :outertype: ObjCSelectorsFinder

prepareParentsSelectorsList
^^^^^^^^^^^^^^^^^^^^^^^^^^^

.. java:method:: public void prepareParentsSelectorsList(Class<?> inputClass)
   :outertype: ObjCSelectorsFinder

