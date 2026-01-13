import 'package:flutter/material.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final isDesktop = size.width > 768;

    return Container(
      width: double.infinity,
      color: Colors.white,
      padding: EdgeInsets.symmetric(
        horizontal: isDesktop ? 100 : 20,
        vertical: isDesktop ? 100 : 60,
      ),
      child: isDesktop
          ? Row(
              children: [
                Expanded(
                  child: _buildContent(context, isDesktop),
                ),
                const SizedBox(width: 80),
                Expanded(
                  child: _buildStats(isDesktop),
                ),
              ],
            )
          : Column(
              children: [
                _buildContent(context, isDesktop),
                const SizedBox(height: 40),
                _buildStats(isDesktop),
              ],
            ),
    );
  }

  Widget _buildContent(BuildContext context, bool isDesktop) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
          decoration: BoxDecoration(
            color: const Color(0xFFB8860B).withOpacity(0.1),
            borderRadius: BorderRadius.circular(4),
          ),
          child: const Text(
            'SOBRE NÓS',
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
          'Experiência que Faz a Diferença',
          style: TextStyle(
            fontSize: isDesktop ? 42 : 32,
            fontWeight: FontWeight.bold,
            color: const Color(0xFF1A237E),
            height: 1.2,
          ),
        ),
        const SizedBox(height: 24),
        Text(
          'O escritório Silva & Associados é reconhecido pela excelência na prestação de serviços jurídicos, atuando com ética, transparência e compromisso com os resultados.',
          style: TextStyle(
            fontSize: isDesktop ? 18 : 16,
            color: Colors.grey[700],
            height: 1.8,
          ),
        ),
        const SizedBox(height: 16),
        Text(
          'Nossa equipe multidisciplinar está preparada para atender demandas complexas em diversas áreas do Direito, oferecendo soluções personalizadas e estratégicas para cada cliente.',
          style: TextStyle(
            fontSize: isDesktop ? 18 : 16,
            color: Colors.grey[700],
            height: 1.8,
          ),
        ),
        const SizedBox(height: 30),
        Row(
          children: [
            const Icon(
              Icons.verified,
              color: Color(0xFFB8860B),
              size: 24,
            ),
            const SizedBox(width: 12),
            Text(
              'OAB Certificado',
              style: TextStyle(
                fontSize: isDesktop ? 16 : 14,
                fontWeight: FontWeight.w600,
                color: Colors.grey[800],
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildStats(bool isDesktop) {
    return Container(
      padding: EdgeInsets.all(isDesktop ? 50 : 30),
      decoration: BoxDecoration(
        color: const Color(0xFF1A237E),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        children: [
          _buildStatItem('25+', 'Anos de Experiência', isDesktop),
          Divider(color: Colors.white.withOpacity(0.3), height: 40),
          _buildStatItem('5.000+', 'Casos de Sucesso', isDesktop),
          Divider(color: Colors.white.withOpacity(0.3), height: 40),
          _buildStatItem('98%', 'Índice de Aprovação', isDesktop),
          Divider(color: Colors.white.withOpacity(0.3), height: 40),
          _buildStatItem('15', 'Advogados Especializados', isDesktop),
        ],
      ),
    );
  }

  Widget _buildStatItem(String number, String label, bool isDesktop) {
    return Column(
      children: [
        Text(
          number,
          style: TextStyle(
            fontSize: isDesktop ? 48 : 36,
            fontWeight: FontWeight.bold,
            color: const Color(0xFFB8860B),
          ),
        ),
        const SizedBox(height: 8),
        Text(
          label,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: isDesktop ? 16 : 14,
            color: Colors.white,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
