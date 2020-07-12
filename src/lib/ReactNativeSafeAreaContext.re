module SafeAreaView = {
  [@bs.module "react-native-safe-area-context"] [@react.component]
  external make:
    (
      ~key: string=?,
      ~style: ReactNative.Style.t=?,
      ~children: React.element=?
    ) =>
    React.element =
    "SafeAreaView";
};
