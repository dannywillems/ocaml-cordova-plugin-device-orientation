(* -------------------------------------------------------------------------- *)
(* Default value for frequency is 100 and for filter is 0 (see Compass.js in the
 * original plugin)
 *)
type options = private Ojs.t

val create_options :
  ?frequency:(int [@js.default 100])  ->
  ?filter:(float [@js.default 0.])    ->
  unit                                ->
  options
[@@js.builder]
(* -------------------------------------------------------------------------- *)

(* -------------------------------------------------------------------------- *)
type heading = private Ojs.t

val heading_magnetic_heading : heading -> float
[@@js.get "magneticHeading"]
val heading_true_heading     : heading -> float
[@@js.get "trueHeading"]
val heading_heading_accuracy : heading -> float
[@@js.get "headingAccuracy"]
val heading_timestamp        : heading -> int
[@@js.get "timestamp"]
(* -------------------------------------------------------------------------- *)

(* -------------------------------------------------------------------------- *)
type error = private Ojs.t

type type_error =
  | Compass_internal_error [@js 0]
  | Compass_not_supported [@js 20]
  [@@js.enum]

val error_code : error -> type_error
[@@js.get "code"]
(* -------------------------------------------------------------------------- *)

(* -------------------------------------------------------------------------- *)
val get_current_heading :
  (heading  -> unit)  ->
  (error    -> unit)  ->
  unit
[@@js.global "navigator.compass.getCurrentHeading"]

val watch_heading :
  (heading  -> unit)                                  ->
  (error    -> unit)                                  ->
  ?options:(options [@js.default create_options ()])  ->
  unit                                                ->
  int
[@@js.global "navigator.compass.watchHeading"]

val clear_watch : int -> unit
[@@js.global "navigator.compass.clearWatch"]
(* -------------------------------------------------------------------------- *)
