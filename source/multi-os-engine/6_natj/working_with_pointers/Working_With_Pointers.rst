=====================
Working with Pointers
=====================

In this guide we will explain the usage of pointers.

What are pointers?
==================

.. highlight:: objective-c

In C, C++, Objective-C and some other programming languages pointers are values which contains an address that refers to another value in memory. In the aforementioned languages pointers usually appear in a syntax similar to::

	int *values; // Pointer to an integer type
	NSString *string; // Pointer to an NSString object

Pointers are generally constructed with ``malloc`` and destructed with ``free``::

	float *vars = (float *)malloc(10 * sizeof(float));
	read_values(vars, 10);
	float avg = calculate_avg(vars);
	free(vars);

Because Multi-OS Engine has bindings for almost the complete C and Objective-C APIs in the iOS SDK, using pointers is inevitable. NatJ supports pointer usage and has the following pre-defined pointer types:

* *VoidPtr* representing a ``void *``
* *BoolPtr* representing a ``BOOL *``, element size is 1 byte
* *BytePtr* representing a ``char *``, element size is 1 byte
* *CharPtr* representing a ``unsigned short *``, element size is 2 bytes
* *ShortPtr* representing a ``short *``, element size is 2 bytes
* *IntPtr* representing a ``int *``, element size is 4 bytes
* *LongPtr* representing a ``long long *``, element size is 8 bytes
* *FloatPtr* representing a ``float *``, element size is 4 bytes
* *DoublePtr* representing a ``double *``, element size is 8 bytes
* *NIntPtr* representing a ``NSInteger *``, element size is architecture dependent
* *NUIntPtr* representing a ``NSUInteger *``, element size is architecture dependent
* *NFloatPtr* representing a ``CGFloat *``, element size is architecture dependent
* And additional types for handling pointers to C structures and Objective-C objects (discussed later)

All pointers in Java are created with the *PtrFactory* class' static methods. The following sections will explain the different types of pointers.

.. highlight:: java

Strong Non-guarded Pointers
---------------------------

PtrFactory method prefix: ``new<type>...(...)``

These are the most commonly used pointers. Memory to the pointed area is managed by Java's GC.

Let's look at the following problem: we want to create an NSIndexPath by using its init method which uses an NSUInteger pointer as its first argument::

	// Create a NUIntPtr object with an allocated memory size of one NSUInteger
	NUIntPtr ptr = PtrFactory.newNUIntReference();

	// Set the referenced memory's value to 10
	ptr.set(10L);

	// Create the NSIndexPath object
	NSIndexPath path = NSIndexPath.indexPathWithIndexesLength(ptr, 1);
	System.out.println("Path is " + path);

This code should output ``Path is <NSIndexPath: 0x7c234280> {length = 1, path = 10}``

Another way to do this is by using another factory method, which uses the initial value as argument::

	// Create a NUIntPtr object with an allocated memory size of one NSUInteger
	// and the referenced memory's value to 10
	NUIntPtr ptr = PtrFactory.newNUIntReference(10L);

	// Create the NSIndexPath object
	NSIndexPath path = NSIndexPath.indexPathWithIndexesLength(ptr, 1);
	System.out.println("Path is " + path.description());

This should have the same result ``Path is <NSIndexPath: 0x7c234370> {length = 1, path = 10}``

This was good for a small introduction, but let's look at a more likely situation, that is when there are more than one elements::

	// Create a NUIntPtr object with an allocated memory size of 3 NSUIntegers
	NUIntPtr ptr = PtrFactory.newNUIntArray(3);

	// Set the referenced memory's value
	ptr.set(10L);
	ptr.set(1, 20L);

	// Create the NSIndexPath object
	NSIndexPath path = NSIndexPath.indexPathWithIndexesLength(ptr, 3);
	System.out.println("Path is " + path);

This code should output ``Path is <NSIndexPath: 0x7c081d10> {length = 3, path = 10 - 20 - 0}``

.. note::
	
	Allocated memory returned from PtrFactory is zero'd out. This is why the third element in the path above is zero.

