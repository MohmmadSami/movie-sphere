import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movie_sphere/core/constants/constants.dart';
import 'package:movie_sphere/presentation/providers/theme_provider.dart';

class SettingsScreenFull extends ConsumerWidget {
  const SettingsScreenFull({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeMode = ref.watch(themeProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text(AppStrings.settings),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          // Theme Section
          Text(
            'Appearance',
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          const SizedBox(height: 16),

          Card(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        AppStrings.darkMode,
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                      Switch(
                        value: themeMode == ThemeMode.dark,
                        onChanged: (value) {
                          ref
                              .read(themeProvider.notifier)
                              .setThemeMode(
                                value ? ThemeMode.dark : ThemeMode.light,
                              );
                        },
                      ),
                    ],
                  ),
                  const Divider(),
                  const SizedBox(height: 8),
                  Text(
                    'Select your preferred theme',
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                  const SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      _ThemeOptionButton(
                        label: 'Light',
                        icon: Icons.light_mode,
                        isSelected: themeMode == ThemeMode.light,
                        onTap: () {
                          ref
                              .read(themeProvider.notifier)
                              .setThemeMode(ThemeMode.light);
                        },
                      ),
                      _ThemeOptionButton(
                        label: 'Dark',
                        icon: Icons.dark_mode,
                        isSelected: themeMode == ThemeMode.dark,
                        onTap: () {
                          ref
                              .read(themeProvider.notifier)
                              .setThemeMode(ThemeMode.dark);
                        },
                      ),
                      _ThemeOptionButton(
                        label: 'System',
                        icon: Icons.brightness_auto,
                        isSelected: themeMode == ThemeMode.system,
                        onTap: () {
                          ref
                              .read(themeProvider.notifier)
                              .setThemeMode(ThemeMode.system);
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),

          const SizedBox(height: 32),

          // About Section
          Text(
            'About',
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          const SizedBox(height: 16),

          _SettingsTile(
            icon: Icons.info,
            title: 'About MovieSphere',
            subtitle: 'App version and information',
            onTap: () {
              showAboutDialog(
                context: context,
                applicationName: AppStrings.appName,
                applicationVersion: '1.0.0',
                applicationLegalese:
                    'MovieSphere is a movie discovery app powered by TMDB API.',
              );
            },
          ),
          const SizedBox(height: 8),

          _SettingsTile(
            icon: Icons.privacy_tip,
            title: AppStrings.privacyPolicy,
            onTap: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('Privacy Policy - Coming soon'),
                ),
              );
            },
          ),
          const SizedBox(height: 8),

          _SettingsTile(
            icon: Icons.description,
            title: AppStrings.termsOfService,
            onTap: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('Terms of Service - Coming soon'),
                ),
              );
            },
          ),

          const SizedBox(height: 32),

          // Other Section
          Text(
            'Other',
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          const SizedBox(height: 16),

          _SettingsTile(
            icon: Icons.help,
            title: 'Help & Feedback',
            onTap: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('Help & Feedback - Coming soon'),
                ),
              );
            },
          ),
          const SizedBox(height: 8),

          _SettingsTile(
            icon: Icons.star,
            title: 'Rate App',
            onTap: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('Opening app store - Coming soon'),
                ),
              );
            },
          ),
          const SizedBox(height: 8),

          _SettingsTile(
            icon: Icons.bug_report,
            title: 'Report Bug',
            onTap: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('Bug report - Coming soon'),
                ),
              );
            },
          ),

          const SizedBox(height: 32),
        ],
      ),
    );
  }
}

class _SettingsTile extends StatelessWidget {
  final IconData icon;
  final String title;
  final String? subtitle;
  final VoidCallback onTap;

  const _SettingsTile({
    required this.icon,
    required this.title,
    this.subtitle,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Icon(icon),
        title: Text(title),
        subtitle: subtitle != null ? Text(subtitle!) : null,
        trailing: const Icon(Icons.arrow_forward_ios, size: 16),
        onTap: onTap,
      ),
    );
  }
}

class _ThemeOptionButton extends StatelessWidget {
  final String label;
  final IconData icon;
  final bool isSelected;
  final VoidCallback onTap;

  const _ThemeOptionButton({
    required this.label,
    required this.icon,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: isSelected
                  ? Theme.of(context).primaryColor
                  : Theme.of(context)
                      .primaryColor
                      .withOpacity(0.1),
              border: isSelected
                  ? Border.all(
                      color: Theme.of(context).primaryColor,
                      width: 2,
                    )
                  : null,
            ),
            child: Icon(
              icon,
              color: isSelected
                  ? Colors.white
                  : Theme.of(context).primaryColor,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            label,
            style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
                ),
          ),
        ],
      ),
    );
  }
}

