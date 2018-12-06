# So yeah

When integrating react-native-camera into an existing iOS app, it seems to work fine
in a plain objective-c project, but not in a plain swift project.

When actually attempting to use react-native-camera, an error is raised because it
can't find NativeModules.CameraManager or NativeModules.CameraModule.

I'm using cocoapods to set up the Xcode projects with react-native as well as
react-native-camera.

# Initial steps

* Run `yarn install`
* Run `yarn start`

# Steps to make it work (with obj-c)

* cd to `ios-objc/`
* Run `pod install`
* Open xcode with `open DemoApp.xcworkspace`
* Run app
* Notice how both CameraManager and RCTCameraManager is available

# Steps to reproduce error (with swift)

* cd to `ios-swift/`
* Run `pod install`
* Open xcode with `open DemoApp.xcworkspace`
* Run app
* Notice how both CameraManager and RCTCameraManager is undefined, as well as
  the other variants that it is logging
