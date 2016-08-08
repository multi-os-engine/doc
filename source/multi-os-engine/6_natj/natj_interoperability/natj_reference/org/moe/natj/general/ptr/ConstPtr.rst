ConstPtr
========

.. java:package:: org.moe.natj.general.ptr
   :noindex:

.. java:type:: public interface ConstPtr<T> extends VoidPtr, IGuardablePtr<ConstPtr<T>>, IElementPtr<ConstPtr<T>>

Methods
-------
copyTo
^^^^^^

.. java:method:: public void copyTo(T[] dest)
   :outertype: ConstPtr

   Copies elements from the pointer to the specified array. The number of elements copied is equal to the size of the array.

   When the
   pointer is not guarded, accessing elements out of range could result in a
   program crash!

   :param dest: non-null array to copy into

copyTo
^^^^^^

.. java:method:: public void copyTo(T[] dest, int length)
   :outertype: ConstPtr

   Copies elements from the pointer to the specified array.

   When the pointer is not guarded, accessing elements out of
   range could result in a program crash!

   :param dest: non-null array to copy into
   :param length: number of elements to copy

copyTo
^^^^^^

.. java:method:: public void copyTo(int srcOffset, T[] dest, int destOffset, int length)
   :outertype: ConstPtr

   Copies elements from the pointer to the specified array.

   When the pointer is not guarded, accessing elements out of
   range could result in a program crash!

   :param srcOffset: offset of the element in the source
   :param dest: non-null array to copy to
   :param destOffset: offset of the first element in the destination
   :param length: number of elements to copy

get
^^^

.. java:method:: public T get()
   :outertype: ConstPtr

   Returns the object at location 0 of the pointer. This call is equivalent to \ ``get(0)``\ .

   When the pointer is not
   guarded, accessing elements out of range could result in a program
   crash!

   :return: the object at location 0 of the pointer

get
^^^

.. java:method:: public T get(int idx)
   :outertype: ConstPtr

   Returns the object at the specified location in this pointer.

   When the pointer is not guarded, accessing elements out of
   range could result in a program crash!

   :param idx: index of the object to return
   :return: the object at the specified location in this pointer

toArray
^^^^^^^

.. java:method:: public T[] toArray(int length)
   :outertype: ConstPtr

   Returns an array containing all of the elements (from \ ``0``\  to \ ``length``\ ) in this pointer in proper sequence. The array will be newly allocated and no references to it will be maintained. This call is equivalent to \ ``toArray(0, length)``\ .

   When the
   pointer is not guarded, accessing elements out of range could result in a
   program crash!

   :param length: number of elements to copy
   :return: an array containing all of the elements (from 0 to length) in this pointer in proper sequence

toArray
^^^^^^^

.. java:method:: public T[] toArray(int fromIndex, int toIndex)
   :outertype: ConstPtr

   Returns an array containing all of the elements (from \ ``fromIndex``\  to \ ``toIndex``\ ) in this pointer in proper sequence. The array will be newly allocated and no references to it will be maintained.

   When the pointer is not guarded, accessing
   elements out of range could result in a program crash!

   :param fromIndex: low endpoint (inclusive) of the pointer
   :param toIndex: high endpoint (exclusive) of the pointer
   :return: an array containing all of the elements (from fromIndex to toIndex) in this pointer in proper sequence

