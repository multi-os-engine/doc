===================================
Linking JAR Files to Xcode Project
===================================

Using WrapNatJGen, you can generate JAR files for frameworks and libraries specified either directly or using CocoaPods* specs. Such JAR files will include precompiled Java* bindings for the selected frameworks or libraries, as well as additional resources or linker flags if required. All the generated JAR files appear in the lib directory under the Multi-OS Engine module.

.. toctree::
    :maxdepth: 1

    1_FrameworkToXcode/frameworktoxcode
    2_LibsToXcode/libstoxcode
    3_UsingCocoapods/cocoapods


You can reuse the generated JAR files in different projects on different systems. You just need to link the JAR file to the Multi-OS Engine module in Android Studio when building your application. Once compiled, the JAR content gets copied into the final application file.