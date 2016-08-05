.. java:import:: org.moe.natj.c CRuntime

.. java:import:: org.moe.natj.general NativeObject

.. java:import:: org.moe.natj.general Pointer

.. java:import:: org.moe.natj.general.ann Runtime

.. java:import:: org.moe.natj.objc.ann ObjCClassBinding

ObjCObject
==========

.. java:package:: org.moe.natj.objc
   :noindex:

.. java:type:: @Runtime public class ObjCObject extends NativeObject

   The Ascendant of every Objective-C native object.

   Inherit from this class or NSObject to define a binding, inherited or a hybrid class. Binding classes are used to bind native classes without doing any modifications against them. Inherited classes are created by JVM, and every implementation in them is implemented in Java. Hybrid classes are created in Objective-C runtime side but they can have Java implementations injected into them.

   Binding mode will be in use if the class is marked with the \ :java:ref:`ObjCClassBinding`\  annotation Hybrid mode will be in use if we are defining a class with a name that is already taken by an existing native Objective-C class. Otherwise, inherited mode will be used.

   Note: Hidden implementations in Objective-C class of hybrid classes is not supported and they won't be invoked by NatJ at all.

Constructors
------------
ObjCObject
^^^^^^^^^^

.. java:constructor:: protected ObjCObject(Pointer peer)
   :outertype: ObjCObject

   Construct an Objective-C object from a pointer.

   :param peer: Objective-C object pointer

Methods
-------
equals
^^^^^^

.. java:method:: @Override public boolean equals(Object obj)
   :outertype: ObjCObject

isEqual
^^^^^^^

.. java:method:: public boolean isEqual(Object obj)
   :outertype: ObjCObject

   Objective-C's isEqual method.

   :param obj: object to compare with
   :return: true if equals, otherwise false

toString
^^^^^^^^

.. java:method:: @Override public String toString()
   :outertype: ObjCObject

   Returns the Objective-C object description.

   :return: Object description