As this was a more life-like scenario, for a Java programmer this is very uncomfortable, this is why we support the following solution as well::

	// Create a NUIntPtr object with an allocated memory size of 2 NSUIntegers
	// and set the referenced memory's value
	NUIntPtr ptr = PtrFactory.newNUIntArray(new long[] { 10L, 20L });

	// Create the NSIndexPath object
	NSIndexPath path = NSIndexPath.indexPathWithIndexesLength(ptr, 2);
	System.out.println("Path is " + path);

Output looks like this ``Path is <NSIndexPath: 0x7c08af40> {length = 2, path = 10 - 20}``

While the creation of this pointer was simpler, the results were not exactly the same. In the previous example the referenced memory size was 3 NSUIntegers while in this one it was only 2 NSUIntegers.

The achieve the exact results we can use the ``copyFrom`` method::

	// Create a NUIntPtr object with an allocated memory size of 3 NSUIntegers
	NUIntPtr ptr = PtrFactory.newNUIntArray(3);

	// Set the referenced memory's value
	ptr.copyFrom(new long[] { 10L, 20L });

	// Create the NSIndexPath object
	NSIndexPath path = NSIndexPath.indexPathWithIndexesLength(ptr, 3);
	System.out.println("Path is " + path);

Output is ``Path is <NSIndexPath: 0x7c081c20> {length = 3, path = 10 - 20 - 0}``

Strong Guarded Pointers
-----------------------

PtrFactory method prefix: ``newGuarded<type>...(...)``

Guarded pointers add some safety to pointers (on the Java side). Accessing Non-guarded pointers are a bit faster, but those require much more attention at indexing, because indexing outside the memory's bounds will not throw an exception rather the application will most likely crash due to a segmentation fault.
Guarded pointers however will do an index check and will throw an ``IndexOutOfBoundsException`` when needed.

Here's a simple example where the guard saved us::

	// Create a ShortPtr object with an allocated memory size of 5 shorts
	ShortPtr ptr = PtrFactory.newGuardedShortArray(5);

	try {
		// Index outside of the allocated memory
		ptr.set(5, (short) 100);
	} catch (IndexOutOfBoundsException ex) {
		System.out.println("Index was out of bounds!");
	}

The output is ``Index was out of bounds!`` instead of an embarrassing application crash.

Guarded pointers can be created from Non-guarded pointers via the ``getGuarded`` method, but NatJ relies on the programmer to specify the bounds correctly.

Weak Non-guarded Pointers
-------------------------

PtrFactory method prefix: ``newWeak<type>...(...)``

Weak pointers differ from strong pointers in only one way, memory management is completely manual. This is useful when doing optimizations, for example::

	// Create a CharPtr object with an allocated memory size of 5 chars
	// and set the referenced memory's value to 'Hello'
	CharPtr ptr = PtrFactory.newWeakCharArray("Hello".toCharArray());

	// Create an NSString object from the pointer and make NSString responsible
	// for deallocation the pointer
	NSString string = NSString.alloc()
			.initWithCharactersNoCopyLengthFreeWhenDone(ptr, 5, true);
	System.out.println("My value is " + string);

The code should print ``My value is Hello``

In this scenario this was useful because we didn't copy the entire string when the NSString was initialized, rather we simply passed the pointer to it. When working with large amounts of data this could save a lot of time and memory!

Weak Guarded Pointers
---------------------

PtrFactory method prefix: ``newGuardedWeak<type>..(...)``

Weak Non-guarded pointers have the same relation with weak guarded pointers as strong non-guarded with strong guarded pointers.

Retrieving Values
-----------------

Retrieving values can be done in multiple ways, of which the simplest are the ``get`` and ``toArray`` method variants.

Here is a simple example::

	// Create a green UIColor
	UIColor color = UIColor.greenColor();

	// Create a pointer where the hue value will be stored
	NFloatPtr hue = PtrFactory.newNFloatReference();

	// Retrieve the hue value
	color.getHueSaturationBrightnessAlpha(hue, null, null, null);
	System.out.println("Hue of color is " + hue.get());

The code will print something like this ``Hue of color is 0.3333333432674408``

Pointer Offsetting
------------------

