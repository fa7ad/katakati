open ReactNative

let styles = {
  open Style
  StyleSheet.create({
    "container": viewStyle(
      ~flex=1.0,
      ~backgroundColor=UI.Colors.background,
      ~alignItems=#center,
      ~justifyContent=#spaceBetween,
      ~padding=36.0->dp,
      (),
    ),
    "text": textStyle(~color="#fff", ~fontSize=18.0, ()),
    "image": style(~height=48.0->dp, ()),
  })
}

@react.component
let make = (~navigation, ~route) => {
  (navigation, route) |> ignore

  let (fontsLoaded, _noop) = ExpoFont.useFonts({
    "Arial": "Bold",
  })

  if fontsLoaded {
    React.null
  } else {
    <View style={styles["container"]}>
      <BackgroundGradient />
      <Image
        source={"../assets/katakati.png"->Packager.require->Image.Source.fromRequired}
        resizeMode=#contain
        style={styles["image"]}
      />
      <Image
        source={"../assets/xo.png"->Packager.require->Image.Source.fromRequired}
        resizeMode=#contain
        style={styles["image"]}
      />
      <Text style={styles["text"]}> {"Home Screen"->React.string} </Text>
      <Text style={styles["text"]}> {"Home Screen"->React.string} </Text>
      <Text style={styles["text"]}> {"Home Screen"->React.string} </Text>
    </View>
  }
}
