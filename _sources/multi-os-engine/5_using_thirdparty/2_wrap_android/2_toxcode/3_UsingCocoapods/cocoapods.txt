================================================
Generating and Linking JAR Files Using CocoaPods
================================================

Pre-requisites:

Make sure to install CocoaPods dependency manager on your system.

You can generate JAR files for frameworks or libraries available in CocoaPods repository. All the information that your framework or library requires get packaged into the JAR file. For example, resources or additional linker flags. All dependencies specified in the spec also get packaged into separate JAR files.

To generate JAR files using CocoaPods specs, do the following:

1.   Open your project in Android* Studio.
2.   In the Multi-OS Engine module, right-click the lib folder and select Multi-OS Engine Actions > Link CocoaPods to Xcode from the context menu.
3.   In the opened dialog box, specify the pod name and the subspec:

.. image:: images/cocoa1.png

4.   Click OK to start the JAR file generation. All the generated JAR files will be located in the lib directory under the Multi-OS Engine module.

.. toctree::
    :maxdepth: 1