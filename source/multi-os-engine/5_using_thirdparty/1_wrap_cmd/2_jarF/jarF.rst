=============================================
Generating JAR Files from the Command Line
=============================================

Using WrapNatJGen, you can generate JAR files for frameworks and libraries specified either directly or using CocoaPods specs. Such JAR files will include precompiled Java* bindings for the selected frameworks or libraries, as well as additional resources or linker flags if required.

You can reuse the generated JAR files in different projects on different systems. You just need to link the JAR file to the Multi-OS Engine module in Android* Studio when building your application. Once compiled, the JAR content gets copied into the final application file.

The sections below explain how to generated JAR files from the command line.


Creating JAR Files for Frameworks
=================================

To generate JAR files for frameworks with the WrapNatJGen tool, run the following command line:

::

	$ java -jar wrapnatjgen.jar --framework <<em>framework-path</em>> [--package-name <<em>package-name</em>>] [--headers <<em>headers-path</em>>] [--bundle <<em>resources-path</em>>] [<code>--ld-flags <<em>file-path</em>>] </code>--output-file-path <<em>jar-file</em>>

where :

.. image:: images/jarf1.png


Examples:
=========

::

	$ java -jar wrapnatjgen.jar --framework /User/Download/Realm.framework --output-file-path /User/project/TestProject/ios/lib/Realm.jar

This example generates Realm.jar that includes Java bindings for all the headers available in the input Realm.framework.


Creating JAR Files for Libraries
================================

To generate JAR files for libraries with WrapNatJGen, run the following command line:

::

	$ java -jar wrapnatjgen.jar --library <<em>library-path</em>> --headers <<em>headers-path</em>> [--package-name <<em>package-name</em>>] [--bundle <<em>resources-path</em>>] [<code>--ld-flags <<em>file-path</em>>]</code>--output-file-path <<em>jar-file</em>>

where :

.. image:: images/jarf2.png



See Also

.. toctree::
    :maxdepth: 1