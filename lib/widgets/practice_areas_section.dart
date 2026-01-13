import 'package:flutter/material.dart';

class PracticeAreasSection extends StatelessWidget {
  const PracticeAreasSection({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final isDesktop = size.width > 768;

    final areas = [
      {
        'icon': Icons.business_center,
        'title': 'Direito Empresarial',
        'description': 'Assessoria completa para empresas, contratos, fusões e aquisições.',
      },
      {
        'icon': Icons.gavel,
        'title': 'Direito Civil',
        'description': 'Contratos, indenizações, responsabilidade civil e sucessões.',
      },
      {
        'icon': Icons.work,
        'title': 'Direito Trabalhista',
        'description': 'Defesa de direitos trabalhistas e assessoria para empresas.',
      },
      {
        'icon': Icons.family_restroom,
        'title': 'Direito de Família',
        'description': 'Divórcios, inventários, pensão alimentícia e guarda.',
      },
      {
        'icon': Icons.account_balance,
        'title': 'Direito Tributário',
        'description': 'Planejamento tributário e defesa em ações fiscais.',
      },
      {
        'icon': Icons.shield,
        'title': 'Direito Penal',
        'description': 'Defesa criminal em todas as fases do processo.',
      },
    ];

    return Container(
      width: double.infinity,
      color: Colors.grey[50],
      padding: EdgeInsets.symmetric(
        horizontal: isDesktop ? 100 : 20,
        vertical: isDesktop ? 100 : 60,
      ),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            decoration: BoxDecoration(
              color: const Color(0xFFB8860B).withOpacity(0.1),
              borderRadius: BorderRadius.circular(4),
            ),
            child: const Text(
              'ÁREAS DE ATUAÇÃO',
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
            'Como Podemos Ajudá-lo',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: isDesktop ? 42 : 32,
              fontWeight: FontWeight.bold,
              color: const Color(0xFF1A237E),
            ),
          ),
          const SizedBox(height: 16),
          Text(
            'Oferecemos serviços jurídicos especializados em diversas áreas do Direito',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: isDesktop ? 18 : 16,
              color: Colors.grey[600],
            ),
          ),
          SizedBox(height: isDesktop ? 60 : 40),
          GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: isDesktop ? 3 : (size.width > 480 ? 2 : 1),
              crossAxisSpacing: 24,
              mainAxisSpacing: 24,
              childAspectRatio: isDesktop ? 1.1 : 1.2,
            ),
            itemCount: areas.length,
            itemBuilder: (context, index) {
              final area = areas[index];
              return _buildAreaCard(
                icon: area['icon'] as IconData,
                title: area['title'] as String,
                description: area['description'] as String,
                isDesktop: isDesktop,
              );
            },
          ),
        ],
      ),
    );
  }

  Widget _buildAreaCard({
    required IconData icon,
    required String title,
    required String description,
    required bool isDesktop,
  }) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      child: Padding(
        padding: EdgeInsets.all(isDesktop ? 32 : 24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: const Color(0xFFB8860B).withOpacity(0.1),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Icon(
                icon,
                size: isDesktop ? 40 : 36,
                color: const Color(0xFFB8860B),
              ),
            ),
            const SizedBox(height: 20),
            Text(
              title,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: isDesktop ? 20 : 18,
                fontWeight: FontWeight.bold,
                color: const Color(0xFF1A237E),
              ),
            ),
            const SizedBox(height: 12),
            Text(
              description,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: isDesktop ? 15 : 14,
                color: Colors.grey[600],
                height: 1.5,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
