import React from "react";
import { Text } from "react-native-paper";
import { NavigationContainer } from "@react-navigation/native";
import { createNativeStackNavigator } from "@react-navigation/native-stack";

import FromAPI from "./screens/FromAPI";
import FromFile from "./screens/FromFile";
import FromJSON from "./screens/FromJSON";
import FromSqlite from "./screens/FromSqlite";
import { StyleSheet } from "react-native";

const Stack = createNativeStackNavigator();
export default function App() {
  return (
    <NavigationContainer>
      <Stack.Navigator initialRouteName="FromAPI">
        <Stack.Screen name="FromAPI" component={FromAPI} />
        <Stack.Screen name="FromFile" component={FromFile} />
        <Stack.Screen name="FromJSON" component={FromJSON} />
        <Stack.Screen name="FromSqlite" component={FromSqlite} />
      </Stack.Navigator>
    </NavigationContainer>
  );
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    backgroundColor: "#fff",
    alignItems: "center",
    justifyContent: "center",
  },
});
