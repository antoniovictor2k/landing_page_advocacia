import 'package:flutter/material.dart';

class TeamSection extends StatelessWidget {
  const TeamSection({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final isDesktop = size.width > 768;

    final team = [
      {
        'name': 'Dr. Carlos Silva',
        'role': 'Sócio Fundador - Direito Empresarial',
        'oab': 'OAB/SP 123.456',
      },
      {
        'name': 'Dra. Ana Rodrigues',
        'role': 'Sócia - Direito Trabalhista',
        'oab': 'OAB/SP 234.567',
      },
      {
        'name': 'Dr. Pedro Santos',
        'role': 'Advogado Sênior - Direito Civil',
        'oab': 'OAB/SP 345.678',
      },
      {
        'name': 'Dra. Maria Oliveira',
        'role': 'Advogada - Direito de Família',
        'oab': 'OAB/SP 456.789',
      },
    ];

    return Container(
      width: double.infinity,
      color: Colors.white,
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
              'NOSSA EQUIPE',
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
            'Advogados Especializados',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: isDesktop ? 42 : 32,
              fontWeight: FontWeight.bold,
              color: const Color(0xFF1A237E),
            ),
          ),
          const SizedBox(height: 16),
          Text(
            'Conheça os profissionais que irão defender seus interesses',
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
              crossAxisCount: isDesktop ? 4 : (size.width > 480 ? 2 : 1),
              crossAxisSpacing: 24,
              mainAxisSpacing: 24,
              childAspectRatio: 0.85,
            ),
            itemCount: team.length,
            itemBuilder: (context, index) {
              final member = team[index];
              return _buildTeamCard(
                name: member['name']!,
                role: member['role']!,
                oab: member['oab']!,
                isDesktop: isDesktop,
              );
            },
          ),
        ],
      ),
    );
  }

  Widget _buildTeamCard({
    required String name,
    required String role,
    required String oab,
    required bool isDesktop,
  }) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        children: [
          Expanded(
            flex: 3,
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0xFF1A237E).withOpacity(0.1),
                borderRadius: const BorderRadius.vertical(
                  top: Radius.circular(8),
                ),
              ),
              child: Center(
                child: CircleAvatar(
                  radius: isDesktop ? 50 : 45,
                  backgroundColor: const Color(0xFF1A237E),
                  child: Text(
                    name.split(' ')[1][0],
                    style: TextStyle(
                      fontSize: isDesktop ? 36 : 32,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    name,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: isDesktop ? 18 : 16,
                      fontWeight: FontWeight.bold,
                      color: const Color(0xFF1A237E),
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    role,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: isDesktop ? 13 : 12,
                      color: Colors.grey[600],
                      height: 1.4,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    oab,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: isDesktop ? 12 : 11,
                      color: const Color(0xFFB8860B),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
