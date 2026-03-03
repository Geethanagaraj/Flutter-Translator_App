import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Smart Translator App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: true, // modern look
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  // Screens for 4 sections
  final List<Widget> _screens = [
    const TranslateScreen(),
    const RewriteScreen(),
    const InsightsScreen(),
    const ToneScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.blueAccent,
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.translate),
            label: 'Translate',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.edit),
            label: 'Rewrite',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu_book),
            label: 'Insights',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.wb_sunny),
            label: 'Tone',
          ),
        ],
      ),
    );
  }
}

// Placeholder Screens
class TranslateScreen extends StatelessWidget {
  const TranslateScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return const Center(child: Text("Translate Section"));
  }
}

class RewriteScreen extends StatelessWidget {
  const RewriteScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return const Center(child: Text("Rewrite Section"));
  }
}

class InsightsScreen extends StatelessWidget {
  const InsightsScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return const Center(child: Text("Insights Section"));
  }
}

class ToneScreen extends StatelessWidget {
  const ToneScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return const Center(child: Text("Tone Adjust Section"));
  }
}