Offsetting pointers can be useful in various ways that we will not go into, but instead show how to actually do it. The most important thing to know is that **offsetted pointers still point to the memory region of the original pointer!**

Let's look at the next example where we want to copy 'Hello' five times after each other. One solution to this would be using the correct ``copyFrom`` method which can specify the target offset. The other solution is using pointer offsets::

	// Create a CharPtr object with an allocated memory size of 25 chars
	CharPtr ptr = PtrFactory.newCharArray(25);

	// Set the offsetted memory's value 'Hello'
	for (int idx = 0; idx < 25; idx += 5) {
		ptr.ofs(idx).copyFrom("Hello".toCharArray());
	}

	// Create an NSString object from the pointer
	NSString string = NSString.alloc().initWithCharactersLength(ptr, 25);
	System.out.println("5 * 'Hello' = " + string);

The output is ``5 * 'Hello' = HelloHelloHelloHelloHello``

Because the offsetted pointer always points to the original memory region, this code is also valid::

	// Create a CharPtr object with an allocated memory size of 25 chars
	CharPtr ptr = PtrFactory.newCharArray(25);

	// Set the offsetted memory's value 'Hello' and re-offset the pointer
	CharPtr ofs = ptr;
	for (int idx = 0; idx < 5; ++idx) {
		ofs.copyFrom("Hello".toCharArray());
		ofs = ofs.ofs(5);
	}

	// Create an NSString object from the pointer
	NSString string = NSString.alloc().initWithCharactersLength(ptr, 25);
	System.out.println("5 * 'Hello' = " + string);

Again, the output will be ``5 * 'Hello' = HelloHelloHelloHelloHello``

Here's an example of using pointer offsetting instead of four NFloatPtrs::

	// Create a blue UIColor
	UIColor color = UIColor.blueColor();

	// Create a pointer where the 4 components of HSBA will be stored
	NFloatPtr cmps = PtrFactory.newNFloatArray(4);

	// Retrieve the HSBA values
	color.getHueSaturationBrightnessAlpha(cmps, cmps.ofs(1), cmps.ofs(2), cmps.ofs(3));
	System.out.println("HSBA values are " + Arrays.asList(cmps.toArray(4)));

Output is ``HSBA values are [0.6666666865348816, 1.0, 1.0, 1.0]``

C Structure Pointers
--------------------

C structure pointers are bound a bit differently than other pointers because the interpretation of how the code should be bound relies on the context it is used in. It can be either a reference to a single structure or a pointer to multiple structures.

.. warning::

	The binding code for some of these methods will be changed to better reflect the function of them!

In the next example we will show you how structure references work::

	// Create a CGRect object representing {{0, 0}, {200, 100}}
	CGRect rect = new CGRect(CoreGraphics.CGPointZero(), new CGSize(200.0, 100.0));

	// Create two more rects for the slice and remainder
	CGRect slice = new CGRect();
	CGRect remainder = new CGRect();

	// Divide the rect
	CoreGraphics.CGRectDivide(rect, slice, remainder, 50.0, CGRectEdge.MinXEdge);
	System.out.println("Slice is " + UIKit.NSStringFromCGRect(slice));
	System.out.println("Remainder is " + UIKit.NSStringFromCGRect(remainder));

Objective-C Object Pointers
---------------------------

These pointers are often not too useful, but there are some very good exceptions. The iOS SDK usually does not use exceptions for error handling, rather it uses pointers to NSError objects. Here is an example for how error handling can be implemented with error information provided by NSError::

	// Create a NSURL to a non-existent website
	NSURL url = NSURL.URLWithString("https://www.invalid.url/nothinghere");
	
	// Create the NSError pointer
	Ptr<NSError> error = PtrFactory.newObjectReference(NSError.class);

	// Try to create a NSString from the bad URL
	NSString string = NSString.stringWithContentsOfURLEncodingError(url,
			Enums.NSUTF8StringEncoding, error);

	// Handle error
	if (string == null) {
		System.out.println(error.get().localizedDescription());
	}

Output will be something like: ``The operation couldn’t be completed. (Cocoa error 256.)``

