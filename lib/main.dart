import 'package:flutter/material.dart';

import 'contact_row.dart';

void main() {
  runApp(const DeveloperCardApp());
}

class DeveloperCardApp extends StatefulWidget {
  const DeveloperCardApp({super.key});

  @override
  State<DeveloperCardApp> createState() => _DeveloperCardAppState();
}

class _DeveloperCardAppState extends State<DeveloperCardApp> {
  bool isDarkMode = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Developer Card',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.indigo),
        useMaterial3: true,
      ),
      darkTheme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.indigo,
          brightness: Brightness.dark,
        ),
        useMaterial3: true,
      ),
      themeMode: isDarkMode ? ThemeMode.dark : ThemeMode.light,
      home: DeveloperCardPage(
        isDarkMode: isDarkMode,
        onThemeChanged: () {
          setState(() {
            isDarkMode = !isDarkMode;
          });
        },
      ),
    );
  }
}

class DeveloperCardPage extends StatelessWidget {
  const DeveloperCardPage({
    super.key,
    required this.isDarkMode,
    required this.onThemeChanged,
  });

  final bool isDarkMode;
  final VoidCallback onThemeChanged;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Developer Card'),
        centerTitle: true,
        actions: [
          IconButton(
            tooltip: 'Change theme',
            onPressed: onThemeChanged,
            icon: Icon(
              isDarkMode ? Icons.light_mode : Icons.dark_mode,
            ),
          ),
        ],
      ),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24),
          child: Card(
            elevation: 4,
            child: Padding(
              padding: const EdgeInsets.all(24),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  CircleAvatar(
                    radius: 55,
                    backgroundColor:
                        Theme.of(context).colorScheme.primaryContainer,
                    child: Icon(
                      Icons.code,
                      size: 58,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    'Artem',
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'Flutter Developer',
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  const SizedBox(height: 24),
                  const Divider(),
                  const ContactRow(
                    icon: Icons.email_outlined,
                    label: 'artem@example.com',
                  ),
                  const ContactRow(
                    icon: Icons.phone_outlined,
                    label: '+48 000 000 000',
                  ),
                  const ContactRow(
                    icon: Icons.location_on_outlined,
                    label: 'Poland',
                  ),
                  const ContactRow(
                    icon: Icons.language,
                    label: 'github.com/artemkshl010',
                  ),
                  const SizedBox(height: 20),
                  FilledButton.icon(
                    onPressed: onThemeChanged,
                    icon: Icon(
                      isDarkMode ? Icons.light_mode : Icons.dark_mode,
                    ),
                    label: Text(
                      isDarkMode ? 'Light Theme' : 'Dark Theme',
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}