import 'package:flutter/material.dart';

class FooterSection extends StatelessWidget {
  const FooterSection({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final isDesktop = size.width > 768;

    return Container(
      width: double.infinity,
      color: const Color(0xFF1A237E),
      padding: EdgeInsets.symmetric(
        horizontal: isDesktop ? 100 : 20,
        vertical: isDesktop ? 60 : 40,
      ),
      child: Column(
        children: [
          if (isDesktop)
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 2,
                  child: _buildAboutColumn(),
                ),
                const SizedBox(width: 60),
                Expanded(
                  child: _buildLinksColumn('Áreas de Atuação', [
                    'Direito Empresarial',
                    'Direito Civil',
                    'Direito Trabalhista',
                    'Direito de Família',
                  ]),
                ),
                const SizedBox(width: 60),
                Expanded(
                  child: _buildLinksColumn('Informações', [
                    'Sobre Nós',
                    'Nossa Equipe',
                    'Blog',
                    'Contato',
                  ]),
                ),
              ],
            )
          else
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildAboutColumn(),
                const SizedBox(height: 30),
                _buildLinksColumn('Áreas de Atuação', [
                  'Direito Empresarial',
                  'Direito Civil',
                  'Direito Trabalhista',
                  'Direito de Família',
                ]),
                const SizedBox(height: 30),
                _buildLinksColumn('Informações', [
                  'Sobre Nós',
                  'Nossa Equipe',
                  'Blog',
                  'Contato',
                ]),
              ],
            ),
          SizedBox(height: isDesktop ? 40 : 30),
          Divider(color: Colors.white.withOpacity(0.2)),
          SizedBox(height: isDesktop ? 30 : 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Text(
                  '© ${DateTime.now().year} Silva & Associados Advocacia. Todos os direitos reservados.',
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.7),
                    fontSize: isDesktop ? 14 : 12,
                  ),
                ),
              ),
              if (isDesktop) ...[
                const SizedBox(width: 20),
                Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.facebook),
                      color: Colors.white,
                      iconSize: 20,
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.close), // LinkedIn
                      color: Colors.white,
                      iconSize: 20,
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.email),
                      color: Colors.white,
                      iconSize: 20,
                    ),
                  ],
                ),
              ],
            ],
          ),
          if (!isDesktop) ...[
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.facebook),
                  color: Colors.white,
                  iconSize: 20,
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.close),
                  color: Colors.white,
                  iconSize: 20,
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.email),
                  color: Colors.white,
                  iconSize: 20,
                ),
              ],
            ),
          ],
        ],
      ),
    );
  }

  Widget _buildAboutColumn() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Silva & Associados',
          style: TextStyle(
            color: Color(0xFFB8860B),
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 16),
        Text(
          'Escritório de advocacia com mais de 25 anos de experiência, oferecendo soluções jurídicas com excelência e compromisso.',
          style: TextStyle(
            color: Colors.white.withOpacity(0.8),
            fontSize: 14,
            height: 1.6,
          ),
        ),
        const SizedBox(height: 16),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
          decoration: BoxDecoration(
            border: Border.all(color: const Color(0xFFB8860B)),
            borderRadius: BorderRadius.circular(4),
          ),
          child: const Text(
            'OAB/SP Certificado',
            style: TextStyle(
              color: Color(0xFFB8860B),
              fontSize: 12,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildLinksColumn(String title, List<String> links) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 16),
        ...links.map(
          (link) => Padding(
            padding: const EdgeInsets.only(bottom: 12),
            child: InkWell(
              onTap: () {},
              child: Text(
                link,
                style: TextStyle(
                  color: Colors.white.withOpacity(0.8),
                  fontSize: 14,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
