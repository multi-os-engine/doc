==================================
Troubleshooting Compilation Errors
==================================

When adding third-party frameworks and libraries to your application, you must specify all the required linker flags, without duplication.

If you encounter compilation errors, check that all the linker flags are specified correctly. In the Android Studio, update the MOE_CUSTOM_OTHER_LDFLAGS variable in the custom.xcconfig file, separating linker flags by a whitespace delimiter:

.. image:: images/trouble1.png

.. toctree::
    :maxdepth: 1