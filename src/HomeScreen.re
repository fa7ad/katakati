open ReactNative;

let styles =
  Style.(
    StyleSheet.create({
      "container":
        viewStyle(
          ~flex=1.0,
          ~backgroundColor="#000",
          ~alignItems=`center,
          ~justifyContent=`center,
          (),
        ),
      "text": textStyle(~color="#fff", ~fontSize=18.0, ()),
    })
  );

[@react.component]
let make = (~navigation, ~route) => {
  Js.log2(navigation, route);
  <View style=styles##container>
    <Text style=styles##text> "Home Screen"->React.string </Text>
  </View>;
};
