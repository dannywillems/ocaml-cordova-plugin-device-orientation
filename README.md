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

## How to use ?

See the official documentation
[cordova-plugin-device-orientation](https://github.com/apache/cordova-plugin-device-orientation)

## ! BE CAREFUL !

The device plugin creates a new object called *navigator.compass*, but the object is
available when the *deviceready* event is handled.

We don't provide a *compass* variable in this plugin (as said in the official
documentation on js_of_ocaml). If we did, *compass* will be set to **undefined**
because the *navigator.compass* javascript object doesn't exist when we create
the variable.

Instead, we provide a function *Compass.compass* of type unit -> Compass.compass
Js.t which does the binding when you call it.
So, use

```OCaml
let on_device_ready _ =
  let c = Compass.compass () in
  (* Some code *)

let _ =
  Dom.addEventListener Dom_html.document (Dom.Event.make "deviceready")
  (Dom_html.handler on_device_ready) Js._false
```
