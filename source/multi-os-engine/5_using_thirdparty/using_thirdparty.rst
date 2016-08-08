=============================================
Using Third Party Native Libraries for iOS*
=============================================

Intel's Multi-OS Engine Technology Preview provides the WrapNatJGen tool, which can help you efficiently use native methods in your Java*-based applications. With WrapNatJGen, you can:

•   Generate Java* bindings for selected native header files.
•   Generate JAR files that include precompiled Java bindings for frameworks or libraries, as well as additional resources or linker flags if required.
•   Generate JAR files based on CocoaPods* specs.


You can reuse the generated JAR files in different projects on different systems. You just need to link the JAR file to the Multi-OS Engine module in Android* Studio when building your application. Once compiled, the JAR content gets copied into the final application file.

WrapNatJGen is a wrapper around a low-level NatJGen tool that generates bindings from the selected header files using NatJ run-time libraries. You can choose to work with WrapNatJGen from the command-line interface, or use Multi-OS Engine context menus integrated into the Android Studio GUI.

See Also

.. toctree::
    :maxdepth: 2

    1_wrap_cmd/wrap_cmd
    2_wrap_android/wrap_android
    3_troubleshooting/troubleshooting