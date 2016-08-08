.. java:import:: org.moe.natj.general Pointer

.. java:import:: java.lang.reflect InvocationHandler

.. java:import:: java.lang.reflect Method

.. java:import:: java.lang.reflect Proxy

.. java:import:: java.util HashMap

ObjCOpaqueObject.ProtocolProxyHandler
=====================================

.. java:package:: org.moe.natj.objc
   :noindex:

.. java:type:: public class ProtocolProxyHandler implements InvocationHandler
   :outertype: ObjCOpaqueObject

Fields
------
data
^^^^

.. java:field:: public HashMap<Method, Long> data
   :outertype: ObjCOpaqueObject.ProtocolProxyHandler

Constructors
------------
ProtocolProxyHandler
^^^^^^^^^^^^^^^^^^^^

.. java:constructor:: protected ProtocolProxyHandler(HashMap<Method, Long> data)
   :outertype: ObjCOpaqueObject.ProtocolProxyHandler

Methods
-------
getHolder
^^^^^^^^^

.. java:method:: public ObjCOpaqueObject getHolder()
   :outertype: ObjCOpaqueObject.ProtocolProxyHandler

invoke
^^^^^^

.. java:method:: @Override public Object invoke(Object proxy, Method method, Object[] args)
   :outertype: ObjCOpaqueObject.ProtocolProxyHandler

