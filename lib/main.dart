import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'pages/landing_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Escritório de Advocacia - Silva & Associados',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: const Color(0xFF1A237E), // Azul escuro profissional
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF1A237E),
          brightness: Brightness.light,
          secondary: const Color(0xFFB8860B), // Dourado para destaque
        ),
        textTheme: GoogleFonts.playfairDisplayTextTheme().copyWith(
          bodyLarge: GoogleFonts.openSans(),
          bodyMedium: GoogleFonts.openSans(),
          bodySmall: GoogleFonts.openSans(),
        ),
        useMaterial3: true,
      ),
      home: const LandingPage(),
    );
  }
}
