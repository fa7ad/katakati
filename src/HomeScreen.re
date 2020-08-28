open ReactNative;

let styles =
  Style.(
    StyleSheet.create({
      "container":
        viewStyle(
          ~flex=1.0,
          ~backgroundColor=UI.Colors.background,
          ~alignItems=`center,
          ~justifyContent=`center,
          (),
        ),
      "text": textStyle(~color="#fff", ~fontSize=18.0, ()),
      "gradient":
        style(
          // ~height=300.->dp,
          // ~width=100.->dp,
          ~position=`absolute,
          ~top=0.->dp,
          ~bottom=0.->dp,
          ~left=0.->dp,
          ~right=0.->dp,
          (),
        ),
    })
  );

[@react.component]
let make = (~navigation, ~route) => {
  (navigation, route) |> ignore;
  <View style=styles##container>
    <ExpoLinearGradient
      colors=[|UI.Colors.bg_1, UI.Colors.bg_2|]
      start=[|0., 0.|]
      _end=[|0., 1.|]
      style=styles##gradient>
      React.null
    </ExpoLinearGradient>
    <Text style=styles##text> "Home Screen"->React.string </Text>
  </View>;
};
