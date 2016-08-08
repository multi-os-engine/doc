.. java:import:: java.util Map

.. java:import:: java.util Set

IFrameworkInitializer
=====================

.. java:package:: org.moe.natj.objc
   :noindex:

.. java:type:: public interface IFrameworkInitializer

   Framework initializer interface.

   Implement this interface with a class and mark that class with a \ :java:ref:`org.moe.natj.general.ann.RegisterOnStartup`\ . With this, framework initialization can be done even before the main entry have been entered.

Methods
-------
getExternalPackages
^^^^^^^^^^^^^^^^^^^

.. java:method:: public Set<String> getExternalPackages()
   :outertype: IFrameworkInitializer

   Should return a list of Java packages.

   If NatJ could not resolve a type based on its name prefix, then it will fallback to these packages.

   :return: List of Java packages

getExternalPackagesAndPrefixes
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

.. java:method:: public Map<String, Set<String>> getExternalPackagesAndPrefixes()
   :outertype: IFrameworkInitializer

   Should return a map containing the preferable Java packages and Objective-C prefixes.

   :return: Map of preferred Java package-Objective-C prefix pairs

