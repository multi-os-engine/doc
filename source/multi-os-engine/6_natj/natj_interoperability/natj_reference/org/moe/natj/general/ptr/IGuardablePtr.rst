IGuardablePtr
=============

.. java:package:: org.moe.natj.general.ptr
   :noindex:

.. java:type:: public interface IGuardablePtr<T>

   Interface for pointer objects that can be converted to guarded pointer objects.

Methods
-------
getGuardHigh
^^^^^^^^^^^^

.. java:method:: public int getGuardHigh()
   :outertype: IGuardablePtr

   Returns the guarded pointer's high endpoint (exclusive). Calling this method on a non-guarded pointer will result in an \ :java:ref:`UnsupportedOperationException`\  exception!

   :return: the guarded pointer's high endpoint (exclusive)

getGuardLow
^^^^^^^^^^^

.. java:method:: public int getGuardLow()
   :outertype: IGuardablePtr

   Returns the guarded pointer's low endpoint (inclusive). Calling this method on a non-guarded pointer will result in an \ :java:ref:`UnsupportedOperationException`\  exception!

   :return: the guarded pointer's low endpoint (inclusive)

getGuarded
^^^^^^^^^^

.. java:method:: public T getGuarded(int length)
   :outertype: IGuardablePtr

   Returns the guarded version of this pointer. This call is equivalent to \ ``getGuarded(0, length)``\ .

   :param length: number of elements to enable access to
   :return: guarded version of this pointer

getGuarded
^^^^^^^^^^

.. java:method:: public T getGuarded(int fromIndex, int toIndex)
   :outertype: IGuardablePtr

   Returns the guarded version of this pointer.

   :param fromIndex: low endpoint (inclusive) of the pointer
   :param toIndex: high endpoint (exclusive) of the pointer
   :return: guarded version of this pointer

isGuarded
^^^^^^^^^

.. java:method:: public boolean isGuarded()
   :outertype: IGuardablePtr

   Returns \ ``true``\  if this pointer's read/write methods are index guarded. When a pointer is guarded, the index parameter of read/write calls is checked. Accessing elements which are out of bounds will result in an \ :java:ref:`IndexOutOfBoundsException`\  exception.

   :return: \ ``true``\  if this pointer's read/write methods are index guarded

