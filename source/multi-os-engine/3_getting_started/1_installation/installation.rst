.. _getting-started-installation:

============
Installation
============

Remove old versions of the Multi-OS Engine
------------------------------------------

For Intel Builds: Run ``/Applications/intel/multi_os_engine/uninstall.app``

For the OSS build from GitHub:

* Remove the MOE plugins manually from Android Studio
* Remove the MOE_HOME settings from ``.bash_profile``
* Remove the MOE_HOME environment variable from the system with launchctl

	* ``launchctl unsetenv MOE_HOME``

* Remove the launch plist

	* ``rm -f $HOME/Library/LaunchAgents/org.moe.environment.plist``

* Remove the MOE_HOME entry from ~/Library/Preferences/com.apple.dt.Xcode.plist (edit it with Xcode)
* (Optional) Remove the SDK installation folder
* Reboot

.. note::

	The Multi-OS Engine sample location changed for the open source SDK. The old repository is not updated anymore and will not work with new SDK. You may find the updated samples `here (Java) <https://github.com/multi-os-engine/moe-samples-java>`_ and `here (Kotlin) <https://github.com/multi-os-engine/moe-samples-kotlin>`_.

Install Android Studio / IntelliJ IDEA Plugin
---------------------------------------------

* Open Android Studio or IntelliJ IDEA
* Open the Plugins menu in Settings
* Install the Multi-OS Engine Plugin from the standard plugin repository (just search for it)
* If you want to use the Multi-OS Engine UI Designer, install the plugin separately
* You can now create your first project, or import a sample. Enjoy!

	* The SDK installation will happen automatically when you create or import your first project.

.. toctree::
    :maxdepth: 1