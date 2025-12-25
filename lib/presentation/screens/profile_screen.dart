import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:movie_sphere/core/constants/constants.dart';
import 'package:movie_sphere/presentation/providers/auth_provider.dart';
import 'package:movie_sphere/presentation/providers/admin_mode_provider.dart';
import 'package:movie_sphere/presentation/providers/guest_mode_provider.dart';

class ProfileScreenFull extends ConsumerWidget {
  const ProfileScreenFull({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authState = ref.watch(authProvider);
    final isAdmin = ref.watch(adminModeProvider);
    final isGuest = ref.watch(guestModeProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text(isAdmin ? 'Admin' : AppStrings.profile),
        actions: [
          if ((authState.user != null && !isGuest) || isAdmin)
            IconButton(
              icon: const Icon(Icons.settings),
              onPressed: () => context.push('/settings'),
            ),
        ],
      ),
      body: (authState.user == null || isGuest) && !isAdmin
          ? Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Please sign up to view your profile'),
                  const SizedBox(height: 16),
                  ElevatedButton(
                    onPressed: () => context.push('/register'),
                    child: const Text('Sign Up'),
                  ),
                  const SizedBox(height: 16),
                  TextButton(
                    onPressed: () {
                      ref.read(guestModeProvider.notifier).state = false;
                      context.go('/login');
                    },
                    child: const Text('Log Out'),
                  ),
                ],
              ),
            )
          : SingleChildScrollView(
              child: Column(
                children: [
                  // Profile Header
                  Container(
                    padding: const EdgeInsets.all(24),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Theme.of(context).primaryColor,
                          Theme.of(context).primaryColor.withValues(alpha: 0.7),
                        ],
                      ),
                    ),
                    child: Column(
                      children: [
                        // Avatar
                        Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: Colors.white,
                              width: 4,
                            ),
                          ),
                          child: authState.user?.avatar != null
                              ? ClipOval(
                                  child: CachedNetworkImage(
                                    imageUrl: authState.user!.avatar!,
                                    width: 100,
                                    height: 100,
                                    fit: BoxFit.cover,
                                  ),
                                )
                              : CircleAvatar(
                                  radius: 50,
                                  backgroundColor: Colors.white,
                                  child: Icon(
                                    Icons.person,
                                    size: 50,
                                    color: Theme.of(context).primaryColor,
                                  ),
                                ),
                        ),
                        const SizedBox(height: 16),

                        // Name
                        Text(
                          isAdmin ? 'Admin' : (authState.user?.name ?? 'User'),
                          style:
                              Theme.of(context).textTheme.headlineSmall?.copyWith(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                        ),
                        const SizedBox(height: 4),

                        // Email
                        Text(
                          isAdmin ? 'Admin@gmail.com' : (authState.user?.email ?? 'email@example.com'),
                          style:
                              Theme.of(context).textTheme.bodySmall?.copyWith(
                                    color: Colors.white70,
                                  ),
                        ),
                      ],
                    ),
                  ),

                  // Stats Section
                  Padding(
                    padding: const EdgeInsets.all(24),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        _StatCard(
                          title: 'Watchlist',
                          value: authState.user?.watchlistCount.toString() ??
                              '0',
                          icon: Icons.bookmark,
                        ),
                        _StatCard(
                          title: 'Actors',
                          value: authState.user?.favoriteActorsCount
                                  .toString() ??
                              '0',
                          icon: Icons.people,
                        ),
                        _StatCard(
                          title: 'Directors',
                          value: authState.user?.favoriteDirectorsCount
                                  .toString() ??
                              '0',
                          icon: Icons.movie_filter,
                        ),
                      ],
                    ),
                  ),

                  // Profile Sections
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Column(
                      children: [
                        // Edit Profile Button
                        SizedBox(
                          width: double.infinity,
                          child: ElevatedButton.icon(
                            icon: const Icon(Icons.edit),
                            label: const Text(AppStrings.editProfile),
                            onPressed: () => _showEditProfileDialog(context, ref),
                          ),
                        ),
                        const SizedBox(height: 16),

                        // Watchlist
                        _ProfileTile(
                          icon: Icons.bookmark,
                          title: AppStrings.watchlist,
                          subtitle:
                              '${authState.user?.watchlistCount ?? 0} movies',
                          onTap: () => context.push('/watchlist'),
                        ),
                        const SizedBox(height: 8),

                        // Favorite Actors
                        _ProfileTile(
                          icon: Icons.people,
                          title: AppStrings.favoriteActors,
                          subtitle:
                              '${authState.user?.favoriteActorsCount ?? 0} actors',
                          onTap: () {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text(
                                  'Favorite actors - Coming soon',
                                ),
                              ),
                            );
                          },
                        ),
                        const SizedBox(height: 8),

                        // Favorite Directors
                        _ProfileTile(
                          icon: Icons.movie_filter,
                          title: AppStrings.favoriteDirectors,
                          subtitle:
                              '${authState.user?.favoriteDirectorsCount ?? 0} directors',
                          onTap: () {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text(
                                  'Favorite directors - Coming soon',
                                ),
                              ),
                            );
                          },
                        ),
                        const SizedBox(height: 8),

                        // Recently Viewed
                        _ProfileTile(
                          icon: Icons.history,
                          title: AppStrings.recentlyViewed,
                          onTap: () {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text(
                                  'Recently viewed - Coming soon',
                                ),
                              ),
                            );
                          },
                        ),
                        const SizedBox(height: 24),

                        // Logout Button
                        SizedBox(
                          width: double.infinity,
                          child: ElevatedButton.icon(
                            icon: const Icon(Icons.logout),
                            label: const Text(AppStrings.logout),
                            onPressed: () {
                              ref.read(authProvider.notifier).logout();
                              ref.read(adminModeProvider.notifier).state = false;
                              ref.read(guestModeProvider.notifier).state = false;
                              if (context.mounted) {
                                context.go('/login');
                              }
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.red,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 32),
                ],
              ),
            ),
    );
  }

  void _showEditProfileDialog(BuildContext context, WidgetRef ref) {
    final user = ref.read(authProvider).user;
    final nameController = TextEditingController(text: user?.name ?? '');

    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Edit Profile'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextField(
              controller: nameController,
              decoration: const InputDecoration(
                labelText: 'Name',
                prefixIcon: Icon(Icons.person_outline),
                border: OutlineInputBorder(),
              ),
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Cancel'),
          ),
          FilledButton(
            onPressed: () async {
              await ref.read(authProvider.notifier).updateProfile(name: nameController.text);
              
              if (context.mounted) {
                Navigator.pop(context);
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Profile updated successfully')),
                );
              }
            },
            child: const Text('Save'),
          ),
        ],
      ),
    );
  }
}

class _StatCard extends StatelessWidget {
  final String title;
  final String value;
  final IconData icon;

  const _StatCard({
    required this.title,
    required this.value,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Theme.of(context)
                .primaryColor
                .withValues(alpha: 0.1),
          ),
          child: Icon(icon, color: Theme.of(context).primaryColor),
        ),
        const SizedBox(height: 8),
        Text(
          value,
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        const SizedBox(height: 4),
        Text(
          title,
          style: Theme.of(context).textTheme.bodySmall,
        ),
      ],
    );
  }
}

class _ProfileTile extends StatelessWidget {
  final IconData icon;
  final String title;
  final String? subtitle;
  final VoidCallback onTap;

  const _ProfileTile({
    required this.icon,
    required this.title,
    this.subtitle,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon),
      title: Text(title),
      subtitle: subtitle != null ? Text(subtitle!) : null,
      trailing: const Icon(Icons.arrow_forward_ios, size: 16),
      onTap: onTap,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
    );
  }
}
