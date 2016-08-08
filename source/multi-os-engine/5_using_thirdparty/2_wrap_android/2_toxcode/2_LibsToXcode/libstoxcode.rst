==============================================
Linking Third-Party Libraries to Xcode Project
==============================================

To generate a JAR file for a static library, do the following:

1.   Open your project in Android Studio.
2.   In the Multi-OS Engine module, right-click the lib folder and select Multi-OS Engine Actions > Link Third-Party Libraries to Xcode from the context menu.

.. image:: images/libs1.png

3.   In the opened dialog box, specify the details about the JAR file package:
		In the Library tab:
			•   Specify the native header files to generate Java bindings.
			•   Select the library for JAR file generation.

			.. image:: images/libs2.png

4.   In the Dependencies tab:
		•   Specify the names of the required system frameworks in the Frameworks field and click the Add button. For example, CoreGraphics
		•   Specify additional linker flags in the Linker Flags field and click the Add button. For example, -lz -ObjC

		.. image:: images/libs3.png

5.   In the Copy bundle resources tab, specify all additional resources to copy into the final .app file.
	
	.. image:: images/libs4.png

6.   Click OK to start the JAR file generation. All the generated JAR files will be located in the lib directory under the Multi-OS Engine module.

.. toctree::
    :maxdepth: 1