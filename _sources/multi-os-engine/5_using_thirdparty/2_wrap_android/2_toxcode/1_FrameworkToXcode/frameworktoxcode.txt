===============================================
Linking Third-Party Frameworks to Xcode Project
===============================================

To generate a JAR file for a framework, do the following:

1.   Open your project in Android Studio.
2.   In the Multi-OS Engine module, right-click the src folder and select Multi-OS Engine Actions > Link Third-Party Framework to Xcode from the context menu.

.. image:: images/frame1.png

3.   In the opened dialog box, specify the details about the JAR file package:
		In the Framework tab:
			•   Specify the framework which will be packed in JAR file.
			•   Check the Force load check box if required. For example, if you need to add static libraries to your JAR file.

			.. image:: images/frame2.png

		In the Dependencies tab:
			•   Specify the names of the required system frameworks in the Frameworks field and click the Add button. For example, CoreGraphics
			•   Specify additional linker flags in the Linker Flags field and click the Add button. For example, -lz -ObjC

			.. image:: images/frame3.png

		In the Copy bundle resources tab, specify all additional resources to copy into the final .app file.

		.. image:: images/frame4.png

4.   Click OK to start the JAR file generation. All the generated JAR files will be located in the lib directory under the Multi-OS Engine module.

.. toctree::
    :maxdepth: 1