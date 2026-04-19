# 🛒 Provider Shopper - Premium Flutter App

[![Flutter](https://img.shields.io/badge/Flutter-%2302569B.svg?style=for-the-badge&logo=Flutter&logoColor=white)](https://flutter.dev)
[![Provider](https://img.shields.io/badge/Provider-v6.0-green.svg?style=for-the-badge)](https://pub.dev/packages/provider)

A state-of-the-art Flutter application built with a focus on **Premium UI/UX**, clean architecture, and efficient state management using **Provider**.

---

## ✨ Features

- **🔐 Premium Login Experience**: Biometric-inspired dark UI with custom-styled text fields and high-contrast call-to-action.
- **🛍️ Smart Catalog**: Fluid item browsing with real-time "Add to Bag" functionality and animated transitions.
- **🎒 Sophisticated Bag Management**: Real-time total calculation, item removal, and a seamless checkout experience.
- **🛠️ Services & Tools Hub**: A dedicated dashboard for post-purchase services like tracking, refunds, and support—all with a "chic" card design.
- **🔔 Interactive Feedback**: Custom-styled SnackBar notifications for a polished user experience.

---

## 🎨 UI & Design Philosophy

The project follows a **Sleek Dark Aesthetic**, utilizing:
- **Typography**: `Corben` for bold, expressive headings.
- **Color Palette**: A curated mix of `Deep Carbon`, `Surface Grey`, and `Vibrant Yellow` for premium contrast.
- **Components**: Rounded corners (24pt+), subtle glassmorphism-inspired gradients, and depth-focused shadows.

---

## 📁 Project Architecture

The codebase is organized into modular layers for scalability:

```text
lib/
├── common/         # Design system, themes, and global constants
├── models/         # Data structures and Provider business logic
├── screens/        # UI implementations (Login, Catalog, Cart, Services)
└── main.dart       # App entry point and GoRouter configuration
```

---

## 🛠️ Tech Stack

*   **State Management**: [Provider](https://pub.dev/packages/provider) - A wrapper around InheritedWidget to make state sharing easier.
*   **Routing**: [GoRouter](https://pub.dev/packages/go_router) - Declarative routing for Flutter.
*   **Styling**: Custom `ThemeData` with Material 3 support.

---

## 🚀 Getting Started

1.  **Clone the repository**:
    ```bash
    git clone https://github.com/omnia-osamaa/Provider_shopper.git
    ```
2.  **Install dependencies**:
    ```bash
    flutter pub get
    ```
3.  **Run the application**:
    ```bash
    flutter run
    ```

---

## 📝 Task Requirements Fulfilled

> [!TIP]
> This project was refined to meet the following specific requirements:
> - **Chic Services Screen**: Designed with stylish cards and a hero section.
> - **Order Now Feedback**: Integrated an "اطلب الآن" button with a custom success SnackBar.
> - **Layout Optimization**: Meticulous attention to spacing, alignment, and typography.
> - **Clean Logic**: All UI enhancements were implemented without altering the core business logic.

---

## 📸 Screenshots

| Login | Catalog | Services | Bag |
| :---: | :---: | :---: | :---: |
| ![Login](https://via.placeholder.com/200x400?text=Login+Screen) | ![Catalog](https://via.placeholder.com/200x400?text=Catalog+Screen) | ![Services](https://via.placeholder.com/200x400?text=Services+Screen) | ![Bag](https://via.placeholder.com/200x400?text=Bag+Screen) |

*Note: Replace placeholders with actual screenshots from the `assets` folder.*

---
