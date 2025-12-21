import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:movie_sphere/core/constants/constants.dart';
import 'package:movie_sphere/presentation/providers/auth_provider.dart';
import 'package:movie_sphere/presentation/providers/movies_provider.dart';
import 'package:movie_sphere/presentation/widgets/loading_widget.dart';
import 'package:movie_sphere/presentation/widgets/movie_card.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  ConsumerState<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  late PageController _pageController;
  late ScrollController _scrollController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
    _scrollController = ScrollController();

    // Auto-scroll carousel every 5 seconds
    _startAutoScroll();

    // Listen for infinite scroll
    _scrollController.addListener(_onScroll);
  }

  void _startAutoScroll() {
    Future.delayed(const Duration(seconds: 5), () {
      if (mounted && _pageController.hasClients) {
        _pageController.nextPage(
          duration: const Duration(milliseconds: 800),
          curve: Curves.easeInOut,
        );
        _startAutoScroll();
      }
    });
  }

  void _onScroll() {
    if (_scrollController.position.pixels >=
        _scrollController.position.maxScrollExtent - 500) {
      // Load more movies when user is near bottom
    }
  }

  @override
  void dispose() {
    _pageController.dispose();
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final trendingMovies = ref.watch(trendingMoviesProvider);
    final popularMovies = ref.watch(popularMoviesProvider);
    final upcomingMovies = ref.watch(upcomingMoviesProvider);
    final auth = ref.watch(authProvider);

    return RefreshIndicator(
      onRefresh: () async {
        ref.refresh(trendingMoviesProvider);
        ref.refresh(popularMoviesProvider);
        ref.refresh(upcomingMoviesProvider);
      },
      child: CustomScrollView(
        controller: _scrollController,
        slivers: [
          // App Bar
          SliverAppBar(
            floating: true,
            pinned: true,
            title: Text(
              AppStrings.appName,
              style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
            ),
            centerTitle: true,
            actions: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Center(
                  child: Text(
                    auth.user?.name ?? 'Guest',
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                ),
              ),
            ],
          ),

          // Trending Carousel with Auto-Scroll
          SliverToBoxAdapter(
            child: trendingMovies.when(
              data: (movies) => movies.isNotEmpty
                  ? _buildTrendingCarousel(movies)
                  : SizedBox(
                      height: 200,
                      child: Center(
                        child: Text(
                          'No trending movies available',
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                      ),
                    ),
              loading: () => SizedBox(
                height: 400,
                child: Center(
                  child: LoadingWidget(message: AppStrings.loading),
                ),
              ),
              error: (err, st) => SizedBox(
                height: 200,
                child: ErrorWidget(
                  message: 'Failed to load trending movies',
                  onRetry: () => ref.refresh(trendingMoviesProvider),
                ),
              ),
            ),
          ),

          const SliverToBoxAdapter(child: SizedBox(height: 32)),

          // Popular Section
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    AppStrings.popular,
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                  TextButton(
                    onPressed: () => context.push('/popular'),
                    child: const Text('See all'),
                  ),
                ],
              ),
            ),
          ),

          SliverToBoxAdapter(
            child: popularMovies.when(
              data: (movies) => movies.isNotEmpty
                  ? SizedBox(
                      height: 280,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        itemCount: movies.length,
                        itemBuilder: (context, index) {
                          final movie = movies[index];
                          return Padding(
                            padding: const EdgeInsets.only(right: 12),
                            child: MovieCard(
                              imageUrl: movie.posterUrl ?? movie.posterPath,
                              title: movie.title,
                              rating: movie.voteAverage,
                              onTap: () => context.push('/movie/${movie.id}'),
                            ),
                          );
                        },
                      ),
                    )
                  : SizedBox(
                      height: 200,
                      child: Center(
                        child: Text(
                          'No popular movies available',
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                      ),
                    ),
              loading: () => const SizedBox(
                height: 280,
                child: LoadingWidget(),
              ),
              error: (err, st) => SizedBox(
                height: 200,
                child: ErrorWidget(
                  message: 'Failed to load popular movies',
                  onRetry: () => ref.refresh(popularMoviesProvider),
                ),
              ),
            ),
          ),

          const SliverToBoxAdapter(child: SizedBox(height: 32)),

          // Upcoming Section
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    AppStrings.upcoming,
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                  TextButton(
                    onPressed: () => context.push('/upcoming'),
                    child: const Text('See all'),
                  ),
                ],
              ),
            ),
          ),

          SliverToBoxAdapter(
            child: upcomingMovies.when(
              data: (movies) => movies.isNotEmpty
                  ? SizedBox(
                      height: 280,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        itemCount: movies.length,
                        itemBuilder: (context, index) {
                          final movie = movies[index];
                          return Padding(
                            padding: const EdgeInsets.only(right: 12),
                            child: MovieCard(
                              imageUrl: movie.posterUrl ?? movie.posterPath,
                              title: movie.title,
                              rating: movie.voteAverage,
                              onTap: () => context.push('/movie/${movie.id}'),
                            ),
                          );
                        },
                      ),
                    )
                  : SizedBox(
                      height: 200,
                      child: Center(
                        child: Text(
                          'No upcoming movies available',
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                      ),
                    ),
              loading: () => const SizedBox(
                height: 280,
                child: LoadingWidget(),
              ),
              error: (err, st) => SizedBox(
                height: 200,
                child: ErrorWidget(
                  message: 'Failed to load upcoming movies',
                  onRetry: () => ref.refresh(upcomingMoviesProvider),
                ),
              ),
            ),
          ),

          const SliverToBoxAdapter(child: SizedBox(height: 32)),
        ],
      ),
    );
  }

  Widget _buildTrendingCarousel(List movies) {
    return Column(
      children: [
        SizedBox(
          height: 350,
          child: PageView.builder(
            controller: _pageController,
            onPageChanged: (index) {
              // Reset auto-scroll timer when user manually scrolls
              if (mounted) {
                setState(() {});
              }
            },
            itemCount: movies.length,
            itemBuilder: (context, index) {
              final movie = movies[index % movies.length];
              return GestureDetector(
                onTap: () => context.push('/movie/${movie.id}'),
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 12),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withValues(alpha: 0.3),
                        blurRadius: 12,
                        offset: const Offset(0, 8),
                      ),
                    ],
                  ),
                  child: Stack(
                    fit: StackFit.expand,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(16),
                        child: Image.network(
                          movie.backdropUrl ?? '',
                          fit: BoxFit.cover,
                          errorBuilder: (context, error, stackTrace) =>
                              Container(
                            color: Colors.grey[800],
                            child: const Icon(
                              Icons.image_not_supported,
                              color: Colors.white54,
                            ),
                          ),
                        ),
                      ),
                      // Gradient overlay
                      Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Colors.transparent,
                              Colors.black.withValues(alpha: 0.8),
                            ],
                          ),
                        ),
                      ),
                      // Content
                      Positioned(
                        bottom: 0,
                        left: 0,
                        right: 0,
                        child: Padding(
                          padding: const EdgeInsets.all(20),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                movie.title,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: Theme.of(context)
                                    .textTheme
                                    .headlineSmall
                                    ?.copyWith(color: Colors.white),
                              ),
                              const SizedBox(height: 8),
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
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
        const SizedBox(height: 16),
        Center(
          child: SmoothPageIndicator(
            controller: _pageController,
            count: movies.length,
            effect: const ExpandingDotsEffect(
              dotHeight: 8,
              dotWidth: 8,
              spacing: 8,
            ),
          ),
        ),
      ],
    );
  }
}

class ErrorWidget extends StatelessWidget {
  final String message;
  final VoidCallback? onRetry;

  const ErrorWidget({
    Key? key,
    required this.message,
    this.onRetry,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.error_outline,
            color: Theme.of(context).colorScheme.error,
            size: 64,
          ),
          const SizedBox(height: 16),
          Text(
            message,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          if (onRetry != null) ...[
            const SizedBox(height: 24),
            ElevatedButton(
              onPressed: onRetry,
              child: const Text('Retry'),
            ),
          ],
        ],
      ),
    );
  }
}

