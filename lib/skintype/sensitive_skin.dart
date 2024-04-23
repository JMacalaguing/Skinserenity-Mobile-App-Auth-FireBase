import 'package:flutter/material.dart';

class SensitiveSkin extends StatelessWidget {
  const SensitiveSkin({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Sensitive Skin Skincare Routine'),
          bottom: const TabBar(
            tabs: [
              Tab(text: 'Day'),
              Tab(text: 'Night'),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Day:',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
                    ),
                    SizedBox(height: 8.0),
                    Text(
                      '1. Cleanse with a mild, fragrance-free cleanser.\n'
                          '2. Apply a soothing, hydrating moisturizer formulated for sensitive skin.\n'
                          '3. Use a sunscreen with physical blockers like zinc oxide or titanium dioxide to protect against UV rays without irritating the skin.\n'
                          '4. Consider applying a calming serum or cream to further soothe sensitivity.\n'
                          '5. Finish with a mineral-based makeup if desired, avoiding products with harsh chemicals or fragrances.\n',
                    ),
                  ],
                ),
              ),
            ),
            SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Night:',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
                    ),
                    SizedBox(height: 8.0),
                    Text(
                      '1. Gently cleanse the skin to remove impurities and makeup residue.\n'
                          '2. Apply a gentle, non-irritating exfoliant if needed, such as a chemical exfoliant with mild ingredients like lactic acid or a soft washcloth.\n'
                          '3. Then use hydrating, fragrance-free moisturizer to nourish and repair the skin overnight.\n'
                          '4. Consider using a hypoallergenic eye cream to moisturize and protect your eye area.\n'
                          '5. Optionally, apply a calming facial oil or cream.\n',
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(const MaterialApp(
    home: SensitiveSkin(),
  ));
}