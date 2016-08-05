.. java:import:: org.moe.natj.c StructObject

VariadicArg
===========

.. java:package:: org.moe.natj.general
   :noindex:

.. java:type:: public class VariadicArg

   Wrapper class for variadic argument.

   Wrap a variadic argument with one of this class' children to force a specific conversion on it.

Fields
------
instance
^^^^^^^^

.. java:field:: protected Object instance
   :outertype: VariadicArg

Constructors
------------
VariadicArg
^^^^^^^^^^^

.. java:constructor:: protected VariadicArg(Object instance)
   :outertype: VariadicArg

Methods
-------
createBox
^^^^^^^^^

.. java:method:: public static BoxVariadicArg createBox(Object instance)
   :outertype: VariadicArg

   Creates a wrapper for explicit boxing.

   Boxing means boxed values will be left alone.

createByValue
^^^^^^^^^^^^^

.. java:method:: public static ByValueVariadicArg createByValue(StructObject s)
   :outertype: VariadicArg

   Creates a wrapper for explicit by-value structure.

   By-value means the structure is passed on the stack and not as a reference.

createMap
^^^^^^^^^

.. java:method:: public static MapVariadicArg createMap(Object instance, Class<? extends Mapper> mapper)
   :outertype: VariadicArg

   Creates a wrapper for explicit mapping.

createNFloat
^^^^^^^^^^^^

.. java:method:: public static NFloatVariadicArg createNFloat(Double d)
   :outertype: VariadicArg

   Creates a wrapper for explicit native word sized float.

createNInt
^^^^^^^^^^

.. java:method:: public static NIntVariadicArg createNInt(Long l)
   :outertype: VariadicArg

   Creates a wrapper for explicit native word sized signed integer.

createNLong
^^^^^^^^^^^

.. java:method:: public static NLongVariadicArg createNLong(Long l)
   :outertype: VariadicArg

   Creates a wrapper for explicit native signed long type.

createNUInt
^^^^^^^^^^^

.. java:method:: public static NUIntVariadicArg createNUInt(Long l)
   :outertype: VariadicArg

   Creates a wrapper for explicit native word sized unsigned integer.

createNULong
^^^^^^^^^^^^

.. java:method:: public static NULongVariadicArg createNULong(Long l)
   :outertype: VariadicArg

   Creates a wrapper for explicit native unsigned long type.

createUnbox
^^^^^^^^^^^

.. java:method:: public static UnboxVariadicArg createUnbox(Object instance)
   :outertype: VariadicArg

   Creates a wrapper for explicit unboxing.

   Boxing means boxed values will be unboxed.

createWCharT
^^^^^^^^^^^^

.. java:method:: public static WCharTVariadicArg createWCharT(Integer d)
   :outertype: VariadicArg

   Creates a wrapper for explicit native wchar_t type.

getInstance
^^^^^^^^^^^

.. java:method:: public Object getInstance()
   :outertype: VariadicArg

