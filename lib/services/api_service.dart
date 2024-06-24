import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../models/movie.dart';

final apiServiceProvider = Provider<ApiService>((ref) => ApiService());

class ApiService {
  // Android emulators can access the host machine via the special IP address 10.0.2.2. This address maps to 127.0.0.1 on the host machine.
  final String baseUrl = 'http://10.0.2.2:8000';
  final Dio _dio = Dio();

  Future<List<Movie>> getMovies() async {
    try {
      final response = await _dio.get('$baseUrl/movies');
      final data = response.data as List;
      return data.map((json) => Movie.fromJson(json)).toList();
    } catch (e) {
      throw Exception('Failed to load movies: $e');
    }
  }
}
