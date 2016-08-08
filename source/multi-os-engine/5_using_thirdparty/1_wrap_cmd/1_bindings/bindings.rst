=========================
Generating Java* Bindings
=========================

The WrapNatJGen tool provides the following options for generating Java* bindings:

•   Generate Java bindings for native headers that you will compile with your project. In this case, all methods in the resulting Java files will be marked as native.
•   Use native headers as prototypes to generate bindings that will implement all the native methods in Java.  Use this option if you want to implement your code in Java.  


Generating Java Bindings for Native Headers
===========================================

To generate Java bindings for native headers, use the following command line:

::

	$ java -jar wrapnatjgen.jar --path-to-project <<em>project-dir</em>> [--package-name <<em>package-name</em>>] --headers <<em>headers-dir</em>>

where :

#. ``--path-to-project <project-dir>`` : Specifies the path to the output directory that will contain the generated Java bindings under the ``<project-dir>/src/main/java/<package-name>`` subdirectory.
#. ``--package-name <package-name>`` : Optional. Sets the package name for the generated files. By default, the package name is org.moe.
#. ``--headers <headers-dir>`` : Specifies the path to the native header files for which Java bindings will be generated. You can specify the path to a single header, a directory containing all the headers for binding generation, or paths to several headers or directories separated by colons.

Examples:
=========

::

	java -jar wrapnatjgen.jar --path-to-project /User/project/TestProject  --headers /User/project/TestProject /ios/xcode/ios/my_header.h

This example generates Java bindings for my_header.h and places them into the /User/project/TestProject/src/main/java/org/moe directory.

::

	java -jar wrapnatjgen.jar --path-to-project /User/project/TestProject  --headers /User/project/TestProject/ios/xcode/ios/my_first_header.h:/User/project/TestProject/ios/xcode/ios/my_second_header.h

This example generates Java bindings for my_first_header.h and  my_second_header.h  and places them into the /User/project/TestProject/src/main/java/org/moe directory.

::

	java -jar wrapnatjgen.jar --path-to-project /User/project/TestProject  --headers /User/project/TestProject/ios/xcode/ios

This example generates Java bindings for all headers located in the /User/project/TestProject/ios/xcode/ios folder and places the generated files into the /User/project/TestProject/src/main/java/org/moe directory.


Generating Java* Bindings Based on Prototypes
=============================================

To generate Java bindings based on prototype native headers, use the following command line:

::

	java -jar wrapnatjgen.jar  --path-to-project <<em>project-dir</em>> [--package-name <<em>package-name</em>>]  --headers <<em>headers-path</em>> --create-from-prototype 

where :

#. ``--path-to-project <project-dir>`` : Specifies the path to the output directory that will contain the generated Java bindings under the <project-dir>/src/main/java/<package-name> subdirectory.
#. ``--package-name <package-name>`` : Optional. Sets the package name for the generated files. By default, the package name is org.moe.
#. ``--headers <headers-path>`` : Specifies the path to the native header files for which Java bindings will be generated. You can specify the path to a single header, a directory containing all the headers for binding generation, or paths to several headers or directories separated by colons.
#. ``--create-from-prototype`` : Indicates that the specified header files should be treated as prototypes. Use this option if you want to implement your code in Java.

Examples:
=========

::

	java -jar wrapnatjgen.jar --path-to-project /User/project/TestProject  --headers /User/project/TestProject/ios/xcode/ios/my_header.h --create-from-prototype

This example generates a Java implementation of the native methods in the my_header.h and places the resulting files into the  /User/project/TestProject/src/main/java/org/moe directory.

$ java -jar wrapnatjgen.jar --path-to-project /User/project/TestProject --package-name ios.c --headers /User/project/TestProject/ios/xcode/ios --create-from-prototype

This example generates a Java implementation of the native methods in the header files located in the /User/project/TestProject/ios/xcode/ios folder and places the resulting files into the  /User/project/TestProject/src/main/java/ios/c directory.

.. toctree::
    :maxdepth: 1