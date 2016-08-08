=======================================================
Using WrapNatJGen from the Android* Studio Context Menu
=======================================================

You can access all features of the WrapNatJGen tool in Android* Studio through the Multi-OS Engine Actions context menu, which offers the following submenus:

•   Generate Bindings - generates or updates Java* classes/interfaces/enums based on Objective-C* code, marking all methods in Java as native.
•   Synchronize to Java - generates or updates Java classes/interfaces/enums  based on changes made in Objective-C stubs via Xcode*.
•   Link third party framework to Xcode - automatically generates a JAR file that contains Java bindings and a framework. The framework is linked to Xcode project when the application is built.
•   Link third party libraries to Xcode - automatically generates a JAR file that contains Java bindings and a static library. The static library is linked to Xcode project when the application is built.
•   Link CocoaPods to Xcode - automatically generates a JAR file that contains Java bindings and libraries for the specified pods.

See Also

.. toctree::
    :maxdepth: 1

    1_bindings/bindings
    1_bindings/bindingsproto
    2_toxcode/toxcode