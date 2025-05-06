# Learning App

A Flutter-based learning application that provides a modern and interactive educational platform. This project is built using Flutter framework and follows best practices for cross-platform mobile development.

## Features

- Cross-platform compatibility (iOS, Android, Web, Desktop)
- Material Design UI components
- HTTP networking capabilities for API integration
- Custom text field widgets for enhanced user input
- Modular architecture with separate API tasks and services

## Project Structure

```
lib/
├── api_task/
│   ├── models/
│   ├── pages/
│   └── service/
├── widgets/
│   └── custom_text_field.dart
├── main.dart
└── register.dart
```

## Prerequisites

- Flutter SDK (>=2.18.0 <3.0.0)
- Dart SDK
- Android Studio / VS Code with Flutter extensions

## Dependencies

- `flutter`: Flutter SDK
- `cupertino_icons`: ^1.0.2
- `http`: ^0.13.5

## Getting Started

1. Clone the repository:
```bash
git clone [repository-url]
```

2. Install dependencies:
```bash
flutter pub get
```

3. Run the app:
```bash
flutter run
```

## Development

This project follows Flutter's standard development practices and file structure. The main application code is in the `lib` directory:

- `api_task/`: Contains API-related code including models, pages, and services
- `widgets/`: Reusable custom widgets
- `main.dart`: Application entry point
- `register.dart`: Registration-related functionality

## Building for Different Platforms

### Android
```bash
flutter build apk
```

### iOS
```bash
flutter build ios
```

### Web
```bash
flutter build web
```

### Desktop (Windows/macOS/Linux)
```bash
flutter build windows
flutter build macos
flutter build linux
```

## Resources

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

## License

This project is licensed under the MIT License - see the LICENSE file for details.
