# Monument Booking App

A Flutter-based mobile application for booking and managing monument visits. This app allows users to discover, book, and manage their visits to various monuments with features like QR code scanning, location services, and secure payment processing.

## Features

- 🔐 Secure Authentication
  - Firebase Authentication
  - Google Sign-in integration
- 📍 Location Services

  - Monument discovery based on user location
  - Geolocation tracking
  - Address geocoding

- 💳 Payment Integration
  - Secure Stripe payment processing
  - Ticket booking and management
- 📱 User Features

  - QR code generation for tickets
  - QR code scanning for verification
  - User profile management
  - Booking history

- 🏛️ Monument Management
  - Event creation and management
  - Category-based filtering
  - Real-time updates

## 📱 Screenshots

<div align="center">
  <img src="images/Screenshot_1745221881.png" width="200" alt="Home Screen">
  <img src="images/Screenshot_1745221901.png" width="200" alt="Monument Details">
  <img src="images/Screenshot_1745221946.png" width="200" alt="Booking Screen">
  <img src="images/Screenshot_1745221952.png" width="200" alt="Payment Screen">
  <img src="images/Screenshot_1745221960.png" width="200" alt="QR Ticket">
  <img src="images/Screenshot_1745221970.png" width="200" alt="Profile Screen">
</div>

## Getting Started

### Prerequisites

- Flutter SDK (^3.7.0)
- Dart SDK
- Android Studio / VS Code
- Firebase account
- Stripe account

### Installation

1. Clone the repository:

```bash
git clone [your-repository-url]
```

2. Install dependencies:

```bash
flutter pub get
```

3. Configure environment variables:

   - Copy `.env.example` to `.env`
   - Add your Stripe and Firebase credentials

4. Set up Firebase:

   - Add `google-services.json` to `android/app/`
   - Add `GoogleService-Info.plist` to `ios/Runner/`

5. Run the app:

```bash
flutter run
```

## Environment Setup

Create a `.env` file in the root directory with the following variables:

```
STRIPE_SECRET_KEY=your_actual_stripe_secret_key
STRIPE_PUBLISHABLE_KEY=your_actual_stripe_publishable_key
FIREBASE_API_KEY=your_actual_firebase_key
```

## Dependencies

- `firebase_core`: ^3.12.1
- `firebase_auth`: ^5.5.1
- `cloud_firestore`: ^5.6.5
- `flutter_stripe`: ^11.4.0
- `geolocator`: ^13.0.2
- `qr_flutter`: ^4.1.0
- `mobile_scanner`: ^6.0.7
- And more...

## Project Structure

```
lib/
├── main.dart
├── secrets.dart
├── pages/
│   └── booking.dart
└── services/
    ├── database.dart
    ├── data.dart
    └── shared_pref.dart
```

## Security

- All sensitive credentials are stored in `.env` file
- API keys and secrets are managed through environment variables
- Firebase security rules are implemented
- Secure payment processing through Stripe

## Contributing

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

## License

This project is licensed under the MIT License - see the LICENSE file for details.

## Acknowledgments

- Flutter team for the amazing framework
- Firebase for backend services
- Stripe for payment processing
- All contributors and maintainers
