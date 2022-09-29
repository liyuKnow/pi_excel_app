import React from "react";
import { Button, Text, View } from "react-native";
import { useNavigation } from "@react-navigation/native";

const FromFile = () => {
  const navigate = useNavigation();
  return (
    <View>
      <Text>About Screen</Text>
      <Button title="Go Back" onPress={() => navigate.goBack()} />
    </View>
  );
};

export default FromFile;
