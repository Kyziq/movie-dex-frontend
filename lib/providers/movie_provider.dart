import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../models/movie.dart';
import '../services/api_service.dart';

final apiServiceProvider = Provider((ref) => ApiService());

final movieProvider = FutureProvider<List<Movie>>((ref) async {
  final apiService = ref.watch(apiServiceProvider);
  return apiService.getMovies();
});
