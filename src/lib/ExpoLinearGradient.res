@bs.module("expo-linear-gradient") @react.component
external make: (
  ~colors: Js.Array.t<Js.String.t>=?,
  ~start: Js.Array.t<float>=?,
  ~_end: Js.Array.t<float>=?,
  ~locations: Js.Array.t<float>=?,
  ~style: ReactNative.Style.t=?,
  ~children: React.element,
) => React.element = "LinearGradient"
