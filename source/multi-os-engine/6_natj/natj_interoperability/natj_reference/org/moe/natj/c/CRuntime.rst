.. java:import:: org.moe.natj.c.ann Variadic

.. java:import:: org.moe.natj.c.map CCallbackMapper

.. java:import:: org.moe.natj.c.map CObjectMapper

.. java:import:: org.moe.natj.c.map CStringMapper

.. java:import:: org.moe.natj.general NatJ

.. java:import:: org.moe.natj.general NatJ.JavaObjectConstructionInfo

.. java:import:: org.moe.natj.general NativeObject

.. java:import:: org.moe.natj.general NativeRuntime

.. java:import:: org.moe.natj.general Pointer

.. java:import:: org.moe.natj.general Pointer.Releaser

.. java:import:: org.moe.natj.general.ptr ConstVoidPtr

.. java:import:: org.moe.natj.general.ptr VoidPtr

.. java:import:: org.moe.natj.general.ptr.impl PtrFactory

.. java:import:: java.lang.reflect Method

.. java:import:: java.nio ByteBuffer

.. java:import:: java.nio CharBuffer

.. java:import:: java.nio DoubleBuffer

.. java:import:: java.nio FloatBuffer

.. java:import:: java.nio IntBuffer

.. java:import:: java.nio LongBuffer

.. java:import:: java.nio ShortBuffer

.. java:import:: java.util Map

CRuntime
========

.. java:package:: org.moe.natj.c
   :noindex:

.. java:type:: public class CRuntime extends NativeRuntime

   CRuntime.

   \ :java:ref:`NativeRuntime`\  implementation used for supporting C features like structures and callbacks.

Fields
------
BOOLEAN_SIZE
^^^^^^^^^^^^

.. java:field:: public static final int BOOLEAN_SIZE
   :outertype: CRuntime

   Native size of a boolean in bytes.

BYTE_SIZE
^^^^^^^^^

.. java:field:: public static final int BYTE_SIZE
   :outertype: CRuntime

   Native size of a byte in bytes.

CHAR_SIZE
^^^^^^^^^

.. java:field:: public static final int CHAR_SIZE
   :outertype: CRuntime

   Native size of a char in bytes.

DOUBLE_SIZE
^^^^^^^^^^^

.. java:field:: public static final int DOUBLE_SIZE
   :outertype: CRuntime

   Native size of a double in bytes.

FLOAT_SIZE
^^^^^^^^^^

.. java:field:: public static final int FLOAT_SIZE
   :outertype: CRuntime

   Native size of a float in bytes.

INT_SIZE
^^^^^^^^

.. java:field:: public static final int INT_SIZE
   :outertype: CRuntime

   Native size of an int in bytes.

LONG_SIZE
^^^^^^^^^

.. java:field:: public static final int LONG_SIZE
   :outertype: CRuntime

   Native size of a long in bytes.

NATIVE_LONG_SIZE
^^^^^^^^^^^^^^^^

.. java:field:: public static final int NATIVE_LONG_SIZE
   :outertype: CRuntime

   Native size of a 'native' long in bytes.

NATIVE_WCHART_SIZE
^^^^^^^^^^^^^^^^^^

.. java:field:: public static final int NATIVE_WCHART_SIZE
   :outertype: CRuntime

   Native size of a 'native' wchar_t in bytes.

POINTER_SIZE
^^^^^^^^^^^^

.. java:field:: public static final int POINTER_SIZE
   :outertype: CRuntime

   Native size of a pointer in bytes.

SHORT_SIZE
^^^^^^^^^^

.. java:field:: public static final int SHORT_SIZE
   :outertype: CRuntime

   Native size of a short in bytes.

Methods
-------
allocBoolean
^^^^^^^^^^^^

.. java:method:: public static native long allocBoolean(int count)
   :outertype: CRuntime

   Allocates boolean array of size \ ``count``\ .

   :param count: The length of the array
   :return: The pointer

allocByte
^^^^^^^^^

.. java:method:: public static native long allocByte(int count)
   :outertype: CRuntime

   Allocates byte array of size \ ``count``\ .

   :param count: The length of the array
   :return: The pointer

allocChar
^^^^^^^^^

.. java:method:: public static native long allocChar(int count)
   :outertype: CRuntime

   Allocates char array of size \ ``count``\ .

   :param count: The length of the array
   :return: The pointer

