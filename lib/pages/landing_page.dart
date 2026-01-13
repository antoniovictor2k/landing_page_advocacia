import 'package:flutter/material.dart';
import '../widgets/hero_section.dart';
import '../widgets/about_section.dart';
import '../widgets/practice_areas_section.dart';
import '../widgets/team_section.dart';
import '../widgets/testimonials_section.dart';
import '../widgets/contact_section.dart';
import '../widgets/footer_section.dart';
import '../widgets/floating_whatsapp_button.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: const [
            HeroSection(),
            AboutSection(),
            PracticeAreasSection(),
            TeamSection(),
            TestimonialsSection(),
            ContactSection(),
            FooterSection(),
          ],
        ),
      ),
      floatingActionButton: const FloatingWhatsAppButton(),
    );
  }
}
