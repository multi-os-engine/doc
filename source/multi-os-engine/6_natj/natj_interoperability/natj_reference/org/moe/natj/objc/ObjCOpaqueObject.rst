.. java:import:: org.moe.natj.general Pointer

.. java:import:: java.lang.reflect InvocationHandler

.. java:import:: java.lang.reflect Method

.. java:import:: java.lang.reflect Proxy

.. java:import:: java.util HashMap

ObjCOpaqueObject
================

.. java:package:: org.moe.natj.objc
   :noindex:

.. java:type:: public class ObjCOpaqueObject extends ObjCObject

Fields
------
proxies
^^^^^^^

.. java:field:: public HashMap<java.lang.Class<?>, Proxy> proxies
   :outertype: ObjCOpaqueObject

Constructors
------------
ObjCOpaqueObject
^^^^^^^^^^^^^^^^

.. java:constructor:: protected ObjCOpaqueObject(Pointer peer)
   :outertype: ObjCOpaqueObject

Methods
-------
createProtocolProxyHandler
^^^^^^^^^^^^^^^^^^^^^^^^^^

.. java:method:: public ProtocolProxyHandler createProtocolProxyHandler(HashMap<Method, Long> data)
   :outertype: ObjCOpaqueObject