allocDouble
^^^^^^^^^^^

.. java:method:: public static native long allocDouble(int count)
   :outertype: CRuntime

   Allocates double array of size \ ``count``\ .

   :param count: The length of the array
   :return: The pointer

allocFloat
^^^^^^^^^^

.. java:method:: public static native long allocFloat(int count)
   :outertype: CRuntime

   Allocates float array of size \ ``count``\ .

   :param count: The length of the array
   :return: The pointer

allocInt
^^^^^^^^

.. java:method:: public static native long allocInt(int count)
   :outertype: CRuntime

   Allocates int array of size \ ``count``\ .

   :param count: The length of the array
   :return: The pointer

allocLong
^^^^^^^^^

.. java:method:: public static native long allocLong(int count)
   :outertype: CRuntime

   Allocates long array of size \ ``count``\ .

   :param count: The length of the array
   :return: The pointer

allocNativeCallback
^^^^^^^^^^^^^^^^^^^

.. java:method:: public static native long allocNativeCallback(Object instance, Method method, long[] extra)
   :outertype: CRuntime

   Construct a native callback from a Java method.

   Also documented in CRuntime.h

   :param instance: The Java instance we want to create native callback for
   :param method: The Java method we want to create native callback from
   :param extra: The out parameter used for storing extra informations
   :return: The native callback

allocNativeObject
^^^^^^^^^^^^^^^^^

.. java:method:: public static native long allocNativeObject(Class<? extends NativeObject> type, int count)
   :outertype: CRuntime

   Allocate one continuous memory block with sufficient size for containing \ ``count``\  instances of \ ``type``\ .

   Also documented in CRuntime.h

   :param type: Java class of native object
   :param count: Count of native object
   :return: The pointer of the newly allocated space

allocPointer
^^^^^^^^^^^^

.. java:method:: public static native long allocPointer(int count)
   :outertype: CRuntime

   Allocates space for \ ``count``\  pointer.

   Also documented in CRuntime.h

   :param count: The length of the array we want to create
   :return: The pointer of the allocated space

allocShort
^^^^^^^^^^

.. java:method:: public static native long allocShort(int count)
   :outertype: CRuntime

   Allocates short array of size \ ``count``\ .

   :param count: The length of the array
   :return: The pointer

cast
^^^^

.. java:method:: @SuppressWarnings public static <T extends OpaquePtr> T cast(ConstVoidPtr ptr, java.lang.Class<T> cls)
   :outertype: CRuntime

   Casts a void pointer to an opaque pointer.

   :param <T>: The opaque pointer type class to cast to
   :param ptr: The void pointer we want to cast
   :param cls: The desired type of the class
   :return: The new opaque pointer

cast
^^^^

.. java:method:: public static VoidPtr cast(OpaquePtr ptr)
   :outertype: CRuntime

   Casts an opaque pointer to a void pointer.

   :param ptr: The opaque pointer we want to cast
   :return: The new void pointer

copyBooleanArray
^^^^^^^^^^^^^^^^

.. java:method:: public static native void copyBooleanArray(long dst, int startOffset, boolean[] array, int buffOffset, int length)
   :outertype: CRuntime

   Copies boolean array.

   :param dst: The pointer pointing to where we want to copy
   :param startOffset: The offset for the destination
   :param array: The array we want to copy
   :param buffOffset: The offset of the pointer we want to copy
   :param length: The length of the copy

copyByteArray
^^^^^^^^^^^^^

.. java:method:: public static native void copyByteArray(long dst, int startOffset, byte[] array, int buffOffset, int length)
   :outertype: CRuntime

   Copies byte array.

   :param dst: The pointer pointing to where we want to copy
   :param startOffset: The offset for the destination
   :param array: The array we want to copy
   :param buffOffset: The offset of the pointer we want to copy
   :param length: The length of the copy

copyCharArray
^^^^^^^^^^^^^

.. java:method:: public static native void copyCharArray(long dst, int startOffset, char[] array, int buffOffset, int length)
   :outertype: CRuntime

   Copies char array.

   :param dst: The pointer pointing to where we want to copy
   :param startOffset: The offset for the destination
   :param array: The array we want to copy
   :param buffOffset: The offset of the pointer we want to copy
   :param length: The length of the copy

copyDoubleArray
^^^^^^^^^^^^^^^

