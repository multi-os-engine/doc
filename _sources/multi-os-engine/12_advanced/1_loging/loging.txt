===============================================
Logging Options for the Intel's Multi-OS Engine
===============================================

Logging is an important part of any application. In this page we look at a few alternatives to do logging with the Intel® Multi-OS Engine:

•   The Android* logging API
•   slf4j with either the simple logger or the Android logger implementation
•   The log4j API with slf4j

Read on for more details. The sample code is available :download:`here <logging-samples.zip>`.

Use the Android Logging API
===========================

If you are porting an Android app to Apple iOS with the Multi-OS Engine, or you are already familiar with the Android logging API, use it with the Multi-OS Engine.

1.   First, we need to add the moe-android-lib.jar file to the lib folder in our Multi-OS Engine project or module. This small library implements the Android logging API for iOS. The library is included in the sample code (attached above).
2.   Right-click the jar file and choose Add as Library... from the context menu.


Now we can use the familiar `android.util.Log <http://developer.android.com/reference/android/util/Log.html>`_ class on iOS as well.

The default log level is set to DEBUG, similar to Android. To change it, just call the `android.util.Log.setLogLevel` static method in our app's `main()`
method :

::

	public static void main(String[] args) {
        Log.setLogLevel(Log.ERROR);
        UIKit.UIApplicationMain(0, null, null, Main.class.getName());
    }

Use the slf4j Library
=====================

The slf4j library (http://slf4j.org) is a modern, type-safe logging library for Java apps. It is separated into an API jar file and multiple backend jar files. To use slf4j, you select a specific backend. For the Multi-OS Engine, we may use the following backends:

•   slf4j-simple, which simply logs to the standard error device.
•   slf4j-android, which uses the Android logger implementation.

To use slf4j, we need to add the correct dependencies to the `build.gradle` file of our project. To do this, add the following lines to the dependencies block:

::

	compile 'org.slf4j:slf4j-api:1.7.12'
	compile 'org.slf4j:slf4j-simple:1.7.12' // or compile 'org.slf4j:slf4j-android:1.7.12'

When using the simple backend, then you can add a `simplelogger.properties` to the `src/main/resources` directory in your project. You can use it to configure the format and loglevel of the backend. Here is a short example:

::

	# SLF4J's SimpleLogger configuration file
	# Simple implementation of Logger that sends all enabled log messages, for all defined loggers, to System.err.
	# Default logging detail level for all instances of SimpleLogger.
	# Must be one of ("trace", "debug", "info", "warn", or "error").
	# If not specified, defaults to "info".
	org.slf4j.simpleLogger.defaultLogLevel=debug
	# Set to true if you want the current date and time to be included in output messages.
	# Default is false, and will output the number of milliseconds elapsed since startup.
	org.slf4j.simpleLogger.showDateTime=true
	# The date and time format to be used in the output messages.
	# The pattern describing the date and time format is the same that is used in java.text.SimpleDateFormat.
	# If the format is not specified or is invalid, the default format is used.
	# The default format is yyyy-MM-dd HH:mm:ss:SSS Z.
	org.slf4j.simpleLogger.dateTimeFormat=yyyy-MM-dd HH:mm:ss:SSS Z

Finally, we need to start using the slf4j API in our classes:

::

	private static org.slf4j.Logger LOG = org.slf4j.LoggerFactory
	.getLogger(AppViewController.class);
	public void test() {
    	LOG.error("This is an error");
	}

Using the log4j API with slf4j
==============================

While it is possible to use the log4j API with its original implementation, we do not recommend it, because it is much more complex than slf4j, and it requires a custom built version of the library.

However, if you need to use a component that requires the log4j API, use the log4j  API wrapper of slf4j. We just need to add one more line to the `build.gradle` file:

::

	compile 'org.slf4j:log4j-over-slf4j:1.7.12'

Now we can use the log4j API as well:

::

	private org.apache.log4j.Logger Log = org.apache.log4j.Logger.getLogger("AppViewController");
	public void test() {
    	Log.error("Test");
	}

Summary
=======

With the Multi-OS Engine (similar to Android) we have multiple options for logging in our app. You can decide whether to use the Android logger, slf4j or even the log4j APIs in your application.

