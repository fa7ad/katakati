open ReactNative

let styles = {
  open Style
  StyleSheet.create({
    "gradient": style(
      ~position=#absolute,
      ~top=0.->dp,
      ~bottom=0.->dp,
      ~left=0.->dp,
      ~right=0.->dp,
      ~zIndex=-1,
      (),
    ),
  })
}

@react.component
let make = () =>
  <ExpoLinearGradient
    colors=[UI.Colors.bg_1, UI.Colors.bg_2]
    start=[0., 1.]
    _end=[0.001, 0.]
    locations=[0.0035, 1.93]
    style={styles["gradient"]}>
    React.null
  </ExpoLinearGradient>