.. java:method:: public static native void copyDoubleArray(long dst, int startOffset, double[] array, int buffOffset, int length)
   :outertype: CRuntime

   Copies double array.

   :param dst: The pointer pointing to where we want to copy
   :param startOffset: The offset for the destination
   :param array: The array we want to copy
   :param buffOffset: The offset of the pointer we want to copy
   :param length: The length of the copy

copyFloatArray
^^^^^^^^^^^^^^

.. java:method:: public static native void copyFloatArray(long dst, int startOffset, float[] array, int buffOffset, int length)
   :outertype: CRuntime

   Copies float array.

   :param dst: The pointer pointing to where we want to copy
   :param startOffset: The offset for the destination
   :param array: The array we want to copy
   :param buffOffset: The offset of the pointer we want to copy
   :param length: The length of the copy

copyFromNativeBooleanArray
^^^^^^^^^^^^^^^^^^^^^^^^^^

.. java:method:: public static native void copyFromNativeBooleanArray(boolean[] dst, int startOffset, long array, int buffOffset, int length)
   :outertype: CRuntime

   Copies boolean array.

   :param dst: The pointer pointing to where we want to copy
   :param startOffset: The offset for the destination
   :param array: The array we want to copy
   :param buffOffset: The offset of the pointer we want to copy
   :param length: The length of the copy

copyFromNativeByteArray
^^^^^^^^^^^^^^^^^^^^^^^

.. java:method:: public static native void copyFromNativeByteArray(byte[] dst, int startOffset, long array, int buffOffset, int length)
   :outertype: CRuntime

   Copies byte array.

   :param dst: The pointer pointing to where we want to copy
   :param startOffset: The offset for the destination
   :param array: The array we want to copy
   :param buffOffset: The offset of the pointer we want to copy
   :param length: The length of the copy

copyFromNativeCharArray
^^^^^^^^^^^^^^^^^^^^^^^

.. java:method:: public static native void copyFromNativeCharArray(char[] dst, int startOffset, long array, int buffOffset, int length)
   :outertype: CRuntime

   Copies char array.

   :param dst: The pointer pointing to where we want to copy
   :param startOffset: The offset for the destination
   :param array: The array we want to copy
   :param buffOffset: The offset of the pointer we want to copy
   :param length: The length of the copy

copyFromNativeDoubleArray
^^^^^^^^^^^^^^^^^^^^^^^^^

.. java:method:: public static native void copyFromNativeDoubleArray(double[] dst, int startOffset, long array, int buffOffset, int length)
   :outertype: CRuntime

   Copies double array.

   :param dst: The pointer pointing to where we want to copy
   :param startOffset: The offset for the destination
   :param array: The array we want to copy
   :param buffOffset: The offset of the pointer we want to copy
   :param length: The length of the copy

copyFromNativeFloatArray
^^^^^^^^^^^^^^^^^^^^^^^^

.. java:method:: public static native void copyFromNativeFloatArray(float[] dst, int startOffset, long array, int buffOffset, int length)
   :outertype: CRuntime

   Copies float array.

   :param dst: The pointer pointing to where we want to copy
   :param startOffset: The offset for the destination
   :param array: The array we want to copy
   :param buffOffset: The offset of the pointer we want to copy
   :param length: The length of the copy

copyFromNativeIntArray
^^^^^^^^^^^^^^^^^^^^^^

.. java:method:: public static native void copyFromNativeIntArray(int[] dst, int startOffset, long array, int buffOffset, int length)
   :outertype: CRuntime

   Copies int array.

   :param dst: The pointer pointing to where we want to copy
   :param startOffset: The offset for the destination
   :param array: The array we want to copy
   :param buffOffset: The offset of the pointer we want to copy
   :param length: The length of the copy

copyFromNativeLongArray
^^^^^^^^^^^^^^^^^^^^^^^

.. java:method:: public static native void copyFromNativeLongArray(long[] dst, int startOffset, long array, int buffOffset, int length)
   :outertype: CRuntime

   Copies long array.

   :param dst: The pointer pointing to where we want to copy
   :param startOffset: The offset for the destination
   :param array: The array we want to copy
   :param buffOffset: The offset of the pointer we want to copy
   :param length: The length of the copy

copyFromNativeShortArray
^^^^^^^^^^^^^^^^^^^^^^^^

