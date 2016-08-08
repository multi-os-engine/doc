.. java:import:: org.moe.natj.c CRuntime

.. java:import:: org.moe.natj.general Pointer

WeakReference
=============

.. java:package:: org.moe.natj.objc
   :noindex:

.. java:type:: public class WeakReference

   Objective-C weak reference holder, used for weak pointers.

Constructors
------------
WeakReference
^^^^^^^^^^^^^

.. java:constructor:: public WeakReference(long object)
   :outertype: WeakReference

   Creates an weak reference to an Objective-C object.

   :param object: The object object to which we want to make the weak reference

Methods
-------
finalize
^^^^^^^^

.. java:method:: protected void finalize()
   :outertype: WeakReference

   Cleans up after the weak reference.

getNativePeer
^^^^^^^^^^^^^

.. java:method:: public long getNativePeer()
   :outertype: WeakReference

   Tries to load a strong reference to the Objective-C object.

   It does no releasing, so you have to do it manually.

   :return: Weak referenced object pointer

getPeer
^^^^^^^

.. java:method:: public Pointer getPeer()
   :outertype: WeakReference

   Tries to load a strong reference to the Objective-C object.

   :return: Strong referenced object pointer loaded by Objective-C runtime

