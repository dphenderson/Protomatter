#!/bin/bash
#
# This script preps the skin control files for upload to the file manager.

rm skins.zip

cp fiction.ascx fiction.htm
cp index.ascx index.htm
cp matter.ascx matter.htm
cp poetry.ascx poetry.htm
cp two_column.ascx two_column.htm

zip skins.zip fiction.htm index.htm matter.htm poetry.htm two_column.htm
rm fiction.htm index.htm matter.htm poetry.htm two_column.htm
