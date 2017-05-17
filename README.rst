========================
 sphinxcontrib.cldomain
========================

.. insert-your badges like that:

.. image:: https://travis-ci.org/40ants/cldomain.svg?branch=master
    :target: https://travis-ci.org/40ants/cldomain

.. Everything starting from this commit will be inserted into the
   index page of the HTML documentation.
.. include-from

Cldomain is a command line utility, used by `sphinxcontrib.cldomain`_
extension to generate beautiful documentation for Common Lisp programms.
It extracts documentation strings from Lisp systems and put them into a
JSON file.

Reasoning
=========

Most Lisp system's documentatin sucks. Sphinx_ is a very good and stable
tool, used for documenting many software libraries. Though originall
Sphinx_ was written to document Python libraries, it is easily
extendable to write any kind of documents. Based on reStructured text
markup, sphinx based documentation is very readable and it is easy to
use internal hyperlinks between different documents and code.


Usage
=====

Install cldomain using roswell::

  ros install 40ants/cldomain


How to build documentation
--------------------------

To build documentation, you need a Sphinx. It is
documentaion building tool written in Python.

To install it, you need a virtualenv. Read
this instructions
`how to install it
<https://virtualenv.pypa.io/en/stable/installation/#installation>`_.

Also, you'll need a `cl-launch <http://www.cliki.net/CL-Launch>`_.
It is used by documentation tool to run a script which extracts
documentation strings from lisp systems.

Run these commands to build documentation::

  virtualenv env
  source env/bin/activate
  pip install -r docs/requirements.txt
  invoke build_docs

These commands will create a virtual environment and
install some python libraries there. Command ``invoke build_docs``
will build documentation and upload it to the GitHub, by replacing
the content of the ``gh-pages`` branch.

