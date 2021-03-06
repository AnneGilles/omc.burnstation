#!/bin/bash

# apt-get install python-virtualenv
# create a virtual environment
# (i.e. a python separated from the system python)
virtualenv .

# weird fix for Sphinx
bin/pip install --upgrade Sphinx

# bootstrap the buildout
bin/python bootstrap.py

# run the buildout. this might take some time
bin/buildout

# generate the docs from source
bin/sphinx