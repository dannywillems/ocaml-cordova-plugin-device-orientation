# ocaml-cordova-plugin-device-orientation

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

## How to use ?

See the official documentation
[cordova-plugin-device-orientation](https://github.com/apache/cordova-plugin-device-orientation)

## ! BE CAREFUL !

The device plugin creates a new object called *navigator.compass*, but the object is
available when the *deviceready* event is handled.

We provide a function *Compass.t* of type unit -> Compass.compass
which does the binding when you call it.
So, use (with js_of_ocaml)

```OCaml
let on_device_ready _ =
  let c = Compass.t () in
  (* Some code *)

let _ =
  Dom.addEventListener Dom_html.document (Dom.Event.make "deviceready")
  (Dom_html.handler on_device_ready) Js._false
```
