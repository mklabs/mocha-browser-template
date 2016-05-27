# mocha-browser-template

> Template / Boilerplate for Mocha Browser testing with JSDom

Install this template with:

    npm install mklabs/mocha-browser-template

It is based on [Testing react with jsdom](http://jaketrent.com/post/testing-react-with-jsdom/) article.

## Overview

On installation, the template will create the following files:

- test/index.html   - Mocha HTML test page
- test/test.js      - Skeleton for a new test suite
- test/mocha.opts   - Configure mocha with this file
- test/utils/dom.js - Congirue jsdom environments

And add `jsdom`, `mocha` and `chai` to your package.json devDependencies.

Additionnaly, the "scripts" field has been extended with the following scripts,
if not already defined:

```json

```

To launch the tests with node, run

    $ npm test

To run the tests directly in the browser, load `test/index.html`

    $ npm run browser

To uninstall and undo the operation, run

    $ npm uninstall mocha-browser-template

It will remove any files created on installation
(`test/{index.html,test.js,mocha.opts,utils/dom.js}`).

You'd still have to uninstall added dependencies with

    $ npm uninstall jsdom mocha micro-list opn

## Description

Using npm scripts, we can create small and portable scaffolding little
packages. This template doesn't use any dependencies and use raw `cp`, `cat`,
and `rm` commands.

We can however extend this and use any npm packages and CLI tools available in
the community to go a little further.

Here is the scripts used in this template.

```json
"scripts": {
  "install": "./init.sh",
  "preuninstall": "echo So sad to see you go ...",
  "uninstall": "cd ../.. && rm test/{index.html,test.js,mocha.opts,utils/dom.js} -v",
  "postuninstall": "echo Done, removed test/{index.html,test.js,mocha.opts,utils/dom.js} files"
}
```

**Note** One caveat though: currently, there is no easy way to determine the
original `$PWD` (current working directory), so we have to rely on `cd ../..`
to get back to the original directory (works fine with npm 3, didn't tested
with npm 2)

**Note** One advantage npm brings is that it always install packages relative
to the first found `package.json` / `node_modules` folder in the tree. It means
than installing a template will always act on the root of the project, which is
generally the most suitable thing.

## Related

- [hcp](https://github.com/mklabs/hcp) - A command similar to `cp` to
  recursively copy files handled as Mustache / Handlebars templates. Started
  working on `hcp` to complement this idea of npm scaffolding package.

- [template-copy](https://github.com/mklabs/template-copy) - used by `hcp`
