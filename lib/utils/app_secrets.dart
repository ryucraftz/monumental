import 'package:flutter_dotenv/flutter_dotenv.dart';

class AppSecrets {
  static String get stripeKey =>
      dotenv.env['STRIPE_SECRET_KEY'] ?? 'PLACEHOLDER_STRIPE_KEY';
  static String get stripePublishableKey =>
      dotenv.env['STRIPE_PUBLISHABLE_KEY'] ?? 'PLACEHOLDER_PUBLISHABLE_KEY';
  static String get firebaseApiKey =>
      dotenv.env['FIREBASE_API_KEY'] ?? 'PLACEHOLDER_FIREBASE_KEY';
}
