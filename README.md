# rental_market

A new [Flutter](https://flutter.io/) project.

## Testing
Run tests with:

```zsh
flutter test
```

## Development
For the purposes of native development, we will pretty much do everything on a simulated device.

The instructions for setting up such a device are different between Android and iOS.

In general, once we have setup our emulated devices, we can view and select them with:

```zsh
flutter devices
flutter run -d deviceID
```

If we're unsure about the status of our native kits, we can always run:

```zsh
flutter doctor
```

Run onto everything with the run command:

```zsh
flutter run -d all
```

### Android
- Setup Android SDK

- open android studios

- start a project

- open Tools > AVD manager

- create a device locally



### iOS
- Setup Xcode
  - open xcode
  - start a project
  - add a device

- View the list of available iOS devices:

```zsh
xcrun simctl list
```

- Install and launch a device
```zsh
xcrun simctl install <YOUR-DEVICE-ID> <PATH-TO-APPLICATION-BUNDLE>
xcrun simctl launch <YOUR-DEVICE-ID> <BUNDLE-ID-OF-APP-BUNDLE>
```

- Launch a simulator
```zsh
open -a Simulator.app
```

### Integration Testing

1. Turn on an emulated phone

2. Run the `flutter drive` command

```zsh
flutter drive --target='test_driver/setup_sanity.dart'
```

Be sure to have the setup file and the test file have the same name plus test

### Getting Started

For help getting started with Flutter, view our online
[documentation](http://flutter.io/).

## Dev Journal
During my development process, I will also be learning dart and flutter. Consult the `journal/` directory for my running account of me doing everything