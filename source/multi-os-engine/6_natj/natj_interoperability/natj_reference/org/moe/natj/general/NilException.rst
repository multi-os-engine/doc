NilException
============

.. java:package:: org.moe.natj.general
   :noindex:

.. java:type:: public class NilException extends NativeException

   Nil exception used for handling native nil exceptions.

Constructors
------------
NilException
^^^^^^^^^^^^

.. java:constructor:: protected NilException()
   :outertype: NilException

   Construct a nil reference with a null pointer.

Methods
-------
getMessage
^^^^^^^^^^

.. java:method:: @Override public String getMessage()
   :outertype: NilException

   Returns \ ``"NIL"``\  as a description.

