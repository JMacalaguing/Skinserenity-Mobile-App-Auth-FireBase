import 'package:flutter/material.dart';

class DrySkin extends StatelessWidget {
  const DrySkin({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Dry Skin Skincare Routine'),
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
                      '1. Gently rinse your face with warm water.\n'
                          '2. Use a mild cleanser to cleanse your skin.\n'
                          '3. Apply moisturizer to hydrate your skin.\n'
                          '4. Don\'t forget to put on sunscreen to protect your skin.\n'
                          '5. If your skin feels extra dry, consider adding a few drops of face oil for added nourishment.\n',
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
                      '1. Cleanse your face with a gentle cleanser to remove the day\'s impurities.\n'
                          '2. Apply a serum to address specific skin concerns you might have.\n'
                          '3. Dab on some eye cream to keep the delicate skin around your eyes hydrated.\n'
                          '4. Moisturize your skin generously to lock in hydration overnight.\n'
                          '5. Finish off by applying face oil to seal in moisture and wake up with a radiant glow.\n',
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
    home: DrySkin(),
  ));
}