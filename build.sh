#!/bin/bash

sed -i 's/\(Data de última compilação:\).*$/'"\1 $(date +%d-%m-%Y)"'/g' marathon.rst

rst2pdf marathon.rst
rst2html marathon.rst > index.html

sed -i 's/\(Data de última compilação:\).*$/\1/g' marathon.rst
