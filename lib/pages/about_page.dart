import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About'),
      ),
      body: Stack(
        children: [
          const Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Skin Serenity',
                  style: TextStyle(fontStyle: FontStyle.italic, fontWeight: FontWeight.bold, fontSize: 20),
                ),
                SizedBox(height: 10),
                Text(
                  'Take care of your skin.',
                  style: TextStyle(fontStyle: FontStyle.italic),
                ),
                SizedBox(height: 20),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    'Skin Serenity offers a treasure trove of skincare wisdom, guiding users with practical suggestions for glowing, healthy skin. From basic routines to advanced treatments, it simplifies skincare with concise tips tailored to individual needs. Whether combating acne or seeking anti-aging solutions, Skin Serenity empowers users with effective strategies for their skincare journey. With its user-friendly approach and concise advice, it\'s a go-to resource for anyone striving for radiant skin. We\'ll take care of everything, and you\'ll leave feeling refreshed, rejuvenated, and beautiful.',
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              color: Colors.grey[200],
              padding: const EdgeInsets.all(20),
              child: const Text(
                'For the love of beauty — let\'s get in touch. Send us a message: skinserenity@gmail.com',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 14),
              ),
            ),
          ),
        ],
      ),
    );
  }
}