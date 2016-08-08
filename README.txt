Building (HTML Preview)

In order to build and preview the docs, you'll need [Sphinx][], which in turn **requires Python 2.7**.
Python 3+ will not work.

    To install pip, type:
    sudo easy_install pip

    To validate pip installation, type:
    pip

    To install virtualenv, type:
    sudo pip install virtualenv

    To validate virtualenv installation, type:
    virtualenv

    To install sphinx, type:
    pip install sphinx

    To install javasphinx, type:
    pip install javasphinx

    To setup and activate the work environment, type:
    mkdir moe-doc
    cd moe-doc
    virtualenv $PWD/venv
    . venv/bin/activate

By default, the docs' preview will display a standard Sphinx theme, but you can install and use ReadTheDocs' theme if you prefer that:

    pip install sphinx_rtd_theme

If this theme is available, the build system will pick it up.

To include or refresh the generated documentation for Nat/J:
- Build moe-core into a maven repository
	The easiest way to do this is by using the moe/moe-core/Builder/build-all.sh script. It works on the moe branch, I don't know if it will work on the master branch.
- Create the virtualenv in the moe/ doc repo and activate it
	virtualenv $PWD/venv
	. venv/bin/activate
- Update NatJ documentation
	./gradlew refreshNatJReference -Pmoe.natj.repo=/path/to/maven/repo
- Build the documentation
	make html