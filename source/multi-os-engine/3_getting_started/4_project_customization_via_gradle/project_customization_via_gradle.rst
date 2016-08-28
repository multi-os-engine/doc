=================================================================================
Customizing Your Apple Xcode* Project using a Gradle* Script
=================================================================================

With Multi-OS Engine, you can customize the Apple Xcode* project for your app right in the Android Studio* IDE. This page describes all properties the Multi-OS Engine Gradle* Plugin supports for project customization. To customize the project, define all necessary properties in the <moe_module> /build.gradle script.

Xcode Project Mandatory Properties
----------------------------------

You must define the following properties for your Xcode project:

• ``mainTarget`` [String] - application name.
• ``packageName`` [String] - Java* package name of your Multi-OS Engine module
• ``mainClassName`` [String] - main class name. Default one is *Main*, but you must specify one if another is used:

::

    moe {
        xcode.mainTarget ‘AppName’
        xcode.packageName ‘JavaPackageName'
        mainClassName 'Main'
    }


Signing Properties
------------------

The Multi-OS Engine provides the following signing properties:

•   provisioningProfile [String] - Path to the provisioning profile. If not specified, a default one will be chosen on the system.
•   signingIdentity [String] - Signing identity name. If not specified, a default one will be chosen on the system. The name can be found from the Apple Keychain Access*  tool on an Apple macOS machine.
•   bundleID [String] - Bundle identifier that matches the provisioning profile:

::

    moe {
        ipaOptions {
          signingIdentity 'iPhone Developer: Developer Name'
          provisioningProfile '/Users/<username>/Library/MobileDevice/Provisioning Profiles/<id>.mobileprovision'
        }
        xcode {
            bundleID 'bundle.id.for.provisining.profile'
        }
    }

Resources Properties
--------------------

Application resources
=====================

The default location of the application resources is  ``src/main/resources``. You can specify multiple resources directories in ``srcDirs`` and apply the ``include/exclude`` filters.

::

    sourceSets {
        main {
            resources {
                srcDirs('src/main/resources', 'src/main/res')
                include('**/out*')
                exclude('*.txt')
            }
        }
    }

Resources should be accessed from the code with respect to the specified resource directory. The example below shows how to access the ``ship.dae`` file from the ``art.scnassets`` folder located in the default place: ``src/main/resources/art.scnassets``.

SCNScene scene = SCNScene.sceneNamed("art.scnassets/ship.dae");

Storyboard
==========

A storyboard is a visual representation of the user interface of an iOS application, showing screens of content and the connections between those screens. The Multi-OS Engine provides the following storyboard property:

``mainUIStoryboardPath`` [String] - Path to the ``MainUI`` storyboard file.

::

    moe {
        xcode.mainUIStoryboardPath 'src/resources/MainUI.storyboard'
    }

If it is not specified, the ``UITransfromer`` task tries to generate the storyboard file from ``.ixml`` files. These files represent a UI layout created by the Multi-OS Engine Layout Editor for iOS apps and should be in the layout directory under the resource folder.

If there is no layout folder and the ``mainUIStoryboardPath`` property is not set, the Multi-OS Engine will search the storyboard file in the default location: ``src/main/resources/MainUI.storyboard``.

Splash screen
=============

A splash screen is a graphical control element consisting of window containing an image. A splash screen appears while an iOS application is launching.

Choose one of these two ways to add a splash to your Multi-OS Engine app:

•   Using the launch image catalog in xcassets
     1.  Prepare the folder structure ``<xcassetName> .xcassets/<launchImagesSourceName>.launchimage`` with icons and json file in the `Xсode format <https://developer.apple.com/library/ios/documentation/Xcode/Reference/xcode_ref-Asset_Catalog_Format/LaunchImageType.html>`_.

        NOTE:
            ``<xcassetname> .xcassets`` folder must be at the root of the resource directory

     2.   Specify name of the launch image source - ``launchImagesSourceName``:

        ::

            moe {
                xcode.launchImagesSource = 'launchImagesSourceName'
            }


        NOTE:
            For an example of adding a splash screen by specifying a launch image catalog, see the `FlipView sample <https://github.com/multi-os-engine/moe-samples-java/tree/master/FlipView>`_.

•   Using .xib or .storyboard files

       Specify an absolute or relative path to  a .xib or .storyboard file:

        ::

            moe {
             xcode.launchScreenFilePath = 'path/to/xib/or/storyboard/file'
            }

        
        NOTE:
            For an example of adding splash screen by using LaunchScreen.xib, see the `DateCell sample <https://github.com/multi-os-engine/moe-samples-java/tree/master/DateCell>`_.

App Icons
=========

1.   To add icons for your Multi-OS Engine app, create the folder structure: ``<xcassetName> .xcassets/<appIconsSourceName> .appiconset`` with icons and json file in the `Xcode format <https://developer.apple.com/library/ios/documentation/Xcode/Reference/xcode_ref-Asset_Catalog_Format/AppIconType.html#//apple_ref/doc/uid/TP40015170-CH22-SW1>`_.

    NOTE:
        ``<xcassetName> .xcassets`` folder must be at the root of resource directory.

2.   Specify a name of the app icon source - ``appIconsSourceName``:

    ::

        moe {
            xcode.appIconsSourceName = 'appIconsSourceName'
        }


    NOTE
        Example of adding app icons is demonstrated in the `Calculator sample <https://github.com/multi-os-engine/moe-samples-java/tree/master/Calculator>`_.

Catalog Assets
==============

To add ``<xcassetName> .xcassets`` with other Asset Catalogs to the Multi-OS Engine module, place this folder at the root of the resource directory.

Resources from Sources
----------------------

•   ``enableResourcesFromSourceDirs`` [boolean] - Specifies whether the resources detected by a Java* plugin will be added. The default value is true.
•   ``resourcesFromSourceDirExcludes`` [String List] - Java plugin resources filter:

::

    moe {
        resources {
            enableResourcesFromSourceDirs false
            resourcesFromSourceDirExcludes [ "**/*.java", "**/*.scala" ]
        }
    }

Proguard Config
---------------

The build process includes a proguard step for shrinking application classes. To add custom rules to the default config used by the Multi-OS Engine build system, add your rules to the ``proguard.append.cfg`` file in the Multi-OS Engine module installation folder.

More Information
----------------

For more information about the Multi-OS Engine Gradle plugin and a complete list of tasks and properties, please refer to the `plugin documentation <https://github.com/multi-os-engine/moe-plugin-gradle>`_.

.. toctree::
    :maxdepth: 2
