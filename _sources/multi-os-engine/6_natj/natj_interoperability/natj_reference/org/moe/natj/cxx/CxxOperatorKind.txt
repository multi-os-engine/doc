CxxOperatorKind
===============

.. java:package:: org.moe.natj.cxx
   :noindex:

.. java:type:: public enum CxxOperatorKind

Enum Constants
--------------
ADD
^^^

.. java:field:: public static final CxxOperatorKind ADD
   :outertype: CxxOperatorKind

   C++ equivalent: operator+(T rhs)

ADDRESS_OF
^^^^^^^^^^

.. java:field:: public static final CxxOperatorKind ADDRESS_OF
   :outertype: CxxOperatorKind

   C++ equivalent: operator&()

ADD_ASSIGN
^^^^^^^^^^

.. java:field:: public static final CxxOperatorKind ADD_ASSIGN
   :outertype: CxxOperatorKind

   C++ equivalent: operator+=(T rhs)

ARROW
^^^^^

.. java:field:: public static final CxxOperatorKind ARROW
   :outertype: CxxOperatorKind

   C++ equivalent: operator->(T rhs)

ASSIGN
^^^^^^

.. java:field:: public static final CxxOperatorKind ASSIGN
   :outertype: CxxOperatorKind

   C++ equivalent: operator=(T rhs)

BITWISE_AND
^^^^^^^^^^^

.. java:field:: public static final CxxOperatorKind BITWISE_AND
   :outertype: CxxOperatorKind

   C++ equivalent: operator&(T rhs)

BITWISE_AND_ASSIGN
^^^^^^^^^^^^^^^^^^

.. java:field:: public static final CxxOperatorKind BITWISE_AND_ASSIGN
   :outertype: CxxOperatorKind

   C++ equivalent: operator&=(T rhs)

BITWISE_OR
^^^^^^^^^^

.. java:field:: public static final CxxOperatorKind BITWISE_OR
   :outertype: CxxOperatorKind

   C++ equivalent: operator|(T rhs)

BITWISE_OR_ASSIGN
^^^^^^^^^^^^^^^^^

.. java:field:: public static final CxxOperatorKind BITWISE_OR_ASSIGN
   :outertype: CxxOperatorKind

   C++ equivalent: operator|=(T rhs)

BITWISE_XOR
^^^^^^^^^^^

.. java:field:: public static final CxxOperatorKind BITWISE_XOR
   :outertype: CxxOperatorKind

   C++ equivalent: operator^(T rhs)

BITWISE_XOR_ASSIGN
^^^^^^^^^^^^^^^^^^

.. java:field:: public static final CxxOperatorKind BITWISE_XOR_ASSIGN
   :outertype: CxxOperatorKind

   C++ equivalent: operator^=(T rhs)

COMPLEMENT
^^^^^^^^^^

.. java:field:: public static final CxxOperatorKind COMPLEMENT
   :outertype: CxxOperatorKind

   C++ equivalent: operator~()

DIVIDE
^^^^^^

.. java:field:: public static final CxxOperatorKind DIVIDE
   :outertype: CxxOperatorKind

   C++ equivalent: operator/(T rhs)

DIVIDE_ASSIGN
^^^^^^^^^^^^^

.. java:field:: public static final CxxOperatorKind DIVIDE_ASSIGN
   :outertype: CxxOperatorKind

   C++ equivalent: operator/=(T rhs)

EQUAL
^^^^^

.. java:field:: public static final CxxOperatorKind EQUAL
   :outertype: CxxOperatorKind

   C++ equivalent: operator==(T rhs)

EXT_SUBSCRIPT_ASSIGN
^^^^^^^^^^^^^^^^^^^^

.. java:field:: public static final CxxOperatorKind EXT_SUBSCRIPT_ASSIGN
   :outertype: CxxOperatorKind

   Subscript operator extension. Allows for the following code to have a cleaner binding: C++ code: vector[idx] = value; Java method: T set(I idx, T value);

FUNCTION_CALL
^^^^^^^^^^^^^

.. java:field:: public static final CxxOperatorKind FUNCTION_CALL
   :outertype: CxxOperatorKind

   C++ equivalent: operator()(...)

GREATER
^^^^^^^

.. java:field:: public static final CxxOperatorKind GREATER
   :outertype: CxxOperatorKind

   C++ equivalent: operator>(T rhs)

GREATER_EQUAL
^^^^^^^^^^^^^

.. java:field:: public static final CxxOperatorKind GREATER_EQUAL
   :outertype: CxxOperatorKind

   C++ equivalent: operator>=(T rhs)

INDIRECT
^^^^^^^^

.. java:field:: public static final CxxOperatorKind INDIRECT
   :outertype: CxxOperatorKind

   C++ equivalent: operator*()

INEQUAL
^^^^^^^

