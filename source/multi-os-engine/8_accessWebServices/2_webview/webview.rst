==============================================
Creating Webview using Intel's Multi-OS Engine
==============================================

.. warning::

	UI Designer was removed in Multi-OS Engine 1.2.0. This document page is outdated and will be re-written in the future.

One of the new features introduced with Intel's Multi-OS Engine Technical Preview is UIWebView. You can use this WebView to display online web sites as well as local html files.

This tutorial shows a very simple example of how to create a UIWebView with the Intel's Multi-OS Engine Technical Preview on an Apple macOS development system.

1.   Within your Multi-OS Engine module, open the `sample_design.ixml` (UI designer) under `resources/layout/sample_design.ixml`.

.. image:: images/webview1.png

2.   Drag and drop the uiwebview component from the palette into the designer.

.. image:: images/webview2.png

3.   You can set the parameters related to the UI in properties tab. You can name the IBOutlet associated with the WebView here.

.. image:: images/webview3.png

4.   Open `AppViewController` and add the class variables associated to the WebView and assign them their corresponding IBOutlets.

.. image:: images/webview4.png

5.   The Multi-OS Engine automatically generates all the IBOutlets in the corresponding Java* `AppViewController` class.

.. image:: images/webview5.png

6.   Add the following code snippet in the `viewDidLoad` method.

::

	String urlString = "http://sourcefreeze.com";
	NSURL url = NSURL.URLWithString(urlString);
	NSURLRequest nsurlRequest = NSURLRequest.requestWithURL(url);
	getSampleView().loadRequest(nsurlRequest);

7.   Build and run the application. You should see the content at our requested URL (http://sourcefreeze.com) loaded into the UIWebView.

.. image:: images/webview6.png

.. toctree::
    :maxdepth: 1