.. java:method:: public static native void copyFromNativeShortArray(short[] dst, int startOffset, long array, int buffOffset, int length)
   :outertype: CRuntime

   Copies short array.

   :param dst: The pointer pointing to where we want to copy
   :param startOffset: The offset for the destination
   :param array: The array we want to copy
   :param buffOffset: The offset of the pointer we want to copy
   :param length: The length of the copy

copyIntArray
^^^^^^^^^^^^

.. java:method:: public static native void copyIntArray(long dst, int startOffset, int[] array, int buffOffset, int length)
   :outertype: CRuntime

   Copies int array.

   :param dst: The pointer pointing to where we want to copy
   :param startOffset: The offset for the destination
   :param array: The array we want to copy
   :param buffOffset: The offset of the pointer we want to copy
   :param length: The length of the copy

copyLongArray
^^^^^^^^^^^^^

.. java:method:: public static native void copyLongArray(long dst, int startOffset, long[] array, int buffOffset, int length)
   :outertype: CRuntime

   Copies long array.

   :param dst: The pointer pointing to where we want to copy
   :param startOffset: The offset for the destination
   :param array: The array we want to copy
   :param buffOffset: The offset of the pointer we want to copy
   :param length: The length of the copy

copyNativeBooleanArray
^^^^^^^^^^^^^^^^^^^^^^

.. java:method:: public static native void copyNativeBooleanArray(long dst, int startOffset, long array, int buffOffset, int length)
   :outertype: CRuntime

   Copies native boolean array.

   :param dst: The pointer pointing to where we want to copy
   :param startOffset: The offset for the destination
   :param array: The array we want to copy
   :param buffOffset: The offset of the pointer we want to copy
   :param length: The length of the copy

copyNativeByteArray
^^^^^^^^^^^^^^^^^^^

.. java:method:: public static native void copyNativeByteArray(long dst, int startOffset, long array, int buffOffset, int length)
   :outertype: CRuntime

   Copies native byte array.

   :param dst: The pointer pointing to where we want to copy
   :param startOffset: The offset for the destination
   :param array: The array we want to copy
   :param buffOffset: The offset of the pointer we want to copy
   :param length: The length of the copy

copyNativeCharArray
^^^^^^^^^^^^^^^^^^^

.. java:method:: public static native void copyNativeCharArray(long dst, int startOffset, long array, int buffOffset, int length)
   :outertype: CRuntime

   Copies native char array.

   :param dst: The pointer pointing to where we want to copy
   :param startOffset: The offset for the destination
   :param array: The array we want to copy
   :param buffOffset: The offset of the pointer we want to copy
   :param length: The length of the copy

copyNativeDoubleArray
^^^^^^^^^^^^^^^^^^^^^

.. java:method:: public static native void copyNativeDoubleArray(long dst, int startOffset, long array, int buffOffset, int length)
   :outertype: CRuntime

   Copies native double array.

   :param dst: The pointer pointing to where we want to copy
   :param startOffset: The offset for the destination
   :param array: The array we want to copy
   :param buffOffset: The offset of the pointer we want to copy
   :param length: The length of the copy

copyNativeFloatArray
^^^^^^^^^^^^^^^^^^^^

.. java:method:: public static native void copyNativeFloatArray(long dst, int startOffset, long array, int buffOffset, int length)
   :outertype: CRuntime

   Copies native float array.

   :param dst: The pointer pointing to where we want to copy
   :param startOffset: The offset for the destination
   :param array: The array we want to copy
   :param buffOffset: The offset of the pointer we want to copy
   :param length: The length of the copy

copyNativeIntArray
^^^^^^^^^^^^^^^^^^

.. java:method:: public static native void copyNativeIntArray(long dst, int startOffset, long array, int buffOffset, int length)
   :outertype: CRuntime

   Copies native int array.

   :param dst: The pointer pointing to where we want to copy
   :param startOffset: The offset for the destination
   :param array: The array we want to copy
   :param buffOffset: The offset of the pointer we want to copy
   :param length: The length of the copy

copyNativeLongArray
^^^^^^^^^^^^^^^^^^^

.. java:method:: public static native void copyNativeLongArray(long dst, int startOffset, long array, int buffOffset, int length)
   :outertype: CRuntime

   Copies native long array.

   :param dst: The pointer pointing to where we want to copy
   :param startOffset: The offset for the destination
   :param array: The array we want to copy
   :param buffOffset: The offset of the pointer we want to copy
   :param length: The length of the copy

