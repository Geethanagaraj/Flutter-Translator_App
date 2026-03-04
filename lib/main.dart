import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // Define your custom colors
  static const Color darkGray = Color(0xFF4A4A4A);
  static const Color lightGray = Color(0xFFCBCBCB);
  static const Color softYellow = Color(0xFFFFFFE3);
  static const Color blueGray = Color(0xFF6D8196);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Translator App',
      theme: ThemeData(
        scaffoldBackgroundColor: softYellow,
        primaryColor: darkGray,
        textTheme: GoogleFonts.spaceGroteskTextTheme(
          Theme.of(context).textTheme.apply(
                bodyColor: darkGray,
                displayColor: darkGray,
              ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: blueGray,
            foregroundColor: softYellow,
            padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
            textStyle: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
        ),
      ),
      home: LandingPage(),
    );
  }
}

class LandingPage extends StatelessWidget {
  // Reuse colors
  static const Color darkGray = Color(0xFF4A4A4A);
  static const Color lightGray = Color(0xFFCBCBCB);
  static const Color softYellow = Color(0xFFFFFFE3);
  static const Color blueGray = Color(0xFF6D8196);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [softYellow, blueGray.withOpacity(0.2)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // App Logo & Name
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.translate, size: 40, color: darkGray),
                  SizedBox(width: 10),
                  Text(
                    "Translatr",
                    style: TextStyle(
                      color: darkGray,
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              // Tagline
              Text(
                "Your personal language assistant",
                style: TextStyle(
                  color: lightGray,
                  fontSize: 16,
                ),
              ),
              SizedBox(height: 40),
              // Feature Cards
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: GridView.count(
                  shrinkWrap: true,
                  crossAxisCount: 2,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20,
                  children: [
                    featureCard(Icons.language, "Translate"),
                    featureCard(Icons.edit, "Rewrite"),
                    featureCard(Icons.analytics, "Word Insights"),
                    featureCard(Icons.record_voice_over, "Tone Adjust"),
                  ],
                ),
              ),
              SizedBox(height: 40),
              // Start Now Button
              ElevatedButton(
                onPressed: () {
                  print("Start Now tapped");
                },
                child: Text("Start Now"),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Feature Card Widget
  Widget featureCard(IconData icon, String title) {
    return Container(
      decoration: BoxDecoration(
        color: blueGray.withOpacity(0.2),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, size: 40, color: darkGray),
          SizedBox(height: 10),
          Text(
            title,
            style: TextStyle(color: darkGray, fontSize: 16),
          ),
        ],
      ),
    );
  }
}