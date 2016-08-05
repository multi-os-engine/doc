.. highlight:: java

==================
Toll-Free Bridging
==================

Here we will explain how you can use C-based and Objective-C based APIs side-by-side and pass objects between each other. More precisely we will show some examples on how to use Multi-OS Engine's Toll-Free bridging support. Important note here is C-based APIs have manual memory management. For better understanding on how it works, refer to Apple's `Ownership Policy documentation`_.
For information about which types are bridgeable, visit `this`_ document. 

Objective-C to C
================

Sometimes there is a need to convert Foundation classes to CoreFoundation types. This can be done with the ``ObjCRuntime.cast(from, toType)`` method::

	// Create an URL to intel.com and get its data
	NSURL url = NSURL.URLWithString("http://www.intel.com");
	NSData ns = NSData.dataWithContentsOfURL(url);

	// Cast the NSData to a CFDataRef
	CFDataRef cf = ObjCRuntime.cast(ns, CFDataRef.class);
	
	// Retain the data
	CFRetain(cf);

	// Create a string from the data
	int enc = CFStringBuiltInEncodings.EncodingUTF8;
	CFStringRef string = CFStringCreateFromExternalRepresentation(
			kCFAllocatorDefault(), cf, enc);

	// Release the data
	CFRelease(cf);

	// Get the first 10 characters
	CharPtr buffer = PtrFactory.newCharArray(10);
	CFStringGetCharacters(string, new CFRange(0, 10), buffer);
	System.out.println("First 10 chars are '"
			+ new String(buffer.toCharArray(10)) + "'");

	// Release the string
	CFRelease(string);

Output will probably be something like ``First 10 chars are '<!DOCTYPE '``

.. warning::
	
	The casted object will NOT be automatically retained, as mentioned earlier, memory management for those objects require manual retaining and releasing!

C to Objective-C
================

As you would have guessed properly, sometimes there is the need to do the opposite, convert CoreFoundation types to Foundation classes. This also can be done with the ``ObjCRuntime.cast(from, toType)`` method::

	// Create a string containing 'http://www.intel.com'
	CFStringRef urlStr = CFStringCreateWithCString(kCFAllocatorDefault(),
			"http://www.intel.com", CFStringBuiltInEncodings.EncodingUTF8);

	// Create an URL with the string
	CFURLRef url = CFURLCreateWithString(kCFAllocatorDefault(), urlStr,
			null);

	// Release the string
	CFRelease(urlStr);

	// Create a string with the contents of the URL
	NSString string = NSString.stringWithContentsOfURLEncodingError(
			ObjCRuntime.cast(url, NSURL.class), Enums.NSUTF8StringEncoding,
			null);

	// Release the URL
	CFRelease(url);

	// Get the first 10 characters
	System.out.println("First 10 chars are '" + string.substringToIndex(10)
			+ "'");

Output will again be something like ``First 10 chars are '<!DOCTYPE '``

C to C
======

When using CoreFoundation and other functions in C frameworks, type information might get "lost". This is because their types mostly don't contain any runtime type information with them (however for some types type ID's can be queried). NatJ has ways of re-introducing type information to the Java runtime. This can be done with the ``CRuntime.cast(from, toType)`` method::

	// Create a dictionary from a CGRect
	CFDictionaryRef dict = CGRectCreateDictionaryRepresentation(CGRectZero());

	// Get the height info
	ConstVoidPtr value = CFDictionaryGetValue(dict,
			CFStringCreateWithCString(kCFAllocatorDefault(), "Height",
					CFStringBuiltInEncodings.EncodingUTF8));
	
	// Value has no real Java type information but we know it's a CFNumberRef
	// Cast 'value' to a CFNumberRef
	CFNumberRef number = CRuntime.cast(value, CFNumberRef.class);
	
	// Retrieve the raw value from 'number'
	NFloatPtr valuePtr = PtrFactory.newNFloatReference();
	if (CFNumberGetValue(number, CFNumberType.CGFloatType, valuePtr) == 0) {
		System.err.println("Failed to read height");
	} else {
		System.out.println("Height is " + valuePtr.get());
	}

	// Release the dictionary
	CFRelease(dict);

.. _Ownership Policy documentation: https://developer.apple.com/library/ios/documentation/CoreFoundation/Conceptual/CFMemoryMgmt/Concepts/Ownership.html
.. _this: https://developer.apple.com/library/ios/documentation/CoreFoundation/Conceptual/CFDesignConcepts/Articles/tollFreeBridgedTypes.html#//apple_ref/doc/uid/TP40010677-SW4
