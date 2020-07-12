open ReactNative;

let styles =
  Style.(
    StyleSheet.create({
      "container":
        viewStyle(
          ~flex=1.0,
          ~backgroundColor="#000",
          ~alignItems=`center,
          ~justifyContent=`flexStart,
          (),
        ),
      "text": textStyle(~color="#fff", ~fontSize=18.0, ()),
    })
  );

[@react.component]
let make = () => {
  <SafeAreaView style=styles##container>
    <ExpoStatusBar style="light" translucent=false backgroundColor="#000" />
    <Text style=styles##text> "Hello, Reasonable App!"->React.string </Text>
  </SafeAreaView>;
};
