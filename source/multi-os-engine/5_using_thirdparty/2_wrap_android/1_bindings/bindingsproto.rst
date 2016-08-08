=============================================
Generating Java Bindings Based on Prototypes
=============================================

If you do not want to include native headers into your project, you can use them as prototypes to generate bindings that will implement all their native methods in Java:

#. Open your project in Android* Studio.
#. Right-click the native header you would like to use as a prototype for Java bindings, and select Multi-OS Engine Actions > Synchronize to Java from the context menu. If you would like to generate bindings for more than one header, you can hold Cmd to select several headers, or right-click the folder that contains all the headers you need. 
#. In the opened dialog box, you can specify the package name for the generated bindings. By default, the WrapNatJGen tool uses the org.moe package name.
#. Click OK to start the binding generation. The WrapNatJGen tool generates Java bindings based on the methods and interfaces indicated the .xib and .storyboard files for your selected headers. The resulting files appear in the /src/main/java/<package-name> folder under the Multi-OS Engine module.

.. toctree::
    :maxdepth: 1