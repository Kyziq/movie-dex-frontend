// lib/providers/movie_provider.dart
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movie_dex_mobile/config/app_config.dart';
import 'package:movie_dex_mobile/data/mock_data.dart';
import 'package:movie_dex_mobile/services/api_service.dart';
import 'package:movie_dex_mobile/models/movie.dart';

final movieProvider = FutureProvider<List<Movie>>((ref) async {
  final appConfig = ref.watch(appConfigProvider);

  if (appConfig.useMockData) {
    return mockMovies; // Return mock data
  } else {
    final apiService = ref.watch(apiServiceProvider);
    return await apiService.getMovies();
  }
});
