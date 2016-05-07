# Seed project set up with gulp, eslint and babel

# Installation

Use `$ sh testgulp.sh` to verify that you have the tools you need, and to have their latest versions.

Requires **gulp/browserify/babel** to be installed. To install and test run:

```
$ sudo npm install gulp --global 
$ sudo npm install browserify --global
$ sudo npm install babel-cli --global
$ npm install
$ gulp babel
```
After the successful gulp run, the file `sources-js/helloworld.js` should be created, containing the following code:

```
"use strict";

(function () {
    console.log("Hello World");
})();
```
