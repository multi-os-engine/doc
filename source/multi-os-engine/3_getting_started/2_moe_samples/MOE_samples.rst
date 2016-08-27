=======================
Multi-OS Engine Samples
=======================

The Multi-OS Engine samples live in 2 GitHub repositories:

* Java samples: https://github.com/multi-os-engine/moe-samples-java
* Kotlin samples: https://github.com/multi-os-engine/moe-samples-kotlin

To import a sample project into Android Studio, first clone the repository from GitHub and then choose "Import project (Eclipse, ADT, Gradle, etc.)" from the "Welcome window"

.. image:: images/sample_import.png

Select the sample folder (where you have cloned the sample repository from GitHub)

To run or debug the sample on iOS Simulator or iOS device, select "Run"->"Edit Configuration" from Android Studio menu bar

.. image:: images/add_build_configuration.png

Click on "+" and choose "MOE iOS Application":

.. image:: images/add_build_configuration2.png

You can select available SDK version, debug port and type of the simulator to run:

.. image:: images/add_build_configuration3.png

Also you can select physical iOS device connected to the host:

.. image:: images/add_build_configuration4.png

Click "run button" to run sample on a simulator or device:

.. image:: images/run.png

Or click "debug button" to debug sample on simulator or device:

.. image:: images/debug.png

Build log files could be found in "<project_root>/<ios_module>/build/logs" folder.

.. toctree::
    :maxdepth: 2

