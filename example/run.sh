#!/bin/sh

# run.sh
# pysaml2
#
# Created by Roland Hedberg on 3/25/10.
# Copyright 2010 Umeå Universitet. All rights reserved.

cd sp
../../tools/make_metadata.py sp.conf > ../sp_metadata.xml
./sp.py sp.conf &

cd ../idp
./idp.py idp.conf &

cd ..

