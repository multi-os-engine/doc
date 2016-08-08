=============================================
Using WrapNatJGen from the Command-Line Interface
=============================================

You can use the WrapNatJGen tool to complete the following tasks from the command line:

•   Generate Java* Bindings for native headers or based on prototypes.
•   Generate JAR Files for libraries, frameworks, or pods.

The WrapNatJGen tool has the following command-line syntax:

::

	<code>$ java -jar wrapnatjgen.jar [options]</code>

where ``options`` are as follows:

#. ``--path-to-project <project-dir>`` : Specifies the path to the output directory that will contain the generated Java bindings under the <project-dir>/src/main/java/<package-name> subdirectory.This option is mandatory for generating Java bindings.
#. ``--package-name <package-name>`` : Optional. Sets the package name for the generated files. By default, the package name is org.moe.
#. ``--output-file-path <jar-file>`` : Specifies the path to the output JAR file with the generated bindings and the input libraries or frameworks.
#. ``--framework <framework-path>`` : Specifies one or more input frameworks for JAR file generation. Paths to several frameworks are separated by colons.You cannot use this option together with the ``--library`` or ``--pod`` options.
#. ``--library <library-path>`` : Specifies one or more input libraries for JAR file generation. Paths to several libraries are separated by colons. You cannot use this option together with the ``--framework`` or ``--pod`` options.
#. ``--headers <header-path>`` : Specifies the path to the native header files for which Java bindings will be generated. You can specify the path to a single header, a directory containing all the headers for binding generation, or paths to several headers or directories separated by colons. You can omit this option if you are building a JAR file for a framework and you intend to use all the header files included into this framework.
#. ``--ld-flags <file-path>`` : Optional. Specifies the path to a TXT file that lists additional flags to pass to the linker. If you need to specify more than one flag, separate the flags by semicolons. For example: ``-framework Foundation;-framework CoreGraphics`` Use this option if you need to specify external dependencies for your final application, such as calls to third-party or system library functions. Failing to specify the required linker flags may cause compilation and run-time errors.
#. ``--create-from-prototype`` : Indicates that the specified header files should be treated as prototypes. Use this option if you want to implement your code in Java.  You can only use this option together with the ``--path-to-project`` and ``--headers`` options.
#. ``--bundle <resources-path>`` : Optional. Specifies the path to additional resources to copy into the final application, such as bundles or separate resource files your libraries or frameworks refer to. You can only use this option together with the ``--framework`` or  ``--library`` options.
#. ``--pod <filename>`` : Provides the path to a TXT file that lists the pod name and subspecs, if applicable. You should specify this information in the following format: ``pod: <pod name>`` ``subspec: [<subspec name>]``
#. ``--help`` : Prints command-line help for WrapNatJGen standard options.

See Also

.. toctree::
    :maxdepth: 1

    1_bindings/bindings
    2_jarF/jarF