.. highlight:: java

===================
Nat/J: Corner Cases
===================

In this section some corner cases get mentioned that requires great care and attention to avoid any inconveniences.

**Non-Retained Problem**

In Objective-C* memory management there are three main property qualifiers: copy, strong (retain), assign.

* When a property is marked as copy, then the assigned object will be copied (through the ``NSCopying`` protocol).
* When a property is marked as strong, then the assigned object	will be retained (its reference count will be incremented).
* But when a property is marked with assign, then only the value will be set.

A problem is caused by the last statement when working with Objective-C binding methods in Java*, because the binding
method's parameter is not marked with this information, only the documentation contains this information.

*As a workaround, Apple iOS* binding code has safe and unsafe versions of a non-retained property setter method.* The safe setter
creates a reference for the specified object on the Java side to prevent unwanted freeing from the GC and the unsafe setter
simply invokes the Objective-C code.

Let's look at this simple example where we have two main classes:

	* ``MyDataSource`` - which is a simple class extending ``NSObject`` and implementing ``UITableViewDataSource``. This class stores
	  all the row information and everything related to being a datasource.
	* ``TableController`` - which is a view controller extending ``UITableViewController``. This will be our root view controller.

Let's say this is our ``viewDidLoad`` method::

	@Override
	@Selector("viewDidLoad")
	public void viewDidLoad() {
		super.viewDidLoad();

		tableView().registerClassForCellReuseIdentifier(
				new org.moe.natj.objc.Class("UITableViewCell"),
				MyDataSource.CELL_IDENTIFIER);

		MyDataSource source = MyDataSource.alloc().init();
		for (int i = 0; i < 10000; ++i) {
			source.add("" + i);
		}
		tableView().setDataSource_unsafe(source);
		tableView().reloadData();
	}

We basically register a cell reuse identifier with the table view, fill up the data source with 10000 rows, set the data source
property of the table view and reload the data.

The code looks ok and you could probably even start the application without any issues. The problem will only occur when Java
VM's garbage collector decides to do a cleanup. The garbage collector has no idea that it needs to keep the Java ``MyDataSource``
object alive - because the only reference to it is on the Objective-C side - and frees it, but ``UITableView``'s data source
handling is very dynamic, so when the user scrolls after the GC freeing, the table view will ask the data source about the next
row it needs to display (and other info as well), but at that point the object was already freed thus causing an ``EXC_BAD_ACCESS``
exception or rendering the application unusable.