copyNativeObject
^^^^^^^^^^^^^^^^

.. java:method:: public static native void copyNativeObject(Class<? extends NativeObject> type, long dst, long src)
   :outertype: CRuntime

   Copies one instance of \ ``type``\  from \ ``src``\  to \ ``dst``\ .

   Also documented in CRuntime.h

   :param type: The type of the native object
   :param dst: The pointer that points to the memory space to where we want to copy
   :param src: The pointer that points to the memory space from where we want to copy

copyNativeObjectArray
^^^^^^^^^^^^^^^^^^^^^

.. java:method:: public static native <T extends NativeObject> long copyNativeObjectArray(T[] array)
   :outertype: CRuntime

   Copies the native content of the NativeObject array to a new memory space.

   Also documented in CRuntime.h

   :param <T>: The element type of the Java array
   :param array: The array we want to copy
   :return: The pointer of the new native array

copyNativeShortArray
^^^^^^^^^^^^^^^^^^^^

.. java:method:: public static native void copyNativeShortArray(long dst, int startOffset, long array, int buffOffset, int length)
   :outertype: CRuntime

   Copies native short array.

   :param dst: The pointer pointing to where we want to copy
   :param startOffset: The offset for the destination
   :param array: The array we want to copy
   :param buffOffset: The offset of the pointer we want to copy
   :param length: The length of the copy

copyPointerArray
^^^^^^^^^^^^^^^^

.. java:method:: public static native void copyPointerArray(long dst, long[] array)
   :outertype: CRuntime

   Copies the native content of the \ ``array``\  to \ ``dst``\ .

   Also documented in CRuntime.h

   :param dst: Where we want to copy
   :param array: The array we want to copy

copyShortArray
^^^^^^^^^^^^^^

.. java:method:: public static native void copyShortArray(long dst, int startOffset, short[] array, int buffOffset, int length)
   :outertype: CRuntime

   Copies short array.

   :param dst: The pointer pointing to where we want to copy
   :param startOffset: The offset for the destination
   :param array: The array we want to copy
   :param buffOffset: The offset of the pointer we want to copy
   :param length: The length of the copy

createBooleanArray
^^^^^^^^^^^^^^^^^^

.. java:method:: public static native boolean[] createBooleanArray(long src, int length)
   :outertype: CRuntime

   Creates a boolean array from a pointer.

   :param src: The pointer we want to create Java array object from
   :param length: The length of the array
   :return: The Java array.

createByteArray
^^^^^^^^^^^^^^^

.. java:method:: public static native byte[] createByteArray(long src, int length)
   :outertype: CRuntime

   Creates a byte array from a pointer.

   :param src: The pointer we want to create Java array object from
   :param length: The length of the array
   :return: The Java array.

createCharArray
^^^^^^^^^^^^^^^

.. java:method:: public static native char[] createCharArray(long src, int length)
   :outertype: CRuntime

   Creates a char array from a pointer.

   :param src: The pointer we want to create Java array object from
   :param length: The length of the array
   :return: The Java array.

createDoubleArray
^^^^^^^^^^^^^^^^^

.. java:method:: public static native double[] createDoubleArray(long src, int length)
   :outertype: CRuntime

   Creates a double array from a pointer.

   :param src: The pointer we want to create Java array object from
   :param length: The length of the array
   :return: The Java array.

createFloatArray
^^^^^^^^^^^^^^^^

.. java:method:: public static native float[] createFloatArray(long src, int length)
   :outertype: CRuntime

   Creates a float array from a pointer.

   :param src: The pointer we want to create Java array object from
   :param length: The length of the array
   :return: The Java array.

createIntArray
^^^^^^^^^^^^^^

.. java:method:: public static native int[] createIntArray(long src, int length)
   :outertype: CRuntime

   Creates a int array from a pointer.

   :param src: The pointer we want to create Java array object from
   :param length: The length of the array
   :return: The Java array.

createJavaCallback
^^^^^^^^^^^^^^^^^^

.. java:method:: public static native Object createJavaCallback(long extra)
   :outertype: CRuntime

   Returns a Java instance from a given callback specified by it's extra.

   Works only with callbacks we create with \ :java:ref:`allocNativeCallback(Object,Method,long[])`\ .

   Also documented in CRuntime.h

   :param extra: Extra info pointer
   :return: The Java instance

