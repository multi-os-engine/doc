ConstBoolPtr
============

.. java:package:: org.moe.natj.general.ptr
   :noindex:

.. java:type:: public interface ConstBoolPtr extends ConstPtr<Boolean>

   Constant Bool pointer interface.

Methods
-------
copyTo
^^^^^^

.. java:method:: public void copyTo(boolean[] dest)
   :outertype: ConstBoolPtr

   Copies elements from the pointer to the specified array. The number of elements copied is equal to the size of the array.

   When the
   pointer is not guarded, accessing elements out of range could result in a
   program crash!

   :param dest: non-null array to copy into

copyTo
^^^^^^

.. java:method:: public void copyTo(boolean[] dest, int length)
   :outertype: ConstBoolPtr

   Copies elements from the pointer to the specified array.

   When the pointer is not guarded, accessing elements out of
   range could result in a program crash!

   :param dest: non-null array to copy into
   :param length: number of elements to copy

copyTo
^^^^^^

.. java:method:: public void copyTo(int srcOffset, boolean[] dest, int destOffset, int length)
   :outertype: ConstBoolPtr

   Copies elements from the pointer to the specified array.

   When the pointer is not guarded, accessing elements out of
   range could result in a program crash!

   :param srcOffset: offset of the element in the source
   :param dest: non-null array to copy to
   :param destOffset: offset of the first element in the destination
   :param length: number of elements to copy

getGuarded
^^^^^^^^^^

.. java:method:: @Override public ConstBoolPtr getGuarded(int length)
   :outertype: ConstBoolPtr

getGuarded
^^^^^^^^^^

.. java:method:: @Override public ConstBoolPtr getGuarded(int fromIndex, int toIndex)
   :outertype: ConstBoolPtr

getValue
^^^^^^^^

.. java:method:: public boolean getValue()
   :outertype: ConstBoolPtr

   Returns the value at location 0 of the pointer. This call is equivalent to \ ``get(0)``\ .

   When the pointer is not
   guarded, accessing elements out of range could result in a program
   crash!

   :return: the value at location 0 of the pointer

getValue
^^^^^^^^

.. java:method:: public boolean getValue(int idx)
   :outertype: ConstBoolPtr

   Returns the value at the specified location in this pointer.

   When the pointer is not guarded, accessing elements out of
   range could result in a program crash!

   :param idx: index of the value to return
   :return: the value at the specified location in this pointer

ofs
^^^

.. java:method:: @Override public ConstBoolPtr ofs(int elemOffset)
   :outertype: ConstBoolPtr

toBoolArray
^^^^^^^^^^^

.. java:method:: public boolean[] toBoolArray(int length)
   :outertype: ConstBoolPtr

   Returns an array containing all of the elements (from \ ``0``\  to \ ``length``\ ) in this pointer in proper sequence. The array will be newly allocated and no references to it will be maintained. This call is equivalent to \ ``toArray(0, length)``\ .

   When the
   pointer is not guarded, accessing elements out of range could result in a
   program crash!

   :param length: number of elements to copy
   :return: an array containing all of the elements (from 0 to length) in this pointer in proper sequence

toBoolArray
^^^^^^^^^^^

.. java:method:: public boolean[] toBoolArray(int fromIndex, int toIndex)
   :outertype: ConstBoolPtr

   Returns an array containing all of the elements (from \ ``fromIndex``\  to \ ``toIndex``\ ) in this pointer in proper sequence. The array will be newly allocated and no references to it will be maintained.

   When the pointer is not guarded, accessing
   elements out of range could result in a program crash!

   :param fromIndex: low endpoint (inclusive) of the pointer
   :param toIndex: high endpoint (exclusive) of the pointer
   :return: an array containing all of the elements (from fromIndex to toIndex) in this pointer in proper sequence

