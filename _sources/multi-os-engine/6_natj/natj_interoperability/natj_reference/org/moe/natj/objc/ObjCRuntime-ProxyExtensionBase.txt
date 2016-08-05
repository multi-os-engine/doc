.. java:import:: org.moe.natj.c OpaquePtr

.. java:import:: org.moe.natj.c.ann Variadic

.. java:import:: org.moe.natj.general NatJ

.. java:import:: org.moe.natj.general NatJ.JavaObjectConstructionInfo

.. java:import:: org.moe.natj.general NativeRuntime

.. java:import:: org.moe.natj.general Pointer

.. java:import:: org.moe.natj.general Pointer.Releaser

.. java:import:: org.moe.natj.objc.ann ObjCBlock

.. java:import:: org.moe.natj.objc.ann ObjCCategory

.. java:import:: org.moe.natj.objc.ann ObjCProtocolName

.. java:import:: org.moe.natj.objc.map ObjCCallbackMapper

.. java:import:: org.moe.natj.objc.map ObjCObjectMapper

.. java:import:: org.moe.natj.objc.map ObjCStringMapper

.. java:import:: java.io PrintWriter

.. java:import:: java.io StringWriter

.. java:import:: java.lang.annotation Annotation

.. java:import:: java.lang.reflect Method

.. java:import:: java.util Arrays

.. java:import:: java.util HashMap

.. java:import:: java.util HashSet

.. java:import:: java.util LinkedList

.. java:import:: java.util List

.. java:import:: java.util Map

.. java:import:: java.util Set

.. java:import:: java.util SortedMap

.. java:import:: java.util TreeMap

.. java:import:: java.util.concurrent Callable

ObjCRuntime.ProxyExtensionBase
==============================

.. java:package:: org.moe.natj.objc
   :noindex:

.. java:type:: public static class ProxyExtensionBase<T>
   :outertype: ObjCRuntime

   Base type for extra selector implementations for proxies.

Fields
------
target
^^^^^^

.. java:field:: protected T target
   :outertype: ObjCRuntime.ProxyExtensionBase

   Specifies the target object.

Constructors
------------
ProxyExtensionBase
^^^^^^^^^^^^^^^^^^

.. java:constructor:: public ProxyExtensionBase(Object target)
   :outertype: ObjCRuntime.ProxyExtensionBase

   Single constructor that requires only the target object.