.. java:field:: public static final CxxOperatorKind INEQUAL
   :outertype: CxxOperatorKind

   C++ equivalent: operator!=(T rhs)

LEFT_SHIFT
^^^^^^^^^^

.. java:field:: public static final CxxOperatorKind LEFT_SHIFT
   :outertype: CxxOperatorKind

   C++ equivalent: operator

LEFT_SHIFT_ASSIGN
^^^^^^^^^^^^^^^^^

.. java:field:: public static final CxxOperatorKind LEFT_SHIFT_ASSIGN
   :outertype: CxxOperatorKind

   C++ equivalent: operator

LESS
^^^^

.. java:field:: public static final CxxOperatorKind LESS
   :outertype: CxxOperatorKind

   C++ equivalent: operator

LESS_EQUAL
^^^^^^^^^^

.. java:field:: public static final CxxOperatorKind LESS_EQUAL
   :outertype: CxxOperatorKind

   C++ equivalent: operator

LOGICAL_AND
^^^^^^^^^^^

.. java:field:: public static final CxxOperatorKind LOGICAL_AND
   :outertype: CxxOperatorKind

   C++ equivalent: operator&&(T rhs)

LOGICAL_OR
^^^^^^^^^^

.. java:field:: public static final CxxOperatorKind LOGICAL_OR
   :outertype: CxxOperatorKind

   C++ equivalent: operator||(T rhs)

MODULUS
^^^^^^^

.. java:field:: public static final CxxOperatorKind MODULUS
   :outertype: CxxOperatorKind

   C++ equivalent: operator%(T rhs)

MODULUS_ASSIGN
^^^^^^^^^^^^^^

.. java:field:: public static final CxxOperatorKind MODULUS_ASSIGN
   :outertype: CxxOperatorKind

   C++ equivalent: operator%=(T rhs)

MULTIPLY
^^^^^^^^

.. java:field:: public static final CxxOperatorKind MULTIPLY
   :outertype: CxxOperatorKind

   C++ equivalent: operator*(T rhs)

MULTIPLY_ASSIGN
^^^^^^^^^^^^^^^

.. java:field:: public static final CxxOperatorKind MULTIPLY_ASSIGN
   :outertype: CxxOperatorKind

   C++ equivalent: operator*=(T rhs)

NEGATE
^^^^^^

.. java:field:: public static final CxxOperatorKind NEGATE
   :outertype: CxxOperatorKind

   C++ equivalent: operator!()

POST_DECREMENT
^^^^^^^^^^^^^^

.. java:field:: public static final CxxOperatorKind POST_DECREMENT
   :outertype: CxxOperatorKind

   C++ equivalent: operator--(int)

POST_INCREMENT
^^^^^^^^^^^^^^

.. java:field:: public static final CxxOperatorKind POST_INCREMENT
   :outertype: CxxOperatorKind

   C++ equivalent: operator++(int)

PRE_DECREMENT
^^^^^^^^^^^^^

.. java:field:: public static final CxxOperatorKind PRE_DECREMENT
   :outertype: CxxOperatorKind

   C++ equivalent: operator--()

PRE_INCREMENT
^^^^^^^^^^^^^

.. java:field:: public static final CxxOperatorKind PRE_INCREMENT
   :outertype: CxxOperatorKind

   C++ equivalent: operator++()

RIGHT_SHIFT
^^^^^^^^^^^

.. java:field:: public static final CxxOperatorKind RIGHT_SHIFT
   :outertype: CxxOperatorKind

   C++ equivalent: operator>>(T rhs)

RIGHT_SHIFT_ASSIGN
^^^^^^^^^^^^^^^^^^

.. java:field:: public static final CxxOperatorKind RIGHT_SHIFT_ASSIGN
   :outertype: CxxOperatorKind

   C++ equivalent: operator>>=(T rhs)

SUBSCRIPT
^^^^^^^^^

.. java:field:: public static final CxxOperatorKind SUBSCRIPT
   :outertype: CxxOperatorKind

   C++ equivalent: operator[](T rhs)

SUBTRACT
^^^^^^^^

.. java:field:: public static final CxxOperatorKind SUBTRACT
   :outertype: CxxOperatorKind

   C++ equivalent: operator-(T rhs)

SUBTRACT_ASSIGN
^^^^^^^^^^^^^^^

.. java:field:: public static final CxxOperatorKind SUBTRACT_ASSIGN
   :outertype: CxxOperatorKind

   C++ equivalent: operator-=(T rhs)

UNARY_MINUS
^^^^^^^^^^^

.. java:field:: public static final CxxOperatorKind UNARY_MINUS
   :outertype: CxxOperatorKind

   C++ equivalent: operator-()

UNARY_PLUS
^^^^^^^^^^

.. java:field:: public static final CxxOperatorKind UNARY_PLUS
   :outertype: CxxOperatorKind

   C++ equivalent: operator+()

