import 'package:flutter/material.dart';

class TestimonialsSection extends StatelessWidget {
  const TestimonialsSection({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final isDesktop = size.width > 768;

    final testimonials = [
      {
        'name': 'Roberto Almeida',
        'role': 'Empresário',
        'text': 'Excelente atendimento e profissionalismo. O escritório resolveu um caso complexo empresarial com total competência. Recomendo!',
        'rating': 5,
      },
      {
        'name': 'Juliana Costa',
        'role': 'Professora',
        'text': 'Fui muito bem atendida no meu processo de divórcio. A Dra. Maria foi extremamente atenciosa e conseguiu um ótimo acordo.',
        'rating': 5,
      },
      {
        'name': 'Fernando Lima',
        'role': 'Diretor Comercial',
        'text': 'Profissionais éticos e competentes. Conseguiram reverter uma situação trabalhista muito difícil. Sou muito grato!',
        'rating': 5,
      },
    ];

    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            const Color(0xFF1A237E),
            const Color(0xFF1A237E).withOpacity(0.9),
          ],
        ),
      ),
      padding: EdgeInsets.symmetric(
        horizontal: isDesktop ? 100 : 20,
        vertical: isDesktop ? 100 : 60,
      ),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            decoration: BoxDecoration(
              border: Border.all(color: const Color(0xFFB8860B), width: 2),
              borderRadius: BorderRadius.circular(4),
            ),
            child: const Text(
              'DEPOIMENTOS',
              style: TextStyle(
                color: Color(0xFFB8860B),
                fontSize: 12,
                fontWeight: FontWeight.bold,
                letterSpacing: 1.5,
              ),
            ),
          ),
          const SizedBox(height: 20),
          Text(
            'O Que Nossos Clientes Dizem',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: isDesktop ? 42 : 32,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 16),
          Text(
            'A satisfação de nossos clientes é nossa maior conquista',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: isDesktop ? 18 : 16,
              color: Colors.white.withOpacity(0.9),
            ),
          ),
          SizedBox(height: isDesktop ? 60 : 40),
          isDesktop
              ? Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: testimonials.map((testimonial) {
                    return Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12),
                        child: _buildTestimonialCard(
                          name: testimonial['name'] as String,
                          role: testimonial['role'] as String,
                          text: testimonial['text'] as String,
                          rating: testimonial['rating'] as int,
                          isDesktop: isDesktop,
                        ),
                      ),
                    );
                  }).toList(),
                )
              : Column(
                  children: testimonials.map((testimonial) {
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 24),
                      child: _buildTestimonialCard(
                        name: testimonial['name'] as String,
                        role: testimonial['role'] as String,
                        text: testimonial['text'] as String,
                        rating: testimonial['rating'] as int,
                        isDesktop: isDesktop,
                      ),
                    );
                  }).toList(),
                ),
        ],
      ),
    );
  }

  Widget _buildTestimonialCard({
    required String name,
    required String role,
    required String text,
    required int rating,
    required bool isDesktop,
  }) {
    return Card(
      elevation: 8,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      child: Padding(
        padding: EdgeInsets.all(isDesktop ? 32 : 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: List.generate(
                rating,
                (index) => const Icon(
                  Icons.star,
                  color: Color(0xFFB8860B),
                  size: 20,
                ),
              ),
            ),
            const SizedBox(height: 20),
            Text(
              '"$text"',
              style: TextStyle(
                fontSize: isDesktop ? 16 : 15,
                color: Colors.grey[700],
                height: 1.7,
                fontStyle: FontStyle.italic,
              ),
            ),
            const SizedBox(height: 24),
            Divider(color: Colors.grey[300]),
            const SizedBox(height: 16),
            Row(
              children: [
                CircleAvatar(
                  radius: 24,
                  backgroundColor: const Color(0xFF1A237E).withOpacity(0.1),
                  child: Text(
                    name[0],
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF1A237E),
                    ),
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        name,
                        style: TextStyle(
                          fontSize: isDesktop ? 16 : 15,
                          fontWeight: FontWeight.bold,
                          color: const Color(0xFF1A237E),
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        role,
                        style: TextStyle(
                          fontSize: isDesktop ? 14 : 13,
                          color: Colors.grey[600],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
