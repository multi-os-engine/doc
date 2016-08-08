=======================
Multi-OS Engine Samples
=======================

There are a number of samples that are included in the package and you will find them in your installation directory.

Additional samples are posted to GitHub repository here: `GitHub`_

.. _GitHub: https://github.com/moe-java-samples

To import a sample project into Android Studio, choose "Import project (Eclipse, ADT, Gradle, etc.)" from the "Welcome window"

.. image:: images/sample_import.png

Select the sample folder (/Applications/Intel/multi_os_engine/samples/<sample_name> on macOS and C:/Intel/multi_os_engine/samples/<sample_name> on Windows)

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
