import 'package:flutter/material.dart';

class NormalSkin extends StatelessWidget {
  const NormalSkin({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Normal Skin Skincare Routine'),
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
                      '1. Wash your face with a gentle cleanser to remove dirt, oil, and sweat.\n'
                          '2. Apply a toner to remove any leftover impurities and prep your skin for the next steps.\n'
                          '3. Apply a serum to target specific concerns, such as wrinkles or uneven skin tone.\n'
                          '4. Apply a moisturizer to hydrate your skin and protect it from the elements.\n'
                          '5. Apply sunscreen with SPF 30 or higher to protect your skin from sun damage.\n',
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
                      '1. Use a makeup remover to remove all traces of makeup.\n'
                          '2. Wash your face with a gentle cleanser to remove dirt, oil, and sweat.\n'
                          '3. Apply a toner to remove any leftover impurities and prep your skin for the next steps.\n'
                          '4. Apply a serum to target specific concerns, such as wrinkles or uneven skin tone.\n'
                          '5. Apply a night cream to hydrate your skin and help it repair itself while you sleep.\n',
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
    home: NormalSkin(),
  ));
}