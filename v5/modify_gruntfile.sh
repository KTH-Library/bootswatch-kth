#!/bin/bash

curl -s https://raw.githubusercontent.com/thomaspark/bootswatch/v5/Gruntfile.js \
	| sed "s|const SWATCHES = \[|const SWATCHES = \['kth',|g" > Gruntfile.js

