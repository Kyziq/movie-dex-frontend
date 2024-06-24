// lib/config/app_config.dart
import 'package:flutter_riverpod/flutter_riverpod.dart';

enum Environment { dev, prod }

class AppConfig {
  final Environment env;
  final bool useMockData;

  AppConfig({required this.env, this.useMockData = false});
}

final appConfigProvider = Provider<AppConfig>((ref) {
  // Default to dev environment and using mock data. This can be overridden as needed.
  return AppConfig(env: Environment.dev, useMockData: true);
});
