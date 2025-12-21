import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:movie_sphere/core/constants/constants.dart';
import 'package:movie_sphere/presentation/providers/movies_provider.dart';
import 'package:movie_sphere/presentation/widgets/loading_widget.dart';
import 'package:movie_sphere/presentation/widgets/movie_card.dart';

class SearchScreenFull extends ConsumerStatefulWidget {
  const SearchScreenFull({Key? key}) : super(key: key);

  @override
  ConsumerState<SearchScreenFull> createState() => _SearchScreenFullState();
}

class _SearchScreenFullState extends ConsumerState<SearchScreenFull> {
  late TextEditingController searchController;

  @override
  void initState() {
    super.initState();
    searchController = TextEditingController();
  }

  @override
  void dispose() {
    searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final searchQuery = ref.watch(searchQueryProvider);
    final searchResults = ref.watch(searchMoviesProvider(searchQuery));

    return Scaffold(
      appBar: AppBar(
        title: const Text(AppStrings.search),
      ),
      body: Column(
        children: [
          // Search Bar
          Padding(
            padding: const EdgeInsets.all(16),
            child: TextField(
              controller: searchController,
              onChanged: (value) {
                ref.read(searchQueryProvider.notifier).state = value;
              },
              decoration: InputDecoration(
                hintText: AppStrings.search,
                prefixIcon: const Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
          ),

          // Search Results
          Expanded(
            child: searchQuery.isEmpty
                ? Center(
                    child: Text(
                      'Enter a movie title to search',
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  )
                : searchResults.when(
                    data: (movies) {
                      if (movies.isEmpty) {
                        return Center(
                          child: Text(
                            AppStrings.noResults,
                            style: Theme.of(context).textTheme.bodyMedium,
                          ),
                        );
                      }

                      return GridView.builder(
                        padding: const EdgeInsets.all(16),
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          childAspectRatio: 0.6,
                          crossAxisSpacing: 12,
                          mainAxisSpacing: 12,
                        ),
                        itemCount: movies.length,
                        itemBuilder: (context, index) {
                          final movie = movies[index];
                          return MovieCard(
                            imageUrl:
                                movie.posterUrl ?? movie.posterPath,
                            title: movie.title,
                            rating: movie.voteAverage,
                            onTap: () =>
                                context.push('/movie/${movie.id}'),
                          );
                        },
                      );
                    },
                    loading: () => const LoadingWidget(),
                    error: (err, st) => Center(
                      child: Text(
                        'Error searching movies',
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                    ),
                  ),
          ),
        ],
      ),
    );
  }
}

