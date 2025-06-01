# Stroll Bonfire

A modern Flutter app with clean architecture, MVVM pattern, and Provider state management. The app features a dynamic question/option interface, beautiful theming, and responsive design.

---

## Features

- **MVVM Architecture:** Clear separation of UI and business logic.
- **Provider State Management:** Efficient and scalable state updates.
- **Dynamic Question & Options:** All question logic and selection state handled in the ViewModel.
- **Responsive UI:** Uses a custom `SizeConfig` for device adaptability.
- **Custom Theming:** Consistent look and feel across the app.
- **Navigation Service:** Centralized and scalable navigation.
- **Clean Code:** Modular, maintainable, and well-documented codebase.

---

## Folder Structure

```
lib/
  ├── view/                # UI screens and widgets
  ├── view_model/          # ViewModels for business logic
  ├── services/            # Utilities and services (e.g., navigation, sizing)
  ├── constants/           # App-wide constants and themes
  ├── enums/               # Enum definitions
  ├── main.dart            # App entry point
  ├── router.dart          # Route management
  ├── locator.dart         # Dependency injection setup
```

---

## Getting Started

### Prerequisites

- [Flutter SDK](https://flutter.dev/docs/get-started/install)
- Dart 3.x
- A device or emulator

### Installation

1. **Clone the repository:**
   ```bash
   git clone https://github.com/yourusername/stroll_bonfire.git
   cd stroll_bonfire
   ```

2. **Install dependencies:**
   ```bash
   flutter pub get
   ```

3. **Run the app:**
   ```bash
   flutter run
   ```

---

## Key Notes

- **Clean Architecture & State Management:**
  - MVVM pattern with Provider for state management.
  - All business logic (like question/option selection) is in the ViewModel.
  - UI widgets are stateless regarding business logic.

- **Dynamic & Reactive UI:**
  - Questions, options, and selection state are managed in the ViewModel.
  - UI updates automatically via `notifyListeners()`.

- **Reusable & Modular Widgets:**
  - Option buttons and other UI components are modular and reusable.

- **Responsive Design:**
  - Uses `SizeConfig` for device adaptability.

- **Custom Theming:**
  - Centralized theme management for a consistent look.

- **Navigation:**
  - Centralized navigation logic using a custom `NavigationService` and `router.dart`.

- **Code Cleanliness:**
  - All unnecessary comments and dead code have been removed.
  - Files are concise, with only helpful doc comments remaining.

- **UI/UX:**
  - The UI closely matches the provided design, with a 2x2 grid for options, clear instructional text, and action buttons.
  - The bottom navigation bar is implemented using a `TabBar` for easy navigation between main sections.

---

## Customization

- **Questions/Options:** Edit `HomeScreenViewModel` to change questions or add more options.
- **Theme:** Modify `constants/custom_theme.dart` for custom colors and fonts.
- **Navigation:** Add routes in `router.dart` and use the `NavigationService`.

---

## Contributing

Pull requests are welcome! For major changes, please open an issue first to discuss what you would like to change.

---

## License

[MIT](LICENSE)

---

**Happy Coding!**
