#!/bin/bash
#
# Use this script to package the official skin install package for use by the super user to install.

zip -r ../MatterArts.Package_1.0.0.zip . -i@MatterArts.manifest