createJavaString
^^^^^^^^^^^^^^^^

.. java:method:: public static native String createJavaString(long pointer)
   :outertype: CRuntime

   Constructs a Java string from a C string.

   Also documented in CRuntime.h

   :param pointer: The C string
   :return: The Java string

createLongArray
^^^^^^^^^^^^^^^

.. java:method:: public static native long[] createLongArray(long src, int length)
   :outertype: CRuntime

   Creates a long array from a pointer.

   :param src: The pointer we want to create Java array object from
   :param length: The length of the array
   :return: The Java array.

createNativeString
^^^^^^^^^^^^^^^^^^

.. java:method:: public static native long createNativeString(String string)
   :outertype: CRuntime

   Constructs a C string from a Java string.

   Also documented in CRuntime.h

   :param string: The Java string
   :return: The native string

createNativeStringArray
^^^^^^^^^^^^^^^^^^^^^^^

.. java:method:: public static native long createNativeStringArray(String[] strings)
   :outertype: CRuntime

   Constructs a native string array from a Java string array.

   The C string array will be constructed into one continuous memory block: <ptr1>|<ptr2>|...|<first char of first string>|<second char of first string>|...|
   <first char of second string>|... Because of this we can release every C string array we created by doing so with only one free call.

   Also documented in CRuntime.h

   :param strings: Java string array we want to convert
   :return: The native string array

createShortArray
^^^^^^^^^^^^^^^^

.. java:method:: public static native short[] createShortArray(long src, int length)
   :outertype: CRuntime

   Creates a short array from a pointer.

   :param src: The pointer we want to create Java array object from
   :param length: The length of the array
   :return: The Java array.

createStrongPointer
^^^^^^^^^^^^^^^^^^^

.. java:method:: public static Pointer createStrongPointer(long peer, boolean owned)
   :outertype: CRuntime

   Creates a \ :java:ref:`Pointer`\  object.

   If \ ``owned == true``\ , then it will create a \ :java:ref:`Pointer`\  with strongReleaser as its releaser.

   :param peer: The C pointer
   :param owned: Is it a strong ownership?
   :return: The created \ :java:ref:`Pointer`\  object

deallocNativeCallback
^^^^^^^^^^^^^^^^^^^^^

.. java:method:: public static native void deallocNativeCallback(long extra)
   :outertype: CRuntime

   Releases a native callback specified by it's extra.

   Works only with callbacks we create with \ :java:ref:`allocNativeCallback(Object,Method,long[])`\ .

   Also documented in CRuntime.h

   :param extra: Extra information needed for the callback

doRegistration
^^^^^^^^^^^^^^

.. java:method:: @Override protected void doRegistration(Class<?> type)
   :outertype: CRuntime

   Process the Java class.

   This will register native handlers for native methods. Handles field getters, setters, checkers and C functions.

free
^^^^

.. java:method:: public static native void free(long peer)
   :outertype: CRuntime

   Method for using C free function from java.

   Also documented in CRuntime.h

   :param peer: The memory space to release

getByteBufferPointer
^^^^^^^^^^^^^^^^^^^^

.. java:method:: public static native long getByteBufferPointer(ByteBuffer buffer)
   :outertype: CRuntime

   Gets the native pointer from a ByteBuffer.

   :param buffer: The buffer
   :return: The pointer

getCharBufferPointer
^^^^^^^^^^^^^^^^^^^^

.. java:method:: public static native long getCharBufferPointer(CharBuffer buffer)
   :outertype: CRuntime

   Gets the native pointer from a CharBuffer.

   :param buffer: The buffer
   :return: The pointer

getDefaultUnboxPolicy
^^^^^^^^^^^^^^^^^^^^^

.. java:method:: @Override public byte getDefaultUnboxPolicy()
   :outertype: CRuntime

   Returns the default unbox policy for variadic arguments.

   For C Runtime the policy is unboxing, because this runtime does not have any object types.

   :return: The default unbox policy.

getDoubleBufferPointer
^^^^^^^^^^^^^^^^^^^^^^

.. java:method:: public static native long getDoubleBufferPointer(DoubleBuffer buffer)
   :outertype: CRuntime

   Gets the native pointer from a DoubleBuffer.

   :param buffer: The buffer
   :return: The pointer

getFloatBufferPointer
^^^^^^^^^^^^^^^^^^^^^

