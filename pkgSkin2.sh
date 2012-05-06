#!/bin/bash
#
# Run this script to package this skin for upload to the file manager in the matterarts.org portal

mkdir -p Skins/MatterArts
mkdir -p Containers/MatterArts

cp -R fiction.ascx Skins/MatterArts/fiction.htm
cp -R index.ascx Skins/MatterArts/index.htm
cp -R two_column.ascx Skins/MatterArts/two_column.htm
cp -R matter.ascx Skins/MatterArts/matter.htm
cp -R poetry.ascx Skins/MatterArts/poetry.htm
cp -R *.doctype.xml *.css images Skins/MatterArts
cp -R title_h1.ascx Containers/MatterArts/title_h1.htm
cp -R title_h2.ascx Containers/MatterArts/title_h2.htm
cp -R no_title.ascx Containers/MatterArts/no_title.htm
cp -R rounded_box.ascx Containers/MatterArts/rounded_box.htm
cp MatterArts.Package.dnn MatterArts.Package.xml

zip -r MatterArts.Package_1.0.0.zip MatterArts.Package.xml Skins Containers container*.txt skin*.txt

rm -r Containers/ Skins/ MatterArts.Package.xml
