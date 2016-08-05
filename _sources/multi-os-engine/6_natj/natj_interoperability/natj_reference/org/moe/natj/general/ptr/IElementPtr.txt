IElementPtr
===========

.. java:package:: org.moe.natj.general.ptr
   :noindex:

.. java:type:: public interface IElementPtr<T>

   Interface for offsetble pointer objects.

Methods
-------
ofs
^^^

.. java:method:: public T ofs(int elemOffset)
   :outertype: IElementPtr

   Create a new pointer from a specified element offset.

   When
   the pointer is not guarded, accessing elements out of range could result
   in a program crash!

   :param elemOffset: low endpoint of the new pointer
   :return: new pointer with the specified low endpoint

