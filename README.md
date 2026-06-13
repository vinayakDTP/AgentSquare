# AgentSquare AI App

AgentSquare AI is a Flutter-based mobile application designed as an intelligent assistant for real estate professionals. It provides a clean, modern interface featuring an Activity Feed, an Agents Hub, and a Network view.

## Prerequisites

Before you begin, ensure you have the following installed:
- [Flutter SDK](https://docs.flutter.dev/get-started/install) (latest stable version)
- Android Studio or VS Code (with Flutter extensions)
- An Android Emulator or a physical device connected via USB/Wi-Fi with USB debugging enabled.

## Getting Started

1. **Clone the repository** (or navigate to the project directory):
   ```bash
   cd agentsquare_app
   ```

2. **Fetch Dependencies**:
   Whenever you make changes to `pubspec.yaml`, or when you first download the project, you must install the dependencies:
   ```bash
   flutter pub get
   ```

## Running the App Locally

To test your code changes on a local emulator or connected device:

1. Make sure your device/emulator is running and recognized by Flutter:
   ```bash
   flutter devices
   ```

2. Run the application in debug mode:
   ```bash
   flutter run
   ```
   *Tip: While the app is running, you can press `r` in the terminal to Hot Reload the application (instantly see UI changes), or `R` to Hot Restart.*

## Building the APK

If you want to generate a standalone Android APK file for distribution or installation on a real device:

1. Run the build command:
   ```bash
   flutter build apk --release
   ```

2. Once the process completes, your APK will be located at:
   `build/app/outputs/flutter-apk/app-release.apk`

## Making Code Changes

- **Theme & Styling**: Colors and typography are centralized in `lib/theme/app_theme.dart`.
- **Screens**: New UI views should be added under the `lib/screens/` directory.
- **Main Layout**: The bottom navigation logic is handled in `lib/screens/main_layout.dart`.

Happy coding!
