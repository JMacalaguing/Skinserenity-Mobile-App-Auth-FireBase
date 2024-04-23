import 'package:flutter/material.dart';
import '../skintype/normal_skin.dart';
import '../skintype/dry_skin.dart';
import '../skintype/oily_skin.dart';
import '../skintype/sensitive_skin.dart';
import '../skintype/combination.dart';

class SkintypePage extends StatelessWidget {
  const SkintypePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Skintype'),
      ),
      body: const Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Know Your Skin Type',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              SizedBox(height: 20),
              // Clickable sections
              SkinTypeSection(
                title: 'Normal Skin',
                description:
                'Normal skin is defined as well-balanced skin which contains the optimal amount of sebum and moisture. This skin type tends to have fine pores, an even tone and is neither too oily or too dry. Both sensitivity and outbreaks are rare in normal skin, but this can be triggered by internal and external stressors.',
              ),
              SkinTypeSection(
                title: 'Dry Skin',
                description:
                'Dry skin is characterized by reduced production of sebum. This skin type tends to appear dull, may feel rough, is less elastic, and increases the visibility of lines or wrinkles. It also has a tendency to be more sensitive. However, on a positive note, produces almost invisible pores. A good dry skin routine is necessary to boost the health and appearance of dry skin.',
              ),
              SkinTypeSection(
                title: 'Oily Skin',
                description:
                'Oily skin is characterized by excessive production of sebum. This type of skin tends to be thicker, more prone to breakouts and the pores are usually larger. On the plus side, oily skin tends to show the signs of aging less readily. An oily skin routine should control oil production, reduce breakouts, and minimize pores.',
              ),
              SkinTypeSection(
                title: 'Sensitive Skin',
                description:
                'Sensitive skin is prone to reactions like redness, itching, or burning when exposed to certain products or environmental factors. It requires gentle, fragrance-free skincare products and minimal ingredients to prevent irritation and maintain its delicate balance.',
              ),
              SkinTypeSection(
                title: 'Combination',
                description:
                'Combination skin can sometimes feel like having two completely skin types on your face. The central portion of the face usually behaves like oily skin, whilst the edges may be more like normal or dry skin. The best combination skincare routine should respect this fact and ensure that the entire face is well-balanced, soft, and blemish-free.',
              ),
              SizedBox(height: 20),
              // Contact section
              Text(
                'Contact',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              Text(
                'For the love of beauty — let\'s get in touch. Send us a message: skinserenity@gmail.com',
                style: TextStyle(
                  fontSize: 12,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SkinTypeSection extends StatelessWidget {
  final String title;
  final String? description;

  const SkinTypeSection({
    super.key,
    required this.title,
    this.description,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // Navigate to a different page based on the title
        switch (title) {
          case 'Normal Skin':
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const NormalSkin()),
            );
            break;
          case 'Dry Skin':
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const DrySkin()),
            );
            break;
          case 'Oily Skin':
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const OilySkin()),
            );
            break;
          case 'Sensitive Skin':
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const SensitiveSkin()),
            );
            break;
          case 'Combination':
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Combination()),
            );
            break;
          default:
            break;
        }
      },
      child: Container(
        padding: const EdgeInsets.all(15),
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.grey[200],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(
                fontSize: 12,
              ),
            ),
            if (description != null) // Render the description if available
              const SizedBox(height: 5),
            Text(
              description ?? '',
              style: const TextStyle(
                fontSize: 10,
              ),
            ),
          ],
        ),
      ),
    );
  }
}