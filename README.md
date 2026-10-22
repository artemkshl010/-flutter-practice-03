Developer Card — Flutter

About the project

This project was created as part of Practical Work 3: Hello World in Flutter.

The application displays a developer business card with basic contact information and a button for switching between light and dark themes.

Features

* Developer avatar with a code icon.
* Developer name and specialty.
* Contact information displayed in separate rows.
* Light and dark theme switching.
* Reusable ContactRow widget in a separate file.
* Responsive layout using SingleChildScrollView.

Project structure

lib/
├── main.dart
└── contact_row.dart
test/
└── widget_test.dart
docs/
├── app-light.png
├── app-dark.png
└── flutter-doctor.png

Requirements

* Flutter SDK
* Google Chrome
* Visual Studio Code with the Flutter extension

How to run

1. Clone or download this repository.
2. Open the project folder in Visual Studio Code.
3. Open a terminal in the project directory.
4. Get the project dependencies:

flutter pub get

5. Run the application in Chrome:

flutter run -d chrome

Code analysis

The project was checked using:

flutter analyze

Result:

No issues found!

Screenshots

Light theme

Dark theme

Flutter doctor

Author

Artem

Hot Reload and Hot Restart

During testing, the application was launched in Google Chrome using flutter run -d chrome.

* Hot Reload: applies supported code changes without restarting the application. The current application state is preserved.
* Hot Restart: restarts the application and resets its in-memory state.

Hot Reload is useful for quickly checking changes to the user interface, while Hot Restart helps verify the application from its initial state.

Difficulties

During setup, the Flutter SDK was installed and configured. The initial environment check reported that the Android SDK and complete Xcode installation were missing. The application was successfully launched in Chrome, and flutter analyze completed with no issues.