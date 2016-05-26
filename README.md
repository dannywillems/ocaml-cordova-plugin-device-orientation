# ocaml-cordova-plugin-device-orientation

[![LGPL-v3 licensed](https://img.shields.io/badge/license-LGPLv3-blue.svg)](https://raw.githubusercontent.com/dannywillems/ocaml-cordova-plugin-device-orientation/master/LICENSE)
[![Build Status](https://travis-ci.org/dannywillems/ocaml-cordova-plugin-device-orientation.svg?branch=master)](https://travis-ci.org/dannywillems/ocaml-cordova-plugin-device-orientation)

Binding to
[cordova-plugin-device-orientation](https://github.com/apache/cordova-plugin-device-orientation)

[Example
application](https://github.com/dannywillems/ocaml-cordova-plugin-device-orientation-example).

## What does cordova-plugin-device-orientation do ?

```
This plugin provides access to the device's compass. The compass is a sensor
that detects the direction or heading that the device is pointed, typically from
the top of the device. It measures the heading in degrees from 0 to 359.99,
where 0 is north.
```

Source: [cordova-plugin-device-orientation](https://github.com/apache/cordova-plugin-device-orientation)

## Repository branches and tags

We are migrating bindings from
[js_of_ocaml](https://github.com/ocsigen/js_of_ocaml) (low level bindings) to
[gen_js_api](https://github.com/lexifi/gen_js_api) (high level bindings).

The gen_js_api binding allows to use *pure* ocaml types (you don't have to use
the ## syntax from js_of_ocaml or Js.string type but only # and string type).

The js_of_ocaml version is available in the branch
[*js_of_ocaml*](https://github.com/dannywillems/ocaml-cordova-plugin-device-orientation/tree/js_of_ocaml)
but we **recommend** to use the gen_js_api version which is the master branch.

## How to install and compile your project by using this plugin ?

Don't forget to switch to a compiler **>= 4.03.0**.
```Shell
opam switch 4.03.0
```

You can use opam by pinning the repository with
```Shell
opam pin add cordova-plugin-device-orientation https://github.com/dannywillems/ocaml-cordova-plugin-device-orientation.git
```

and to compile your project, use
```Shell
ocamlfind ocamlc -c -o [output_file] -package gen_js_api -package cordova-plugin-device-orientation [...] -linkpkg [other arguments]
```

Don't forget to install the cordova plugin device-orientation with
```Shell
cordova plugin add cordova-plugin-device-orientation
```

## How to use ?

See the official documentation
[cordova-plugin-device-orientation](https://github.com/apache/cordova-plugin-device-orientation)
