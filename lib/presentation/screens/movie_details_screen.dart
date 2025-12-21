import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movie_sphere/core/constants/constants.dart';
import 'package:movie_sphere/core/utils/date_time_utils.dart';
import 'package:movie_sphere/presentation/providers/movies_provider.dart';
import 'package:movie_sphere/presentation/widgets/loading_widget.dart';
import 'package:movie_sphere/presentation/widgets/movie_card.dart';

class MovieDetailsScreenFull extends ConsumerStatefulWidget {
  final int movieId;

  const MovieDetailsScreenFull({Key? key, required this.movieId})
      : super(key: key);

  @override
  ConsumerState<MovieDetailsScreenFull> createState() =>
      _MovieDetailsScreenFullState();
}

class _MovieDetailsScreenFullState
    extends ConsumerState<MovieDetailsScreenFull> {
  @override
  void initState() {
    super.initState();
    // Mark as recently viewed
    ref.read(addToHistoryProvider(widget.movieId));
  }

  @override
  Widget build(BuildContext context) {
    final movieDetails = ref.watch(movieDetailsProvider(widget.movieId));
    final isInWatchlist =
        ref.watch(isInWatchlistProvider(widget.movieId));

    return Scaffold(
      appBar: AppBar(
        title: const Text(AppStrings.movieDetails),
      ),
      body: movieDetails.when(
        data: (details) {
          final movie = details.movie;
          return CustomScrollView(
            slivers: [
              // Backdrop & Poster
              SliverToBoxAdapter(
                child: Stack(
                  children: [
                    CachedNetworkImage(
                      imageUrl: movie.backdropUrl ?? '',
                      height: 250,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                    Container(
                      height: 250,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Colors.transparent,
                            Theme.of(context)
                                .scaffoldBackgroundColor
                                .withValues(alpha: 0.9),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              // Poster, Title & Rating
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: CachedNetworkImage(
                          imageUrl: movie.posterUrl ?? '',
                          width: 100,
                          height: 150,
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(width: 16),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              movie.title,
                              style: Theme.of(context)
                                  .textTheme
                                  .headlineSmall,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                            const SizedBox(height: 8),
                            Text(
                              formatDate(
                                DateTime.parse(movie.releaseDate),
                              ),
                              style:
                                  Theme.of(context).textTheme.bodySmall,
                            ),
                            const SizedBox(height: 12),
                            Row(
                              children: [
                                const Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                  size: 20,
                                ),
                                const SizedBox(width: 8),
                                Text(
                                  movie.voteAverage.toStringAsFixed(1),
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleMedium,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              // Watchlist & Share Buttons
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    children: [
                      Expanded(
                        child: isInWatchlist.when(
                          data: (inWatchlist) => ElevatedButton.icon(
                            onPressed: () {
                              if (inWatchlist) {
                                ref
                                    .read(watchlistProvider.notifier)
                                    .removeFromWatchlist(widget.movieId);
                              } else {
                                ref
                                    .read(watchlistProvider.notifier)
                                    .addToWatchlist(widget.movieId);
                              }
                            },
                            icon: Icon(
                              inWatchlist
                                  ? Icons.bookmark
                                  : Icons.bookmark_border,
                            ),
                            label: Text(
                              inWatchlist
                                  ? AppStrings.removeFromWatchlist
                                  : AppStrings.addToWatchlist,
                            ),
                          ),
                          loading: () => ElevatedButton(
                            onPressed: null,
                            child:
                                const CircularProgressIndicator(),
                          ),
                          error: (err, st) => ElevatedButton.icon(
                            onPressed: null,
                            icon: const Icon(Icons.error),
                            label: const Text('Error'),
                          ),
                        ),
                      ),
                      const SizedBox(width: 12),
                      OutlinedButton.icon(
                        onPressed: () {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text('Share functionality'),
                            ),
                          );
                        },
                        icon: const Icon(Icons.share),
                        label: const Text('Share'),
                      ),
                    ],
                  ),
                ),
              ),

              const SliverToBoxAdapter(
                  child: SizedBox(height: 24)),

              // Overview
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Overview',
                        style: Theme.of(context)
                            .textTheme
                            .headlineSmall,
                      ),
                      const SizedBox(height: 8),
                      Text(
                        movie.overview,
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                    ],
                  ),
                ),
              ),

              const SliverToBoxAdapter(
                  child: SizedBox(height: 24)),

              // Movie Info
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Wrap(
                    spacing: 24,
                    runSpacing: 16,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Runtime',
                            style: Theme.of(context)
                                .textTheme
                                .bodySmall,
                          ),
                          const SizedBox(height: 4),
                          Text(
                            movie.runtime == null ? 'N/A' : '${movie.runtime} min',
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium,
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Budget',
                            style: Theme.of(context)
                                .textTheme
                                .bodySmall,
                          ),
                          const SizedBox(height: 4),
                          Text(
                            movie.budget == null || movie.budget == 0
                                ? 'N/A'
                                : '\$${(movie.budget! / 1000000).toStringAsFixed(1)}M',
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),

              const SliverToBoxAdapter(
                  child: SizedBox(height: 24)),

              // Cast
              if (details.cast != null && details.cast!.isNotEmpty)
                SliverToBoxAdapter(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          AppStrings.cast,
                          style:
                              Theme.of(context).textTheme.headlineSmall,
                        ),
                        const SizedBox(height: 12),
                      ],
                    ),
                  ),
                ),
              if (details.cast != null && details.cast!.isNotEmpty)
                SliverToBoxAdapter(
                  child: SizedBox(
                    height: 180,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      itemCount: details.cast!.length,
                      itemBuilder: (context, index) {
                        final actor = details.cast![index];
                        return Padding(
                          padding: const EdgeInsets.only(right: 12),
                          child: Column(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(8),
                                child: CachedNetworkImage(
                                  imageUrl: actor.profileUrl,
                                  width: 80,
                                  height: 120,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              const SizedBox(height: 8),
                              SizedBox(
                                width: 80,
                                child: Text(
                                  actor.name,
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.center,
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodySmall,
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ),

              const SliverToBoxAdapter(
                  child: SizedBox(height: 24)),

              // Trailer
              if (details.trailer != null)
                SliverToBoxAdapter(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Trailer',
                          style:
                              Theme.of(context).textTheme.headlineSmall,
                        ),
                        const SizedBox(height: 12),
                        OutlinedButton.icon(
                          onPressed: () {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text(
                                  'Opening trailer in YouTube',
                                ),
                              ),
                            );
                          },
                          icon: const Icon(Icons.play_circle),
                          label: const Text('Watch Trailer'),
                        ),
                      ],
                    ),
                  ),
                ),

              const SliverToBoxAdapter(
                  child: SizedBox(height: 24)),

              // Recommendations
              if (details.recommendations != null && details.recommendations!.isNotEmpty)
                SliverToBoxAdapter(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Text(
                      AppStrings.recommendations,
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                  ),
                ),
              if (details.recommendations != null && details.recommendations!.isNotEmpty)
                SliverToBoxAdapter(
                  child: SizedBox(
                    height: 280,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      itemCount: details.recommendations!.length,
                      itemBuilder: (context, index) {
                        final movie = details.recommendations![index];
                        return Padding(
                          padding: const EdgeInsets.only(right: 12),
                          child: MovieCard(
                            imageUrl: movie.posterUrl ??
                                movie.posterPath,
                            title: movie.title,
                            rating: movie.voteAverage,
                            onTap: () {
                              Navigator.of(context).pop();
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (_) =>
                                      MovieDetailsScreenFull(
                                        movieId: movie.id,
                                      ),
                                ),
                              );
                            },
                          ),
                        );
                      },
                    ),
                  ),
                ),

              const SliverToBoxAdapter(
                  child: SizedBox(height: 32)),
            ],
          );
        },
        loading: () => const LoadingWidget(),
        error: (err, st) => Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                Icons.error_outline,
                size: 64,
                color: Theme.of(context).colorScheme.error,
              ),
              const SizedBox(height: 16),
              Text(
                'Error Loading Movie Details',
                style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                  color: Theme.of(context).colorScheme.error,
                ),
              ),
              const SizedBox(height: 12),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Text(
                  err.toString(),
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ),
              const SizedBox(height: 24),
              ElevatedButton.icon(
                onPressed: () {
                  ref.refresh(movieDetailsProvider(widget.movieId));
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

