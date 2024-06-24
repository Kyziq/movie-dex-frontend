// lib/screens/movie/movie_list_screen.dart
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movie_dex_mobile/screens/movie/movie_detail_screen.dart';
import '../../models/movie.dart';
import '../../widgets/movie_card.dart';
import '../../providers/movie_provider.dart';

class MovieListScreen extends ConsumerWidget {
  const MovieListScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final moviesAsyncValue = ref.watch(movieProvider);

    return CupertinoPageScaffold(
      child: SafeArea(
        child: CustomScrollView(
          slivers: [
            const SliverToBoxAdapter(
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 16.0),
                    child: Text(
                      'Discover',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: CupertinoColors.white,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: CupertinoSearchTextField(
                      placeholder: 'Search movies',
                    ),
                  ),
                  SizedBox(height: 12), // Space under the search bar
                ],
              ),
            ),
            moviesAsyncValue.when(
              data: (movies) {
                // print('Movies loaded in UI: $movies');
                return SliverList(
                  delegate: SliverChildListDelegate([
                    Section(
                      title: 'CURRENTLY TRENDING MOVIES',
                      movies: movies,
                    ),
                    Section(
                      title: 'MY MOVIES LIST',
                      movies: movies,
                    ),
                  ]),
                );
              },
              loading: () => const SliverFillRemaining(
                child: Center(
                  child: CupertinoActivityIndicator(),
                ),
              ),
              error: (error, stack) {
                return const SliverFillRemaining(
                  child: Center(
                    child: Text('Failed to load movies'),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class Section extends StatelessWidget {
  final String title;
  final List<Movie> movies;

  const Section({super.key, required this.title, required this.movies});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          child: Text(
            title,
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: CupertinoColors.white,
            ),
          ),
        ),
        const SizedBox(height: 4.0),
        SizedBox(
          height: 250,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: movies.length,
            itemBuilder: (context, index) {
              final movie = movies[index];
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    CupertinoPageRoute(
                      builder: (context) => MovieDetailScreen(movie: movie),
                    ),
                  );
                },
                child: MovieCard(movie: movie),
              );
            },
          ),
        ),
      ],
    );
  }
}
