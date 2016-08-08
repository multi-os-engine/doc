.. java:import:: java.lang.reflect Constructor

.. java:import:: java.util HashMap

.. java:import:: java.util Map

NativeRuntime
=============

.. java:package:: org.moe.natj.general
   :noindex:

.. java:type:: public abstract class NativeRuntime

   The parent of every NativeRuntime.

   The runtimes are responsible for handling language environments like C, Objective-C and others. The runtimes have three kinds of default \ :java:ref:`Mapper`\  implementations: object, string and callback mappers. Whenever a native method or one of its arguments has no explicitly given mapper specified with the \ :java:ref:`org.moe.natj.general.ann.MappedReturn`\  or \ :java:ref:`org.moe.natj.general.ann.Mapped`\  annotations, then NatJ will use one of these default mappers of the determined responsible runtime instance.

Fields
------
callbackMapper
^^^^^^^^^^^^^^

.. java:field:: protected Mapper callbackMapper
   :outertype: NativeRuntime

   Default mapper for handling callbacks.

objectMapper
^^^^^^^^^^^^

.. java:field:: protected Mapper objectMapper
   :outertype: NativeRuntime

   Default mapper for handling objects.

stringMapper
^^^^^^^^^^^^

.. java:field:: protected Mapper stringMapper
   :outertype: NativeRuntime

   Default mapper for handling strings.

Constructors
------------
NativeRuntime
^^^^^^^^^^^^^

.. java:constructor:: protected NativeRuntime(Class<?> objectMapperClass, Class<?> stringMapperClass, Class<?> callbackMapperClass)
   :outertype: NativeRuntime

   Constructs the runtime and registers the default mappers.

   :param objectMapperClass: The default mapper for objects
   :param stringMapperClass: The default mapper for strings
   :param callbackMapperClass: The default mapper for callbacks

Methods
-------
createMapper
^^^^^^^^^^^^

.. java:method:: protected Mapper createMapper(Class<?> mapperClass)
   :outertype: NativeRuntime

   Constructs a mapper of the given \ ``mapperClass``\  class.

   :param mapperClass: The mapper class we want to instantiate
   :return: The instance

doRegistration
^^^^^^^^^^^^^^

.. java:method:: protected abstract void doRegistration(Class<?> type)
   :outertype: NativeRuntime

   Registers a class.

   :param type: The type we want to register.

getCallbackMapper
^^^^^^^^^^^^^^^^^

.. java:method:: public Mapper getCallbackMapper()
   :outertype: NativeRuntime

   Returns the default mapper for callbacks.

   :return: The default callback mapper.

getDefaultUnboxPolicy
^^^^^^^^^^^^^^^^^^^^^

.. java:method:: public abstract byte getDefaultUnboxPolicy()
   :outertype: NativeRuntime

   Returns the default unbox policy for variadic arguments.

   :return: The default unbox policy.

getMapper
^^^^^^^^^

.. java:method:: public Mapper getMapper(Class<?> mapperClass)
   :outertype: NativeRuntime

   Returns an instance of a the given \ ``mapperClass``\  class.

   The instances are cached in the \ :java:ref:`class2mapper`\  collection, so every class will have only one instance.

   :param mapperClass: The mapper class we want to get an instance of
   :return: The instance

getObjectMapper
^^^^^^^^^^^^^^^

.. java:method:: public Mapper getObjectMapper()
   :outertype: NativeRuntime

   Returns the default mapper for objects.

   :return: The default object mapper.

getStringMapper
^^^^^^^^^^^^^^^

.. java:method:: public Mapper getStringMapper()
   :outertype: NativeRuntime

   Returns the default mapper for strings.

   :return: The default string mapper.

tryToDisposeCallback
^^^^^^^^^^^^^^^^^^^^

.. java:method:: public abstract void tryToDisposeCallback(Object callback)
   :outertype: NativeRuntime

   Disposes the callbacks created for the given object.

   :param callback: The callback we want to dispose.

