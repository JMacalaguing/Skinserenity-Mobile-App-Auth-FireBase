import 'package:flutter/material.dart';

class Combination extends StatelessWidget {
  const Combination({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Combination Skincare Routine'),
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
                      '1. Gently remove dirt, oil, and sweat with a foaming gel cleanser.\n'
                          '2. If needed, use a gentle exfoliating wash to remove dead skin cells, especially in the oily T-zone area.\n'
                          '3. Apply a lightweight serum with hyaluronic acid to hydrate and plump the skin. Look for formulas labeled as “non-comedogenic” to avoid clogging pores.\n'
                          '4. Apply a light, oil-free moisturizer to hydrate without clogging pores.\n'
                          '5. Protect your skin from sun damage with a broad-spectrum SPF 30 or higher sunscreen.\n',
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
                      '1. Remove makeup and impurities with a gentle cleanser.\n'
                          '2. Gently buff away dead skin cells with a chemical exfoliant containing AHAs or BHAs to treat oily areas and promote cell turnover.\n'
                          '3. Apply a targeted serum with retinol to address wrinkles and uneven skin tone.\n'
                          '4. Apply a richer moisturizer to hydrate dry areas of your face.\n',
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
    home: Combination(),
  ));
}