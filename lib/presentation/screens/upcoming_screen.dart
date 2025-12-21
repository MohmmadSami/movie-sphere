import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:movie_sphere/core/constants/constants.dart';
import 'package:movie_sphere/presentation/providers/movies_provider.dart';
import 'package:movie_sphere/presentation/widgets/loading_widget.dart';
import 'package:movie_sphere/presentation/widgets/movie_card.dart';

class UpcomingMoviesScreen extends ConsumerStatefulWidget {
  const UpcomingMoviesScreen({Key? key}) : super(key: key);

  @override
  ConsumerState<UpcomingMoviesScreen> createState() =>
      _UpcomingMoviesScreenState();
}

class _UpcomingMoviesScreenState extends ConsumerState<UpcomingMoviesScreen> {
  late ScrollController _scrollController;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    _scrollController.addListener(_onScroll);
  }

  void _onScroll() {
    if (_scrollController.position.pixels >=
        _scrollController.position.maxScrollExtent - 500) {
      // Refresh movies when user scrolls near bottom
      ref.refresh(upcomingMoviesProvider);
    }
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final upcomingMovies = ref.watch(upcomingMoviesProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text(AppStrings.upcoming),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => context.pop(),
        ),
      ),
      body: upcomingMovies.when(
        data: (movies) {
          if (movies.isEmpty) {
            return Center(
              child: Text(
                'No upcoming movies available',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            );
          }

          return GridView.builder(
            controller: _scrollController,
            padding: const EdgeInsets.all(16),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 0.6,
              crossAxisSpacing: 12,
              mainAxisSpacing: 12,
            ),
            itemCount: movies.length,
            itemBuilder: (context, index) {
              final movie = movies[index];
              return MovieCard(
                imageUrl: movie.posterUrl ?? movie.posterPath,
                title: movie.title,
                rating: movie.voteAverage,
                onTap: () => context.push('/movie/${movie.id}'),
              );
            },
          );
        },
        loading: () => const LoadingWidget(message: 'Loading upcoming movies...'),
        error: (err, st) => Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.error_outline,
                size: 64,
                color: Theme.of(context).colorScheme.error,
              ),
              const SizedBox(height: 16),
              Text(
                'Error loading upcoming movies',
                style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                  color: Theme.of(context).colorScheme.error,
                ),
              ),
              const SizedBox(height: 12),
              Text(
                err.toString(),
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              const SizedBox(height: 24),
              ElevatedButton.icon(
                onPressed: () {
                  ref.refresh(upcomingMoviesProvider);
                },
                icon: const Icon(Icons.refresh),
                label: const Text('Retry'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

