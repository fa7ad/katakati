open ReactNative

let styles = {
  open Style
  StyleSheet.create({
    "container": viewStyle(
      ~flex=1.0,
      ~backgroundColor=UI.Colors.background,
      ~alignItems=#flexStart,
      ~justifyContent=#flexStart,
      (),
    ),
    "text": textStyle(~color="#fff", ~fontSize=18.0, ()),
  })
}

@react.component
let make = (~navigation, ~route) => {
  (navigation, route) |> ignore
  <View style={styles["container"]}>
    <BackgroundGradient /> <Text style={styles["text"]}> {"Home Screen"->React.string} </Text>
  </View>
}
