.. java:import:: org.moe.natj.general NativeException

ObjCException
=============

.. java:package:: org.moe.natj.objc
   :noindex:

.. java:type:: public class ObjCException extends NativeException

   Objective-C exception class.

Constructors
------------
ObjCException
^^^^^^^^^^^^^

.. java:constructor:: public ObjCException(ObjCObject peer)
   :outertype: ObjCException

   Constructs an exception from an ObjCObject.

   :param peer: Objective-C object pointer

Methods
-------
getMessage
^^^^^^^^^^

.. java:method:: @Override public String getMessage()
   :outertype: ObjCException

   Returns the Objective-C object description as exception message.

   :return: Exception description

