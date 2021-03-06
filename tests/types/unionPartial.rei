module MyQuery: {
  type t = Js.t({
    .
    dogOrHuman: [ | `Dog (Js.t({. name: string, barkVolume: float})) | `Nonexhaustive]
  });
  let make: unit => Js.t({ . parse: Js.Json.t => t, query: string, variables: Js.Json.t });
  let makeWithVariables: Js.t({.}) => Js.t({ . parse: Js.Json.t => t, query: string, variables: Js.Json.t });
};