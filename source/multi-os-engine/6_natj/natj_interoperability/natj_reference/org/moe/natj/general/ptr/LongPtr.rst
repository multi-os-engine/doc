LongPtr
=======

.. java:package:: org.moe.natj.general.ptr
   :noindex:

.. java:type:: public interface LongPtr extends Ptr<Long>, ConstLongPtr

   Long pointer interface.

Methods
-------
copyFrom
^^^^^^^^

.. java:method:: public void copyFrom(long[] src)
   :outertype: LongPtr

   Copies elements from the specified array to this pointer. The number of elements copied is equal to the size of the source array. This call is equivalent to \ ``copyFrom(src, 0, 0, src.length)``\ .

   When the pointer is not guarded, accessing elements out of
   range could result in a program crash!

   :param src: non-null array to copy from

copyFrom
^^^^^^^^

.. java:method:: public void copyFrom(long[] src, int destOffset)
   :outertype: LongPtr

   Copies elements from the specified array to this pointer. The offset of the first value to be replaced is specified with the \ ``destOffset``\  argument. The number of elements copied is equal to the size of the source array. This call is equivalent to \ ``copyFrom(src, 0, destOffset, src.length)``\ .

   When
   the pointer is not guarded, accessing elements out of range could result
   in a program crash!

   :param src: non-null array to copy from
   :param destOffset: index of the first value to replace in this pointer

copyFrom
^^^^^^^^

.. java:method:: public void copyFrom(long[] src, int destOffset, int length)
   :outertype: LongPtr

   Copies elements from the specified array from the specified index to this pointer. The offset of the first value to be replaced is specified with the \ ``destOffset``\  argument. The number of elements copied is equal to the size of the source array. This call is equivalent to \ ``copyFrom(src, srcOffset, destOffset, src.length)``\ .

   When the pointer is not guarded, accessing elements out of
   range could result in a program crash!

   :param src: non-null array to copy from
   :param destOffset: index of the first value to replace in this pointer
   :param length: number of elements to copy

copyFrom
^^^^^^^^

.. java:method:: public void copyFrom(long[] src, int srcOffset, int destOffset, int length)
   :outertype: LongPtr

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

.. java:method:: @Override public LongPtr getGuarded(int length)
   :outertype: LongPtr

getGuarded
^^^^^^^^^^

.. java:method:: @Override public LongPtr getGuarded(int fromIndex, int toIndex)
   :outertype: LongPtr

ofs
^^^

.. java:method:: @Override public LongPtr ofs(int elemOffset)
   :outertype: LongPtr

setValue
^^^^^^^^

.. java:method:: public void setValue(long value)
   :outertype: LongPtr

   Replaces the value at location 0 with the specified value. This call is equivalent to \ ``set(0, value)``\ .

   When the
   pointer is not guarded, accessing elements out of range could result in a
   program crash!

   :param value: value to be stored

setValue
^^^^^^^^

.. java:method:: public void setValue(int idx, long value)
   :outertype: LongPtr

   Replaces the value at the specified location with the specified value.

   When the pointer is not guarded, accessing elements out of
   range could result in a program crash!

   :param idx: index of the value to replace
   :param value: value to be stored

