@bs.module("expo-status-bar") @react.component
external make: (
  ~hidden: bool=?,
  ~style: string=?,
  ~animated: bool=?,
  ~translucent: bool=?,
  ~backgroundColor: string=?,
  ~hideTransitionAnimation: string=?,
  ~networkActivityIndicatorVisible: bool=?,
) => React.element = "StatusBar"
