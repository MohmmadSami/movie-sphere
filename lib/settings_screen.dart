import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:movie_sphere/presentation/providers/theme_provider.dart';

class SettingsScreenFull extends ConsumerWidget {
  const SettingsScreenFull({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeMode = ref.watch(themeProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      body: ListView(
        children: [
          _buildSectionHeader(context, 'Appearance'),
          SwitchListTile(
            title: const Text('Dark Mode'),
            value: themeMode == ThemeMode.dark,
            onChanged: (value) {
              ref.read(themeProvider.notifier).setThemeMode(
                    value ? ThemeMode.dark : ThemeMode.light,
                  );
            },
          ),
          const Divider(),
          _buildSectionHeader(context, 'About & Legal'),
          ListTile(
            leading: const Icon(Icons.privacy_tip_outlined),
            title: const Text('Privacy Policy'),
            trailing: const Icon(Icons.chevron_right),
            onTap: () => context.push(
              '/content?title=Privacy Policy&body=${Uri.encodeComponent(_privacyPolicyText)}',
            ),
          ),
          ListTile(
            leading: const Icon(Icons.description_outlined),
            title: const Text('Terms of Service'),
            trailing: const Icon(Icons.chevron_right),
            onTap: () => context.push(
              '/content?title=Terms of Service&body=${Uri.encodeComponent(_termsText)}',
            ),
          ),
          ListTile(
            leading: const Icon(Icons.info_outline),
            title: const Text('Other'),
            trailing: const Icon(Icons.chevron_right),
            onTap: () => context.push(
              '/content?title=Other&body=${Uri.encodeComponent("Other legal information goes here.")}',
            ),
          ),
          const Divider(),
          _buildSectionHeader(context, 'Support'),
          ListTile(
            leading: const Icon(Icons.help_outline),
            title: const Text('Help & Feedback'),
            onTap: () => _showDialog(context, 'Help & Feedback', 'Contact us at support@moviesphere.com'),
          ),
          ListTile(
            leading: const Icon(Icons.star_outline),
            title: const Text('Rate App'),
            onTap: () => _showDialog(context, 'Rate App', 'Thank you for rating us 5 stars!'),
          ),
          ListTile(
            leading: const Icon(Icons.bug_report_outlined),
            title: const Text('Report Bug'),
            onTap: () => _showDialog(context, 'Report Bug', 'Please describe the bug you found.'),
          ),
        ],
      ),
    );
  }

  Widget _buildSectionHeader(BuildContext context, String title) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 16, 16, 8),
      child: Text(
        title,
        style: Theme.of(context).textTheme.titleSmall?.copyWith(
              color: Theme.of(context).colorScheme.primary,
              fontWeight: FontWeight.bold,
            ),
      ),
    );
  }

  void _showDialog(BuildContext context, String title, String content) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(title),
        content: Text(content),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('OK'),
          ),
        ],
      ),
    );
  }
}

class StaticContentScreen extends StatelessWidget {
  final String title;
  final String body;

  const StaticContentScreen({
    super.key,
    required this.title,
    required this.body,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Text(
          body,
          style: Theme.of(context).textTheme.bodyLarge,
        ),
      ),
    );
  }
}

const String _privacyPolicyText = """
Privacy Policy

1. Introduction
Welcome to MovieSphere. We respect your privacy...

2. Data Collection
We collect minimal data to provide...
""";

const String _termsText = """
Terms of Service

1. Acceptance
By using MovieSphere, you agree to...

2. Usage
You may not use this app for...
""";