.. java:import:: org.moe.natj.c CRuntime

.. java:import:: org.moe.natj.c StructObject

.. java:import:: org.moe.natj.c.ann Structure

.. java:import:: org.moe.natj.general Pointer

.. java:import:: org.moe.natj.objc.ann Selector

.. java:import:: java.lang.reflect Method

.. java:import:: java.util HashMap

.. java:import:: java.util Map

SEL
===

.. java:package:: org.moe.natj.objc
   :noindex:

.. java:type:: @Structure public class SEL extends StructObject

   Objective-C SEL class.

Constructors
------------
SEL
^^^

.. java:constructor:: protected SEL(Pointer peer)
   :outertype: SEL

   Constructs a selector from a pointer.

   :param peer: Selector's pointer

SEL
^^^

.. java:constructor:: public SEL(String name)
   :outertype: SEL

   Constructs a selector by its name.

   :param name: Selector's name

SEL
^^^

.. java:constructor:: public SEL(Method method)
   :outertype: SEL

   Constructs a selector from a method.

   Works only with native methods marked with \ :java:ref:`Selector`\  annotation.

   :param method: Method marked with \ :java:ref:`Selector`\  annotation

Methods
-------
getSelectorString
^^^^^^^^^^^^^^^^^

.. java:method:: static String getSelectorString(Method method)
   :outertype: SEL

   Retrieves selector name from a native method with \ :java:ref:`Selector`\  annotation.

   :param method: Method marked with \ :java:ref:`Selector`\  annotation
   :return: Selector name

