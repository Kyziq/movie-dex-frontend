import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../models/movie.dart';
// import '../../providers/movie_provider.dart';
import '../../widgets/movie_card.dart';

// Define a provider for mock movie data (to remove later)
final movieProvider = Provider<List<Movie>>((ref) {
  return [
    Movie(
      id: 1,
      title: 'Inside Out 2',
      description:
          'Teenager Rileys mind headquarters is undergoing a sudden demolition to make room for something entirely unexpected: new Emotions! Joy, Sadness, Anger, Fear and Disgust, who’ve long been running a successful operation by all accounts, aren’t sure how to feel when Anxiety shows up. And it looks like she’s not alone.',
      releaseDate: '2024-05-01',
      genre: 'Animation, Family, Drama, Adventure, Comedy',
      imageUrl:
          'https://image.tmdb.org/t/p/w500//3aIrZuRyiGs9xDYHvMitHPFDd6r.jpg',
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
    ),
    Movie(
      id: 2,
      title: 'Civil War',
      description:
          'In the near future, a group of war journalists attempt to survive while reporting the truth as the United States stands on the brink of civil war.',
      releaseDate: '2024-04-10',
      genre: 'War, Action, Drama',
      imageUrl:
          'https://image.tmdb.org/t/p/w500//sh7Rg8Er3tFcN9BpKIPOMvALgZd.jpg',
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
    ),
    Movie(
      id: 3,
      title: 'Bad Boys: Ride or Die',
      description:
          'After their late former Captain is framed, Lowrey and Burnett try to clear his name, only to end up on the run themselves.',
      releaseDate: '2024-06-5',
      genre: 'Action, Crime, Thriller, Comedy',
      imageUrl:
          'https://image.tmdb.org/t/p/w500//nP6RliHjxsz4irTKsxe8FRhKZYl.jpg',
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
    ),
    Movie(
      id: 4,
      title: 'The Roundup: No Way Out',
      description:
          'Detective Ma Seok-do changes his affiliation from the Geumcheon Police Station to the Metropolitan Investigation Team, in order to eradicate Japanese gangsters who enter Korea to commit heinous crimes.',
      releaseDate: '2024-05-31',
      genre: 'Action, Crime, Comedy, Thriller',
      imageUrl:
          'https://image.tmdb.org/t/p/w500//lW6IHrtaATxDKYVYoQGU5sh0OVm.jpg',
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
    ),
    Movie(
      id: 5,
      title: 'Fast & Furious: Final Lap',
      description:
          'The last ride of the Fast & Furious saga, featuring epic races and high-stakes heists.',
      releaseDate: '2024-04-05',
      genre: 'Action',
      imageUrl:
          'https://image.tmdb.org/t/p/w500//rdQrh59Gq0DX8OmoQeECUtBkoH5.jpg',
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
    ),
    Movie(
      id: 6,
      title: 'Tarot',
      description:
          'When a group of friends recklessly violate the sacred rule of Tarot readings, they unknowingly unleash an unspeakable evil trapped within the cursed cards. One by one, they come face to face with fate and end up in a race against death.',
      releaseDate: '2024-05-01',
      genre: 'Horror',
      imageUrl:
          'https://image.tmdb.org/t/p/w500//gAEUXC37vl1SnM7PXsHTF23I2vq.jpg',
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
    ),
    Movie(
      id: 7,
      title: 'Ultraman: Rising',
      description:
          'With Tokyo under attack from kaiju, Ultraman discovers his greatest challenge isn’t fighting giant monsters - it’s raising one.',
      releaseDate: '2024-04-05',
      genre: 'Action',
      imageUrl:
          'https://image.tmdb.org/t/p/w500//j886YEkIUsiImY53px5VHKD4lRa.jpg',
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
    ),
    Movie(
      id: 8,
      title: 'Furiosa: A Mad Max Saga',
      description:
          'As the world fell, young Furiosa is snatched from the Green Place of Many Mothers and falls into the hands of a great Biker Horde led by the Warlord Dementus. Sweeping through the Wasteland they come across the Citadel presided over by The Immortan Joe. While the two Tyrants war for dominance, Furiosa must survive many trials as she puts together the means to find her way home.',
      releaseDate: '2024-04-05',
      genre: 'Science Fiction',
      imageUrl:
          'https://image.tmdb.org/t/p/w500//iADOJ8Zymht2JPMoy3R7xceZprc.jpg',
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
    ),
    Movie(
      id: 9,
      title: 'Thelma the Unicorn',
      description:
          'Thelma dreams of being a glamorous unicorn. Then in a rare pink and glitter-filled moment of fate, Thelmas wish comes true. She rises to instant international stardom, but at an unexpected cost. After a while, Thelma realizes that she was happier as her ordinary, sparkle-free self. So she ditches her horn, scrubs off her sparkles, and returns home, where her best friend is waiting for her with a hug.',
      releaseDate: '2024-07-03',
      genre: 'Animation',
      imageUrl:
          'https://image.tmdb.org/t/p/w500//yutiEZ7taGDNau2jGjKIdDwQpDw.jpg',
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
    ),
    Movie(
      id: 10,
      title: 'Cacau',
      description:
          'Cacau is an engaging saga of family secrets, clandestine loves and sacrifices, all sweetened by the irresistible taste of chocolate and the magic of cocoa plantations.',
      releaseDate: '2024-03-05',
      genre: 'Action',
      imageUrl:
          'https://image.tmdb.org/t/p/w500//nNCFBKZ68fmr008moWSzLdu2mUP.jpg',
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
    ),
    Movie(
      id: 11,
      title: 'Frieren: Beyond Journeys End',
      description:
          'After the party of heroes defeated the Demon King, they restored peace to the land and returned to lives of solitude. Generations pass, and the elven mage Frieren comes face to face with humanity’s mortality. She takes on a new apprentice and promises to fulfill old friends’ dying wishes. Can an elven mind make peace with the nature of life and death? Frieren embarks on her quest to find out.',
      releaseDate: '2023-09-29',
      genre: 'Drama',
      imageUrl:
          'https://image.tmdb.org/t/p/w500//dqZENchTd7lp5zht7BdlqM7RBhD.jpg',
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
    ),
    Movie(
      id: 12,
      title: 'Arcane',
      description:
          'Amid the stark discord of twin cities Piltover and Zaun, two sisters fight on rival sides of a war between magic technologies and clashing convictions.',
      releaseDate: '2024-04-05',
      genre: 'Animation',
      imageUrl:
          'https://image.tmdb.org/t/p/w500//fqldf2t8ztc9aiwn3k6mlX3tvRT.jpg',
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
    ),
  ];
});

class MovieListScreen extends ConsumerWidget {
  const MovieListScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final movies = ref.watch(movieProvider);

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
                      placeholder: 'Search movies...',
                    ),
                  ),
                  SizedBox(height: 12), // Space under the search bar
                ],
              ),
            ),
            SliverToBoxAdapter(
              child: Section(
                title: 'CURRENTLY TRENDING MOVIES',
                movies: movies,
              ),
            ),
            SliverToBoxAdapter(
              child: Section(
                title: 'MY MOVIES LIST',
                movies: movies,
              ),
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
              return MovieCard(movie: movie);
            },
          ),
        ),
      ],
    );
  }
}
