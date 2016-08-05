CxxObject
=========

.. java:package:: org.moe.natj.cxx
   :noindex:

.. java:type:: public interface CxxObject

   Base class for every C++ composite type.

Methods
-------
_cxx_rt_delete
^^^^^^^^^^^^^^

.. java:method::  void _cxx_rt_delete()
   :outertype: CxxObject

   Call to the destructor.

_cxx_rt_peer
^^^^^^^^^^^^

.. java:method::  long _cxx_rt_peer()
   :outertype: CxxObject

   Returns the underlying C++ peer to this object.

   :return: peer of this object

cxxGetDirectInterface
^^^^^^^^^^^^^^^^^^^^^

.. java:method::  <T extends CxxObject> T cxxGetDirectInterface(Class<T> cls)
   :outertype: CxxObject

   Returns a direct interface to the specified class.

   :param cls: class
   :return: direct interface

cxxGetUnsafeDirectInterface
^^^^^^^^^^^^^^^^^^^^^^^^^^^

.. java:method::  <T extends CxxObject> T cxxGetUnsafeDirectInterface(Class<T> cls)
   :outertype: CxxObject

   Returns a direct interface to the specified class without checking compatibility.

   :param cls: class
   :return: direct interface

cxxGetUnsafeImplInterface
^^^^^^^^^^^^^^^^^^^^^^^^^

.. java:method::  <T extends CxxObject> T cxxGetUnsafeImplInterface(Class<T> cls)
   :outertype: CxxObject

   Returns an implementing interface to the specified class without checking compatibility.

   :param cls: class
   :return: implementing interface

cxxIsConstInterface
^^^^^^^^^^^^^^^^^^^

.. java:method::  boolean cxxIsConstInterface()
   :outertype: CxxObject

   Tells whether or not this object is a const interface or not.

   :return: true if this object is a const interface otherwise false

cxxIsDirectInterface
^^^^^^^^^^^^^^^^^^^^

.. java:method::  boolean cxxIsDirectInterface()
   :outertype: CxxObject

   Tells whether or not this object is a direct interface or not.

   :return: true if this object is a direct interface otherwise false

cxxIsIdenticalTo
^^^^^^^^^^^^^^^^

.. java:method::  boolean cxxIsIdenticalTo(Object other)
   :outertype: CxxObject

   Tells whether or not this object is identical to another.

   :param other: other object
   :return: true when identical otherwise false

