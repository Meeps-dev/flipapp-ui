# FlipApp UI (Flutter)

A modern, responsive Flutter UI project inspired by FlipApp. 
The project demonstrates clean architecture with separated constants, widgets, and scalable UI components.

## 📂 Features

- Responsive UI using `SizeConfig`.
- Custom `SliverAppBar` with flexible space and stretch effect.
- Carousel Slider integration (`carousel_slider` package).
- Modular widget architecture (`widgets/` folder).
- Custom styling with centralized constants (`app_styles.dart`).
- Ready-to-use for further backend integration.

## 🛠 Technologies Used

- Flutter & Dart
- `carousel_slider` for promo carousel
- `flutter_svg` for SVG assets

## 📁 Project Structure

lib/
├── constants/ # Colors, padding, radius, text styles
├── widgets/ # Reusable UI components
├── home_page.dart # Main UI page
└── main.dart # App entry point
assets/
├── images/ # PNG/JPG assets
└── icons/ # SVG icons

bash
Copy code

## 🚀 Getting Started

1. Clone the repository:
```bash
git clone https://github.com/<username>/flipapp-ui.git
Install dependencies:

bash
Copy code
flutter pub get
Run the app:

bash
Copy code
flutter run
📌 Notes
Replace the network image URLs and assets in assets/ with your own if needed.

Designed to be scalable for integration with backend or state management solutions.

