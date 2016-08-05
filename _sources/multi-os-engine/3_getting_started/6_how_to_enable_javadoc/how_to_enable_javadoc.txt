==============================================
Enabling Javadoc Docs for iOS API in IDEs
==============================================


Intellij IDEA
----------------------------------------------


1.   Open the Project Structure dialog.
2.   Under Project Settings, select the Modules tab and click your module.

.. image:: images/idea_1.png

3.   Select moe-ios.jar from dependencies list and click on Edit button:

.. image:: images/idea_2.png

4.   In the edit dialog click on Plus button and select moe-ios-javadoc.jar:

.. image:: images/idea_3.png

.. image:: images/idea_4.png

5.   Close all dialogs by clicking OK button. Open editor, set cursor on any iOS class name and press Ctrl+J.

.. image:: images/idea_5.png


Android Studio
----------------------------------------------


1. Select the Project view for your project structure and expand External Library for the Multi-OS Engine module. Select the moe-ios library and open Library Properties in the context menu.

.. image:: images/as_1.png

2.   Select + and select moe-ios-javadoc.jar to add.

.. image:: images/as_2.png

3.   Close all dialogs by clicking the OK button. Open the editor, set the cursor on an iOS class name and press Ctrl+J to see the class documentation.

.. image:: images/as_3.png

.. toctree::
    :maxdepth: 2