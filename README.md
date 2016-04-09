# Seed project set up with gulp, eslint and babel

# Installation

Requires **gulp** to be installed. To install and test run:

```
$ sudo npm install --global gulp
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
