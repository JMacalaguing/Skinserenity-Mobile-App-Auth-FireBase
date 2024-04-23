import 'package:flutter/material.dart';

class OilySkin extends StatelessWidget {
  const OilySkin({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Oily Skin Skincare Routine'),
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
                      '1. Cleanse gently by washing your face with a gentle cleanser.\n'
                          '2. Hydrate by applying a hydrating toner or serum.\n'
                          '3. Moisturize with a rich moisturizer.\n'
                          '4. Protect your skin by applying sunscreen with SPF 30 or higher.\n'
                          '5. Optional: Apply eye cream for extra care.\n',
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
                      '1. Double cleanse using an oil-based cleanser to remove makeup, followed by a gentle cleanser.\n'
                          '2. Exfoliate 1-2 times a week to buff away dry patches with a gentle exfoliant.\n'
                          '3. Treat your skin by applying a hydrating serum.\n'
                          '4. Apply eye cream for nighttime care.\n'
                          '5. Moisturize with a nourishing night cream.\n'
                          '6. Optional: Apply face oil for an extra boost.\n',
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
    home: OilySkin(),
  ));
}