import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:movie_sphere/core/constants/constants.dart';
import 'package:movie_sphere/core/theme/app_theme.dart';
import 'package:movie_sphere/presentation/providers/auth_provider.dart';
import 'package:movie_sphere/presentation/providers/theme_provider.dart';
import 'package:movie_sphere/presentation/screens/home_screen.dart';
import 'package:movie_sphere/presentation/screens/login_screen.dart';
import 'package:movie_sphere/presentation/screens/register_screen.dart';
import 'package:movie_sphere/presentation/screens/search_screen.dart';
import 'package:movie_sphere/presentation/screens/movie_details_screen.dart';
import 'package:movie_sphere/presentation/screens/watchlist_screen.dart';
import 'package:movie_sphere/presentation/screens/profile_screen.dart';
import 'package:movie_sphere/presentation/screens/settings_screen.dart';
import 'package:movie_sphere/presentation/screens/popular_screen.dart';
import 'package:movie_sphere/presentation/screens/upcoming_screen.dart';

void main() {
  runApp(const ProviderScope(child: MovieSphereApp()));
}

class MovieSphereApp extends ConsumerWidget {
  const MovieSphereApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeMode = ref.watch(themeProvider);
    final authState = ref.watch(authProvider);

    return MaterialApp.router(
      title: AppStrings.appName,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: themeMode,
      routerConfig: _getRouterConfig(authState.isAuthenticated),
      debugShowCheckedModeBanner: false,
    );
  }

  GoRouter _getRouterConfig(bool isAuthenticated) {
    return GoRouter(
      initialLocation: isAuthenticated ? '/home' : '/login',
      routes: [
        // Auth Routes
        GoRoute(
          path: '/login',
          builder: (context, state) => const LoginScreenFull(),
        ),
        GoRoute(
          path: '/register',
          builder: (context, state) => const RegisterScreenFull(),
        ),

        // Main Routes
        GoRoute(
          path: '/home',
          builder: (context, state) => const MainScreen(),
        ),
        GoRoute(
          path: '/search',
          builder: (context, state) => const SearchScreenFull(),
        ),
        GoRoute(
          path: '/movie/:id',
          builder: (context, state) {
            final movieId = int.parse(state.pathParameters['id'] ?? '0');
            return MovieDetailsScreenFull(movieId: movieId);
          },
        ),
        GoRoute(
          path: '/popular',
          builder: (context, state) => const PopularMoviesScreen(),
        ),
        GoRoute(
          path: '/upcoming',
          builder: (context, state) => const UpcomingMoviesScreen(),
        ),
        GoRoute(
          path: '/watchlist',
          builder: (context, state) => const WatchlistScreenFull(),
        ),
        GoRoute(
          path: '/profile',
          builder: (context, state) => const ProfileScreenFull(),
        ),
        GoRoute(
          path: '/settings',
          builder: (context, state) => const SettingsScreenFull(),
        ),
      ],
    );
  }
}

// Main app screen with bottom navigation
class MainScreen extends ConsumerStatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  ConsumerState<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends ConsumerState<MainScreen> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectedIndex,
        children: const [
          HomeScreen(),
          SearchScreenFull(),
          WatchlistScreenFull(),
          ProfileScreenFull(),
        ],
      ),
      bottomNavigationBar: NavigationBar(
        selectedIndex: _selectedIndex,
        onDestinationSelected: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          NavigationDestination(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          NavigationDestination(
            icon: Icon(Icons.bookmark),
            label: 'Watchlist',
          ),
          NavigationDestination(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
