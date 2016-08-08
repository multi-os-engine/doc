Ptr
===

.. java:package:: org.moe.natj.general.ptr
   :noindex:

.. java:type:: public interface Ptr<T> extends VoidPtr, ConstPtr<T>

Methods
-------
copyFrom
^^^^^^^^

.. java:method:: public void copyFrom(T[] src)
   :outertype: Ptr

   Copies elements from the specified array to this pointer. The number of elements copied is equal to the size of the source array. This call is equivalent to \ ``copyFrom(src, 0, 0, src.length)``\ .

   When the pointer is not guarded, accessing elements out of
   range could result in a program crash!

   :param src: non-null array to copy from

copyFrom
^^^^^^^^

.. java:method:: public void copyFrom(T[] src, int destOffset)
   :outertype: Ptr

   Copies elements from the specified array to this pointer. The offset of the first value to be replaced is specified with the \ ``destOffset``\  argument. The number of elements copied is equal to the size of the source array. This call is equivalent to \ ``copyFrom(src, 0, destOffset, src.length)``\ .

   When
   the pointer is not guarded, accessing elements out of range could result
   in a program crash!

   :param src: non-null array to copy from
   :param destOffset: index of the first value to replace in this pointer

copyFrom
^^^^^^^^

.. java:method:: public void copyFrom(T[] src, int destOffset, int length)
   :outertype: Ptr

   Copies elements from the specified array from the specified index to this pointer. The offset of the first value to be replaced is specified with the \ ``destOffset``\  argument. The number of elements copied is equal to the size of the source array. This call is equivalent to \ ``copyFrom(src, srcOffset, destOffset, src.length)``\ .

   When the pointer is not guarded, accessing elements out of
   range could result in a program crash!

   :param src: non-null array to copy from
   :param destOffset: index of the first value to replace in this pointer
   :param length: number of elements to copy

copyFrom
^^^^^^^^

.. java:method:: public void copyFrom(T[] src, int srcOffset, int destOffset, int length)
   :outertype: Ptr

   Copies elements from the specified array from the specified index to this pointer. The offset of the first value to be replaced is specified with the \ ``destOffset``\  argument.

   When the pointer is
   not guarded, accessing elements out of range could result in a program
   crash!

   :param src: non-null array to copy from
   :param srcOffset: index of the first value to copy to this pointer
   :param destOffset: index of the first value to replace in this pointer
   :param length: number of elements to copy

set
^^^

.. java:method:: public void set(T obj)
   :outertype: Ptr

   Replaces the object at location 0 with the specified object. This call is equivalent to \ ``set(0, obj)``\ .

   When the
   pointer is not guarded, accessing elements out of range could result in a
   program crash!

   :param obj: object to be stored

set
^^^

.. java:method:: public void set(int idx, T obj)
   :outertype: Ptr

   Replaces the object at the specified location with the specified object.

   When the pointer is not guarded, accessing elements out of
   range could result in a program crash!

   :param idx: index of the object to replace
   :param obj: object to be stored

