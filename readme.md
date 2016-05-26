# mocha-browser-template

> Template / Boilerplate for Mocha Browser testing with JSDom


Install this template with:

    npm install mklabs/mocha-browser-template

## Overview

On installation, the template will create the following files:

- test/index.html   - Mocha HTML test page
- test/test.js      - Skeleton for a new test suite
- test/mocha.opts   - Configure mocha with this file
- test/utils/dom.js - Congirue jsdom environments


To install dependencies, run:

    $ npm install jsdom mocha -D

To launch the tests, run:

    $ mocha

To uninstall and undo the operation, run:

    $ npm uninstall mocha-browser-template

It will remove any files created on installation
(`test/{index.html,test.js,mocha.opts,utils/dom.js}`)

## Description

Using npm scripts, we can create small and portable scaffolding little
packages. This template doesn't use any dependencies and use raw `cp`, `cat`,
and `rm` commands.

We can however extend this and use any npm packages and CLI tools available in
the community to go a little further.

You could even have other dedicated scaffolding tools like Yeoman do the heavy
work for you and gain access to all its features (without having to install
`yo` globally).

Here is the scripts used in this template.

```json
"scripts": {
  "preinstall": "cat preinstall.txt",
  "install": "npm run generate",
  "postinstall": "cat success.txt",
  "pregenerate": "echo Copying index.html test.js files && mkdir -p ../../test/utils -v",
  "generate": "cp index.html test.js mocha.opts ../../test/ -v",
  "postgenerate": "cp test-utils-dom.js ../../test/utils/dom.js -v",
  "preuninstall": "pwd && echo So sad to see you go ...",
  "uninstall": "cd ../.. && rm test/{index.html,test.js,mocha.opts,utils/dom.js} -v",
  "postuninstall": "echo postuninstall && pwd"
}
```

**Note** One caveats though: currently, there is no easy way to determine the
original `$PWD` (current working directory), so we have to rely on `cd ../..`
to get back to the original directory (works fine with npm 3, didn't tested
with npm 2)

**Note** One advantage npm brings is that it always install packages relative
to the first found `package.json` / `node_modules` folder in the tree. It means
than installing a template will always act on the root of the project, which is
generally the most suitable thing.
