============================================
Generating Java* Bindings for Native Headers
============================================

To generate Java* bindings for native header files included into your project, do the following:

Open your project in Android Studio.
Right-click the native header you would like to generate Java bindings for, and select Multi-OS Engine Actions > Generate Bindings from the context menu.
If you would like to generate bindings for more than one header, you can hold Cmd to select several headers, or right-click the folder containing all the headers you need.
In the opened dialog box, you can specify the package name for the generated bindings. By default, the WrapNatJGen tool uses the org.moe package name.
Click OK to start the Java binding generation. The WrapNatJGen tool places the generated bindings into the /src/main/java/<package-name> under the Multi-OS Engine module.
If you do not want to include native headers into your project, you can use them as prototypes to generate bindings that will implement all the native methods in Java. For details, see the `Generating Java Bindings Based on Prototypes <bindingsproto.html>`_ topic.

.. toctree::
    :maxdepth: 1