IGuardedPtr
===========

.. java:package:: org.moe.natj.general.ptr
   :noindex:

.. java:type:: public interface IGuardedPtr

   Guarded pointer interface.

   If an invalid index is given, then an appropriate exception will be thrown.

Methods
-------
checkIndex
^^^^^^^^^^

.. java:method:: public boolean checkIndex(int index)
   :outertype: IGuardedPtr

   Returns \ ``true``\  if the specified index is valid.

   :param index: index to validate
   :return: \ ``true``\  if the specified index is valid

