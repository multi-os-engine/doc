NIntPtr
=======

.. java:package:: org.moe.natj.general.ptr
   :noindex:

.. java:type:: public interface NIntPtr extends Ptr<Long>, ConstNIntPtr

   Architecture dependent signed Long pointer interface. - On a 32-bit platform the element size is 4 bytes - On a 64-bit platform the element size is 8 bytes

Methods
-------
copyFrom
^^^^^^^^

.. java:method:: public void copyFrom(long[] src)
   :outertype: NIntPtr

   Copies elements from the specified array to this pointer. The number of elements copied is equal to the size of the source array. This call is equivalent to \ ``copyFrom(src, 0, 0, src.length)``\ .

   When the pointer is not guarded, accessing elements out of
   range could result in a program crash!

   :param src: non-null array to copy from

copyFrom
^^^^^^^^

.. java:method:: public void copyFrom(long[] src, int destOffset)
   :outertype: NIntPtr

   Copies elements from the specified array to this pointer. The offset of the first value to be replaced is specified with the \ ``destOffset``\  argument. The number of elements copied is equal to the size of the source array. This call is equivalent to \ ``copyFrom(src, 0, destOffset, src.length)``\ .

   When
   the pointer is not guarded, accessing elements out of range could result
   in a program crash!

   :param src: non-null array to copy from
   :param destOffset: index of the first value to replace in this pointer

copyFrom
^^^^^^^^

.. java:method:: public void copyFrom(long[] src, int destOffset, int length)
   :outertype: NIntPtr

   Copies elements from the specified array from the specified index to this pointer. The offset of the first value to be replaced is specified with the \ ``destOffset``\  argument. The number of elements copied is equal to the size of the source array. This call is equivalent to \ ``copyFrom(src, srcOffset, destOffset, src.length)``\ .

   When the pointer is not guarded, accessing elements out of
   range could result in a program crash!

   :param src: non-null array to copy from
   :param destOffset: index of the first value to replace in this pointer
   :param length: number of elements to copy

copyFrom
^^^^^^^^

.. java:method:: public void copyFrom(long[] src, int srcOffset, int destOffset, int length)
   :outertype: NIntPtr

   Copies elements from the specified array from the specified index to this pointer. The offset of the first value to be replaced is specified with the \ ``destOffset``\  argument.

   When the pointer is
   not guarded, accessing elements out of range could result in a program
   crash!

   :param src: non-null array to copy from
   :param srcOffset: index of the first value to copy to this pointer
   :param destOffset: index of the first value to replace in this pointer
   :param length: number of elements to copy

getGuarded
^^^^^^^^^^

.. java:method:: @Override public NIntPtr getGuarded(int length)
   :outertype: NIntPtr

getGuarded
^^^^^^^^^^

.. java:method:: @Override public NIntPtr getGuarded(int fromIndex, int toIndex)
   :outertype: NIntPtr

ofs
^^^

.. java:method:: @Override public NIntPtr ofs(int elemOffset)
   :outertype: NIntPtr

setValue
^^^^^^^^

.. java:method:: public void setValue(long value)
   :outertype: NIntPtr

   Replaces the value at location 0 with the specified value. This call is equivalent to \ ``set(0, value)``\ .

   When the
   pointer is not guarded, accessing elements out of range could result in a
   program crash!

   :param value: value to be stored

setValue
^^^^^^^^

.. java:method:: public void setValue(int idx, long value)
   :outertype: NIntPtr

   Replaces the value at the specified location with the specified value.

   When the pointer is not guarded, accessing elements out of
   range could result in a program crash!

   :param idx: index of the value to replace
   :param value: value to be stored

