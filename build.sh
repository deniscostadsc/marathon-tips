#!/bin/bash

sed -i 's/\(Data de última compilação:\).*$/'"\1 $(date +%d-%m-%Y)"'/g' marathon.rst

rst2pdf marathon.rst

sed -i 's/\(Data de última compilação:\).*$/\1/g' marathon.rst
