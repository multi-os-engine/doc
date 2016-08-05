.. java:import:: org.moe.natj.general Pointer

ConstVoidPtr
============

.. java:package:: org.moe.natj.general.ptr
   :noindex:

.. java:type:: public interface ConstVoidPtr

   Constant Void pointer interface.

Methods
-------
forceFree
^^^^^^^^^

.. java:method:: public void forceFree()
   :outertype: ConstVoidPtr

   Frees the memory space pointed to by this pointer without doing any security checks on the pointer's state and ownership. Calling this method on a pointer which was already freed will result in an \ :java:ref:`UnsupportedOperationException`\  exception. Freeing a pointer which is not owned by the caller will result in undefined behavior!

free
^^^^

.. java:method:: public void free()
   :outertype: ConstVoidPtr

   Frees the memory space pointed to by this pointer. Calling this method on a pointer which was already freed or the owner is a different object will result in an \ :java:ref:`UnsupportedOperationException`\  exception. Freeing a pointer which is not owned by the caller will result in undefined behavior! This method is only necessary when working with weak - not owned - pointers.

getBoolPtr
^^^^^^^^^^

.. java:method:: public ConstBoolPtr getBoolPtr()
   :outertype: ConstVoidPtr

   Returns a boolean pointer pointing to the same location.

   :return: new boolean pointer \ *(NON-GUARDED)*\

getBytePtr
^^^^^^^^^^

.. java:method:: public ConstBytePtr getBytePtr()
   :outertype: ConstVoidPtr

   Returns a boolean pointer pointing to the same location.

   :return: new boolean pointer \ *(NON-GUARDED)*\

getCharPtr
^^^^^^^^^^

.. java:method:: public ConstCharPtr getCharPtr()
   :outertype: ConstVoidPtr

   Returns a short pointer pointing to the same location.

   :return: new short pointer \ *(NON-GUARDED)*\

getDepth
^^^^^^^^

.. java:method:: public int getDepth()
   :outertype: ConstVoidPtr

   Returns the indirection count of the pointer. For example IntPtr will return 1, Ptr<IntPtr> will return 2.

   :return: the indirection count of the pointer

getDoublePtr
^^^^^^^^^^^^

.. java:method:: public ConstDoublePtr getDoublePtr()
   :outertype: ConstVoidPtr

   Returns a double pointer pointing to the same location.

   :return: new double pointer \ *(NON-GUARDED)*\

getFloatPtr
^^^^^^^^^^^

.. java:method:: public ConstFloatPtr getFloatPtr()
   :outertype: ConstVoidPtr

   Returns a float pointer pointing to the same location.

   :return: new float pointer \ *(NON-GUARDED)*\

getIntPtr
^^^^^^^^^

.. java:method:: public ConstIntPtr getIntPtr()
   :outertype: ConstVoidPtr

   Returns a character pointer pointing to the same location.

   :return: new character pointer \ *(NON-GUARDED)*\

getLongPtr
^^^^^^^^^^

.. java:method:: public ConstLongPtr getLongPtr()
   :outertype: ConstVoidPtr

   Returns a long pointer pointing to the same location.

   :return: new long pointer \ *(NON-GUARDED)*\

getNFloatPtr
^^^^^^^^^^^^

.. java:method:: public ConstNFloatPtr getNFloatPtr()
   :outertype: ConstVoidPtr

   Returns a NFloat pointer pointing to the same location.

   :return: new NFloat pointer \ *(NON-GUARDED)*\

getNIntPtr
^^^^^^^^^^

.. java:method:: public ConstNIntPtr getNIntPtr()
   :outertype: ConstVoidPtr

   Returns a NInt pointer pointing to the same location.

   :return: new NInt pointer \ *(NON-GUARDED)*\

getNLongPtr
^^^^^^^^^^^

.. java:method:: public ConstNLongPtr getNLongPtr()
   :outertype: ConstVoidPtr

   Returns a NLong pointer pointing to the same location.

   :return: new NLong pointer \ *(NON-GUARDED)*\

getNUIntPtr
^^^^^^^^^^^

.. java:method:: public ConstNUIntPtr getNUIntPtr()
   :outertype: ConstVoidPtr

   Returns a NUInt pointer pointing to the same location.

   :return: new NUInt pointer \ *(NON-GUARDED)*\

getNULongPtr
^^^^^^^^^^^^

.. java:method:: public ConstNULongPtr getNULongPtr()
   :outertype: ConstVoidPtr

   Returns a NULong pointer pointing to the same location.

   :return: new NULong pointer \ *(NON-GUARDED)*\

getPeer
^^^^^^^

.. java:method:: public Pointer getPeer()
   :outertype: ConstVoidPtr

   Returns the underlying pointer object.

   :return: the underlying pointer object

getShortPtr
^^^^^^^^^^^

.. java:method:: public ConstShortPtr getShortPtr()
   :outertype: ConstVoidPtr

   Returns a byte pointer pointing to the same location.

   :return: new byte pointer \ *(NON-GUARDED)*\

isConstPtr
^^^^^^^^^^

.. java:method:: public boolean isConstPtr()
   :outertype: ConstVoidPtr

   Returns \ ``true``\  if the pointer is constant type. Calling methods which would write to the pointer will result in an \ :java:ref:`UnsupportedOperationException`\  exception.

   :return: \ ``true``\  if the pointer is constant type

