#!/usr/bin/bash

pwd=$(pwd)
dir="../.."

ls test/**
# hcp test/ $dir/test/
# hcp test-utils-dom.js $dir/test/utils/dom.js

echo Adding the following propeties to package.json
cat dependencies.json
echo ""

hcp dependencies.json $dir/package.json

echo """
Installation successfull

- test/index.html   - Mocha HTML test page
- test/test.js      - Skeleton for a new test suite
- test/mocha.opts   - Configure mocha with this file
- test/utils/dom.js - Required by mocha, configured in mocha.opts

To install dependencies added to your package.json, run

    $ npm install

To launch the tests, run

    $ npm test

To run the tests directly in chrome / firefox

    $ npm run test-chrome
    $ npm run test-firefox

To uninstall and undo the operation, run

    $ npm uninstall mocha-browser-template
"""
