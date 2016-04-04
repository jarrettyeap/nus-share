(* This file was generated by Eliom-base-app.
   Feel free to use it, modify it, and redistribute it as you wish. *)

(** This file contains the configuration of your Eliom application.
    You can take some configuration options from Ocsigen server's
    configuration file, as shown below.
*)

let avatar_dir = ref []

let avatars = Ocsigen_extensions.Configuration.(
  let attributes = [
    attribute ~name:"dir" ~obligatory:true
      (fun h -> avatar_dir := Eliom_lib.String.split '/' h);
  ]
  in
  element ~name:"avatars" ~obligatory:true ~attributes ()
)

let _ = Eliom_config.parse_config [avatars]
