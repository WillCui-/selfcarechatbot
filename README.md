# chatbot_test1

This is the version 1 of the Self-Care Chatbot.

Note: Package structure created by Flutter's app template.

- [chatbot_test1](#chatbot_test1)
- [Development](#development)
  - [Prerequisites](#prerequisites)
    - [Install Flutter](#install-flutter)
    - [Web app setup](#web-app-setup)
    - [iOS app setup](#ios-app-setup)
  - [Start the app](#start-the-app)
    - [Start the web app](#start-the-web-app)
    - [Start the iOS app](#start-the-ios-app)
- [Troubleshooting](#troubleshooting)

# Development

## Prerequisites

### Install Flutter

Follow the [installation instructions](https://flutter.dev/docs/get-started/install) to install Flutter. Run `which flutter` to verify you've installed it correctly.

### Web app setup

Make sure you have Flutter set up for web development.

```
flutter channel beta
flutter upgrade
flutter config --enable-web
```

Run `flutter devices` and check if `Chrome (web)` shows up in the connected devices list.

### iOS app setup

If you have a Mac, it is recommended to [set up iOS development](https://flutter.dev/docs/get-started/install/macos#ios-setup) on your Mac.

Run `flutter devices` and check if `ios` shows up in the connected devices list.

## Start the app

### Start the web app

```
flutter run -d chrome
```

### Start the iOS app

```
flutter run
```

# Troubleshooting

<details>
<summary>
Error: CocoaPods's specs repository is too out-of-date to satisfy dependencies.
</summary>

Follow the instructions [here](https://stackoverflow.com/a/64474526).
</details>
