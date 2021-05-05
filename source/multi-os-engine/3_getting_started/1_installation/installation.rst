.. _getting-started-installation:

============
Installation
============

Remove old versions of the Multi-OS Engine (MOE 1.0 or older)
-------------------------------------------------------------

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

	The Multi-OS Engine sample location changed for the open source SDK. The `old samples repository <https://github.com/moe-java-samples>`_ is not updated anymore and will not work with the new SDK. You may find the updated samples `here (Java) <https://github.com/multi-os-engine/moe-samples-java>`_ and `here (Kotlin) <https://github.com/multi-os-engine/moe-samples-kotlin>`_.

Install Android Studio / IntelliJ IDEA Plugin
---------------------------------------------

* Open Android Studio or IntelliJ IDEA
* Open the Plugins menu in Settings
* Install the Multi-OS Engine Edition plugin from the standard plugin repository (just search for it)
* You can now create your first project, or import a sample. Enjoy!

	* The SDK installation will happen automatically when you create or import your first project.

Set Up Code Signing for On Device Execution in Xcode 8
------------------------------------------------------

Xcode 8 has more strict requirements with regards to the code signing configuration. Code signing can be set up in your build.gradle file. 

.. code-block:: groovy

	moe {
	    signing {
	        // String, ID of the development team.
	        developmentTeam

	        // String, path to the provisioning profile.
	        provisioningProfile

	        // String, name of the signing identity
	        signingIdentity
	    }
	}

Xcode 8 also supports "automatic" signing configuration during development, but at the very least you will have to set your Development Team Id. MOE provides a way to set a default Id in a separate file, so you don't have to edit every project's build.gradle just to try it out.

In order to set the default id, you have to create a file with the path ``${user.home}/.moe/default.properties`` with the following contents:

.. code-block:: text

	developmentTeam=ABCDEFGHIJ

For more details, please refer to the `MOE Gradle Plugin configuration documentation <https://github.com/multi-os-engine/moe-plugin-gradle>`_


Upgrading from MOE 1.1 or later
-------------------------------

Upgrading the a new release of the MOE plugin can be done using the standard plugin upgrade procedure inside Android Studio / IntelliJ.

To upgrade a project to use a newer MOE SDK, you need to update the version of the MOE plugin in its ``build.gradle`` file.

.. note::

	Starting with MOE 1.2, the Multi-OS Engine UI Designer is not included in the release. The UI Designer plugin is incompatible with the MOE 1.2 Plugin, thus you will have to uninstall it from your IDE. You may read more details about the reasons for this decision in our `Behind The Scenes blog post <https://multi-os-engine.org/blog/2016-09-30-removed-features/>`_.



.. toctree::
    :maxdepth: 1