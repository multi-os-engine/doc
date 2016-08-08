.. java:import:: org.moe.natj.general NatJ

.. java:import:: org.moe.natj.general Pointer

.. java:import:: org.moe.natj.objc.map ObjCCallbackMapper

BlockObject
===========

.. java:package:: org.moe.natj.objc
   :noindex:

.. java:type:: public class BlockObject extends ObjCObject

   Wrapper class used for wrapping callbacks.

   A wrapped callback can be used like an Objective-C block code.

Constructors
------------
BlockObject
^^^^^^^^^^^

.. java:constructor:: protected BlockObject(Pointer peer)
   :outertype: BlockObject

   Construct a block object from a pointer.

   :param peer: Block pointer

Methods
-------
wrap
^^^^

.. java:method:: public static BlockObject wrap(Object callback, String name)
   :outertype: BlockObject

   Wraps an instance as a callback.

   :param callback: The instance we want to wrap
   :param name: The name specifies the method
   :return: The constructed block object

wrap
^^^^

.. java:method:: public static BlockObject wrap(Object callback, String name, java.lang.Class<?>[] argTypes)
   :outertype: BlockObject

   Wraps an instance as a callback.

   :param callback: The instance we want to wrap
   :param name: The method name specifies the method
   :param argTypes: The method argument types specifies the method
   :return: The constructed block object

wrap
^^^^

.. java:method:: public static BlockObject wrap(Object callback)
   :outertype: BlockObject

   Wraps an instance as a callback.

   :param callback: The instance we want to wrap
   :return: The constructed block object

