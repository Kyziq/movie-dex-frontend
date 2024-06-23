import 'package:dio/dio.dart';
import '../models/movie.dart';

class ApiService {
  // Android emulators can access the host machine via the special IP address 10.0.2.2. This address maps to 127.0.0.1 on the host machine.
  final String baseUrl = 'http://10.0.2.2:8000';
  final Dio _dio = Dio();

  Future<List<Movie>> getMovies() async {
    try {
      final response = await _dio.get('$baseUrl/movies');
      print(response.data);
      return (response.data as List)
          .map((movie) => Movie.fromJson(movie))
          .toList();
    } catch (e) {
      throw Exception('Failed to load movies: $e');
    }
  }

  // Similarly, define other CRUD methods
}
