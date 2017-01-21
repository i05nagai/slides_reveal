#!/bin/bash

set -e

REPLACEE="var root = grunt.option('root') || '.';"
REPLACER="var root = grunt.option('root') || '..';"
sed -i '' -e "s/${REPLACEE}/${REPLACER}/" reveal.js/Gruntfile.js
pushd reveal.js
npm start
popd
