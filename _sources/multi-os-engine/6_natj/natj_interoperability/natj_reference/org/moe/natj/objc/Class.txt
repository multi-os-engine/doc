.. java:import:: org.moe.natj.c CRuntime

.. java:import:: org.moe.natj.general Pointer

.. java:import:: org.moe.natj.objc.ann ObjCClassBinding

.. java:import:: org.moe.natj.objc.ann ObjCClassName

.. java:import:: org.moe.natj.objc.ann ObjCProtocolName

.. java:import:: java.util HashMap

.. java:import:: java.util Map

Class
=====

.. java:package:: org.moe.natj.objc
   :noindex:

.. java:type:: public class Class extends ObjCObject

   Objective-C Class object.

Constructors
------------
Class
^^^^^

.. java:constructor:: protected Class(Pointer peer)
   :outertype: Class

   Constructs a Class from a pointer.

   :param peer: Pointer

Class
^^^^^

.. java:constructor:: public Class(ObjCObject obj)
   :outertype: Class

   Get the class from an \ :java:ref:`ObjCObject`\  and construct a Class from it.

   :param obj: Objective-C object

Class
^^^^^

.. java:constructor:: public Class(String name)
   :outertype: Class

   Construct a Class from a class name.

   :param name: Objective-C class name

Class
^^^^^

.. java:constructor:: public Class(String name, boolean isObjC)
   :outertype: Class

   Construct a Class from an Objective-C or Java class name.

   :param name: Objective-C or Java class name
   :param isObjC: Is Objective-C

Class
^^^^^

.. java:constructor:: public Class(java.lang.Class<? extends ObjCObject> clazz)
   :outertype: Class

   Constructs a respective Class from a Java class.

   :param clazz: Java class

Methods
-------
fromJavaClass
^^^^^^^^^^^^^

.. java:method:: public static Class fromJavaClass(java.lang.Class<? extends ObjCObject> clazz)
   :outertype: Class

   Returns the Objective-C pair of a Java class.

   :param clazz: Java class
   :return: Objective-C class

getObjCClassName
^^^^^^^^^^^^^^^^

.. java:method:: public static String getObjCClassName(java.lang.Class<? extends ObjCObject> type)
   :outertype: Class

   Gets Objective-C name for Java class.

   :param type: Java class
   :return: Objective-C class name

getSuper
^^^^^^^^

.. java:method:: public Class getSuper()
   :outertype: Class

   Returns the super class.

   :return: Objective-C superclass

