import React from 'react'
import {View, Text, AppRegistry, NativeModules} from 'react-native'

console.log("*****************")
console.log("CameraManager", NativeModules.CameraManager)
console.log("RCTCameraManager", NativeModules.RCTCameraManager)
console.log("RNCameraManager", NativeModules.RNCameraManager)
console.log("CameraModule", NativeModules.CameraModule)
console.log("RCTCameraModule", NativeModules.RCTCameraModule)
console.log("RNCameraModule", NativeModules.RNCameraModule)


class RNIosTest extends React.Component {
    render() {
        return <View style={{flex: 1, justifyContent: "center", alignItems: "center"}}>
            <Text>Hello, iOS!</Text>
        </View>
    }
}

AppRegistry.registerComponent('RNIosTest', () => RNIosTest);
