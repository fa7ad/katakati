open ReactNavigation

module NavigationContainer = {
  @bs.module("@react-navigation/native") @react.component
  external make: (~children: React.element) => React.element = "NavigationContainer"
}

include Stack.Make({
  type params = unit
})

@react.component
let make = () =>
  <NavigationContainer>
    <ExpoStatusBar translucent=false backgroundColor=UI.Colors.background />
    <Navigator headerMode=#none> <Screen name="KataKati" component=HomeScreen.make /> </Navigator>
  </NavigationContainer>