.. java:method:: public static native long getFloatBufferPointer(FloatBuffer buffer)
   :outertype: CRuntime

   Gets the native pointer from a FloatBuffer.

   :param buffer: The buffer
   :return: The pointer

getIntBufferPointer
^^^^^^^^^^^^^^^^^^^

.. java:method:: public static native long getIntBufferPointer(IntBuffer buffer)
   :outertype: CRuntime

   Gets the native pointer from an IntBuffer.

   :param buffer: The buffer
   :return: The pointer

getLongBufferPointer
^^^^^^^^^^^^^^^^^^^^

.. java:method:: public static native long getLongBufferPointer(LongBuffer buffer)
   :outertype: CRuntime

   Gets the native pointer from a LongBuffer.

   :param buffer: The buffer
   :return: The pointer

getShortBufferPointer
^^^^^^^^^^^^^^^^^^^^^

.. java:method:: public static native long getShortBufferPointer(ShortBuffer buffer)
   :outertype: CRuntime

   Gets the native pointer from a ShortBuffer.

   :param buffer: The buffer
   :return: The pointer

loadBoolean
^^^^^^^^^^^

.. java:method:: public static native boolean loadBoolean(long src, int idx)
   :outertype: CRuntime

   Loads a boolean.

   :param src: From we want to load
   :param idx: Index of the loading
   :return: The loaded boolean value

loadByte
^^^^^^^^

.. java:method:: public static native byte loadByte(long src, int idx)
   :outertype: CRuntime

   Loads a byte.

   :param src: From we want to load
   :param idx: Index of the loading
   :return: The loaded byte value

loadChar
^^^^^^^^

.. java:method:: public static native char loadChar(long src, int idx)
   :outertype: CRuntime

   Loads a char.

   :param src: From we want to load
   :param idx: Index of the loading
   :return: The loaded char value

loadDouble
^^^^^^^^^^

.. java:method:: public static native double loadDouble(long src, int idx)
   :outertype: CRuntime

   Loads a double.

   :param src: From we want to load
   :param idx: Index of the loading
   :return: The loaded double value

loadFloat
^^^^^^^^^

.. java:method:: public static native float loadFloat(long src, int idx)
   :outertype: CRuntime

   Loads a float.

   :param src: From we want to load
   :param idx: Index of the loading
   :return: The loaded float value

loadInt
^^^^^^^

.. java:method:: public static native int loadInt(long src, int idx)
   :outertype: CRuntime

   Loads an int.

   :param src: From we want to load
   :param idx: Index of the loading
   :return: The loaded int value

loadLong
^^^^^^^^

.. java:method:: public static native long loadLong(long src, int idx)
   :outertype: CRuntime

   Loads a long.

   :param src: From we want to load
   :param idx: Index of the loading
   :return: The loaded long value

loadPointer
^^^^^^^^^^^

.. java:method:: public static native long loadPointer(long ptr, int idx)
   :outertype: CRuntime

   Loads a pointer from \ ``ptr``\  with index \ ``idx``\ .

   Also documented in CRuntime.h

   :param ptr: The pointer from where we want to load
   :param idx: The index we want to offset with
   :return: The loaded pointer.

loadShort
^^^^^^^^^

.. java:method:: public static native short loadShort(long src, int idx)
   :outertype: CRuntime

   Loads a short.

   :param src: From we want to load
   :param idx: Index of the loading
   :return: The loaded short value

memcpy
^^^^^^

.. java:method:: public static native void memcpy(long dst, long src, int length)
   :outertype: CRuntime

   Bride for native memcpy.

   Also documented in CRuntime.java

   :param dst: the pointer we want to copy to
   :param src: the pointer we want to copy from
   :param length: number of bytes to copy

memcpy
^^^^^^

.. java:method:: public static void memcpy(VoidPtr dst, ConstVoidPtr src, int length)
   :outertype: CRuntime

   Bride for native memcpy.

   :param dst: the pointer we want to copy to
   :param src: the pointer we want to copy from
   :param length: number of bytes to copy

memset
^^^^^^

.. java:method:: public static native void memset(long dst, int idx, int length, byte value)
   :outertype: CRuntime

   Bride for native memset.

   Also documented in CRuntime.java

   :param dst: The pointer we want to do memset on
   :param idx: The offset of the memsetting
   :param length: The length of the memsetting
   :param value: The value by we want to overwrite

