import 'package:flutter/material.dart';

class HeroSection extends StatelessWidget {
  const HeroSection({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final isDesktop = size.width > 768;

    return Container(
      width: double.infinity,
      height: isDesktop ? 700 : 600,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(
            'https://images.unsplash.com/photo-1589829545856-d10d557cf95f?q=80&w=2070',
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [
              const Color(0xFF1A237E).withOpacity(0.95),
              const Color(0xFF1A237E).withOpacity(0.7),
            ],
          ),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: isDesktop ? 100 : 20,
            vertical: isDesktop ? 80 : 40,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 8,
                ),
                decoration: BoxDecoration(
                  border: Border.all(color: const Color(0xFFB8860B), width: 2),
                  borderRadius: BorderRadius.circular(4),
                ),
                child: const Text(
                  'EXCELÊNCIA JURÍDICA',
                  style: TextStyle(
                    color: Color(0xFFB8860B),
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2,
                  ),
                ),
              ),
              SizedBox(height: isDesktop ? 30 : 20),
              Text(
                'Silva & Associados',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: isDesktop ? 72 : 42,
                  fontWeight: FontWeight.bold,
                  height: 1.1,
                ),
              ),
              SizedBox(height: isDesktop ? 20 : 12),
              Text(
                'Advocacia',
                style: TextStyle(
                  color: const Color(0xFFB8860B),
                  fontSize: isDesktop ? 52 : 32,
                  fontWeight: FontWeight.w400,
                  height: 1.1,
                  fontStyle: FontStyle.italic,
                ),
              ),
              SizedBox(height: isDesktop ? 30 : 20),
              Container(
                constraints: BoxConstraints(maxWidth: isDesktop ? 600 : double.infinity),
                child: Text(
                  'Mais de 25 anos defendendo seus direitos com dedicação, ética e resultados comprovados.',
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.95),
                    fontSize: isDesktop ? 20 : 16,
                    height: 1.6,
                  ),
                ),
              ),
              SizedBox(height: isDesktop ? 50 : 30),
              Wrap(
                spacing: 16,
                runSpacing: 16,
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFFB8860B),
                      foregroundColor: Colors.white,
                      padding: EdgeInsets.symmetric(
                        horizontal: isDesktop ? 40 : 28,
                        vertical: isDesktop ? 22 : 16,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4),
                      ),
                      elevation: 0,
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Icon(Icons.chat, size: 20),
                        const SizedBox(width: 10),
                        Text(
                          'Consulta Gratuita',
                          style: TextStyle(
                            fontSize: isDesktop ? 16 : 14,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 0.5,
                          ),
                        ),
                      ],
                    ),
                  ),
                  OutlinedButton(
                    onPressed: () {},
                    style: OutlinedButton.styleFrom(
                      foregroundColor: Colors.white,
                      side: const BorderSide(color: Colors.white, width: 2),
                      padding: EdgeInsets.symmetric(
                        horizontal: isDesktop ? 40 : 28,
                        vertical: isDesktop ? 22 : 16,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4),
                      ),
                    ),
                    child: Text(
                      'Nossas Áreas',
                      style: TextStyle(
                        fontSize: isDesktop ? 16 : 14,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 0.5,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
