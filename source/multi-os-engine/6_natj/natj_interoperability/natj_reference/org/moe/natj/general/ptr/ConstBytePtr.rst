.. java:import:: java.io UnsupportedEncodingException

ConstBytePtr
============

.. java:package:: org.moe.natj.general.ptr
   :noindex:

.. java:type:: public interface ConstBytePtr extends ConstPtr<Byte>

   Constant Byte pointer interface.

Methods
-------
copyTo
^^^^^^

.. java:method:: public void copyTo(byte[] dest)
   :outertype: ConstBytePtr

   Copies elements from the pointer to the specified array. The number of elements copied is equal to the size of the array.

   When the
   pointer is not guarded, accessing elements out of range could result in a
   program crash!

   :param dest: non-null array to copy into

copyTo
^^^^^^

.. java:method:: public void copyTo(byte[] dest, int length)
   :outertype: ConstBytePtr

   Copies elements from the pointer to the specified array.

   When the pointer is not guarded, accessing elements out of
   range could result in a program crash!

   :param dest: non-null array to copy into
   :param length: number of elements to copy

copyTo
^^^^^^

.. java:method:: public void copyTo(int srcOffset, byte[] dest, int destOffset, int length)
   :outertype: ConstBytePtr

   Copies elements from the pointer to the specified array.

   When the pointer is not guarded, accessing elements out of
   range could result in a program crash!

   :param srcOffset: offset of the element in the source
   :param dest: non-null array to copy to
   :param destOffset: offset of the first element in the destination
   :param length: number of elements to copy

getGuarded
^^^^^^^^^^

.. java:method:: @Override public ConstBytePtr getGuarded(int length)
   :outertype: ConstBytePtr

getGuarded
^^^^^^^^^^

.. java:method:: @Override public ConstBytePtr getGuarded(int fromIndex, int toIndex)
   :outertype: ConstBytePtr

getValue
^^^^^^^^

.. java:method:: public byte getValue()
   :outertype: ConstBytePtr

   Returns the value at location 0 of the pointer. This call is equivalent to \ ``get(0)``\ .

   When the pointer is not
   guarded, accessing elements out of range could result in a program
   crash!

   :return: the value at location 0 of the pointer

getValue
^^^^^^^^

.. java:method:: public byte getValue(int idx)
   :outertype: ConstBytePtr

   Returns the value at the specified location in this pointer.

   When the pointer is not guarded, accessing elements out of
   range could result in a program crash!

   :param idx: index of the value to return
   :return: the value at the specified location in this pointer

ofs
^^^

.. java:method:: @Override public ConstBytePtr ofs(int elemOffset)
   :outertype: ConstBytePtr

toASCIIString
^^^^^^^^^^^^^

.. java:method:: public String toASCIIString()
   :outertype: ConstBytePtr

   Creates a new String from this pointer. This method assumes that the string is null terminated and the encoding of it is ASCII.

   When the pointer is not guarded, accessing elements
   out of range could result in a program crash!

   :return: new String from this pointer

toByteArray
^^^^^^^^^^^

.. java:method:: public byte[] toByteArray(int length)
   :outertype: ConstBytePtr

   Returns an array containing all of the elements (from \ ``0``\  to \ ``length``\ ) in this pointer in proper sequence. The array will be newly allocated and no references to it will be maintained. This call is equivalent to \ ``toArray(0, length)``\ .

   When the
   pointer is not guarded, accessing elements out of range could result in a
   program crash!

   :param length: number of elements to copy
   :return: an array containing all of the elements (from 0 to length) in this pointer in proper sequence

toByteArray
^^^^^^^^^^^

.. java:method:: public byte[] toByteArray(int fromIndex, int toIndex)
   :outertype: ConstBytePtr

   Returns an array containing all of the elements (from \ ``fromIndex``\  to \ ``toIndex``\ ) in this pointer in proper sequence. The array will be newly allocated and no references to it will be maintained.

   When the pointer is not guarded, accessing
   elements out of range could result in a program crash!

   :param fromIndex: low endpoint (inclusive) of the pointer
   :param toIndex: high endpoint (exclusive) of the pointer
   :return: an array containing all of the elements (from fromIndex to toIndex) in this pointer in proper sequence

toString
^^^^^^^^

.. java:method:: public String toString(int length)
   :outertype: ConstBytePtr

   Creates a new String from this pointer with a given length. This method assumes that the encoding of the string is UTF-8.

   When the
   pointer is not guarded, accessing elements out of range could result in a
   program crash!

   :param length: number of bytes to put into the string
   :return: new String from this pointer

toString
^^^^^^^^

.. java:method:: public String toString(int length, String charset) throws UnsupportedEncodingException
   :outertype: ConstBytePtr

   Creates a new string from this pointer with a given length and charset.

   When the pointer is not guarded, accessing elements
   out of range could result in a program crash!

   :param length: number of bytes to put into the string
   :param charset: the charset to be used to decode the bytes
   :throws UnsupportedEncodingException: In case of not supported charset
   :return: new String from this pointer

toUTF8String
^^^^^^^^^^^^

.. java:method:: public String toUTF8String()
   :outertype: ConstBytePtr

   Creates a new String from this pointer. This method assumes that the string is null terminated and the encoding of it is UTF-8.

   When the pointer is not guarded, accessing elements
   out of range could result in a program crash!

   :return: new String from this pointer

