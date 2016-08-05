NativeException
===============

.. java:package:: org.moe.natj.general
   :noindex:

.. java:type:: public abstract class NativeException extends RuntimeException

   Abstract native exception class.

   Implement this to support new kinds of native exceptions.

Fields
------
peer
^^^^

.. java:field:: protected NativeObject peer
   :outertype: NativeException

   The native exception itself.

Constructors
------------
NativeException
^^^^^^^^^^^^^^^

.. java:constructor:: protected NativeException(NativeObject peer)
   :outertype: NativeException

   Construct a \ :java:ref:`NativeException`\  object from a native exception.

   :param peer: The native peer of the exception.

Methods
-------
getMessage
^^^^^^^^^^

.. java:method:: public abstract String getMessage()
   :outertype: NativeException

   Returns the description of the exception.

   :return: The description of the exception.

getNativeException
^^^^^^^^^^^^^^^^^^

.. java:method:: public NativeObject getNativeException()
   :outertype: NativeException

   Returns the native exception.

   :return: The native exception.

