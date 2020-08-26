open ReactNavigation;

module NavigationContainer = {
  [@bs.module "@react-navigation/native"] [@react.component]
  external make: (~children: React.element) => React.element = "NavigationContainer";
};

include Stack.Make({
  type params = unit;
});

[@react.component]
let make = () => {
  <NavigationContainer>
    <Navigator mode=`modal>
      <Screen name="Home" component=HomeScreen.make />
    </Navigator>
  </NavigationContainer>
};