memset
^^^^^^

.. java:method:: public static void memset(VoidPtr ptr, int idx, int length, byte value)
   :outertype: CRuntime

   Bride for native memset.

   :param ptr: the pointer we want to memset
   :param idx: The offset of the memsetting
   :param length: The length of the memsetting
   :param value: The value by we want to overwrite

sizeOfLong
^^^^^^^^^^

.. java:method:: public static native int sizeOfLong()
   :outertype: CRuntime

   Returns the long size for the current architecture.

   Also documented in CRuntime.h

   :return: The long size

sizeOfNativeObject
^^^^^^^^^^^^^^^^^^

.. java:method:: public static native long sizeOfNativeObject(Class<? extends NativeObject> type)
   :outertype: CRuntime

   Returns the native size of a NativeObject.

   Also documented in CRuntime.h

   :param type: The NativeObject we want to get the size of
   :return: The size of the NativeObject

sizeOfPointer
^^^^^^^^^^^^^

.. java:method:: public static native int sizeOfPointer()
   :outertype: CRuntime

   Returns the pointer size for the current architecture.

   Also documented in CRuntime.h

   :return: The pointer size

sizeOfWCharT
^^^^^^^^^^^^

.. java:method:: public static native int sizeOfWCharT()
   :outertype: CRuntime

   Returns the wchar_t size for the current architecture.

   Also documented in CRuntime.h

   :return: The wchar_t size

storeBoolean
^^^^^^^^^^^^

.. java:method:: public static native void storeBoolean(long dst, int idx, boolean value)
   :outertype: CRuntime

   Stores a boolean value.

   :param dst: The pointer pointing to where we want to store
   :param idx: The index of the storing
   :param value: The boolean value we want to store

storeByte
^^^^^^^^^

.. java:method:: public static native void storeByte(long dst, int idx, byte value)
   :outertype: CRuntime

   Stores a byte value.

   :param dst: The pointer pointing to where we want to store
   :param idx: The index of the storing
   :param value: The byte value we want to store

storeChar
^^^^^^^^^

.. java:method:: public static native void storeChar(long dst, int idx, char value)
   :outertype: CRuntime

   Stores a char value.

   :param dst: The pointer pointing to where we want to store
   :param idx: The index of the storing
   :param value: The char value we want to store

storeDouble
^^^^^^^^^^^

.. java:method:: public static native void storeDouble(long dst, int idx, double value)
   :outertype: CRuntime

   Stores a double value.

   :param dst: The pointer pointing to where we want to store
   :param idx: The index of the storing
   :param value: The double value we want to store

storeFloat
^^^^^^^^^^

.. java:method:: public static native void storeFloat(long dst, int idx, float value)
   :outertype: CRuntime

   Stores a float value.

   :param dst: The pointer pointing to where we want to store
   :param idx: The index of the storing
   :param value: The float value we want to store

storeInt
^^^^^^^^

.. java:method:: public static native void storeInt(long dst, int idx, int value)
   :outertype: CRuntime

   Stores an int value.

   :param dst: The pointer pointing to where we want to store
   :param idx: The index of the storing
   :param value: The int value we want to store

storeLong
^^^^^^^^^

.. java:method:: public static native void storeLong(long dst, int idx, long value)
   :outertype: CRuntime

   Stores a long value.

   :param dst: The pointer pointing to where we want to store
   :param idx: The index of the storing
   :param value: The long value we want to store

storePointer
^^^^^^^^^^^^

.. java:method:: public static native void storePointer(long dst, int idx, long value)
   :outertype: CRuntime

   Stores \ ``value``\  to \ ``ptr``\  with index \ ``idx``\ .

   Also documented in CRuntime.h

   :param dst: The pointer to where we want to store
   :param idx: The index we want to offset with
   :param value: The value we want to store

storeShort
^^^^^^^^^^

.. java:method:: public static native void storeShort(long dst, int idx, short value)
   :outertype: CRuntime

   Stores a short value.

   :param dst: The pointer pointing to where we want to store
   :param idx: The index of the storing
   :param value: The short value we want to store

tryToDisposeCallback
^^^^^^^^^^^^^^^^^^^^

.. java:method:: public void tryToDisposeCallback(Object callback)
   :outertype: CRuntime

   Disposes a callback.

   Removes the cached callback for a Java instance and does cleanup.

   :param callback: The Java instance

