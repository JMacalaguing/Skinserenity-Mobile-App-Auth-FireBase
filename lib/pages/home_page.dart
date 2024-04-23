import 'package:flutter/material.dart';
import 'about_page.dart'; // Import AboutPage
import 'skintype_page.dart'; // Import SkintypePage
import 'customize_page.dart'; // Import CustomizePage
import '../login_screen.dart'; // Import LoginPage



class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false, // Remove debug banner
      home: HomePage(), // Initially show the LoginPage
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    const AboutPage(),
    const SkintypePage(),
    CustomizePage(),
     LoginPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      if (index == _pages.length - 1) {
        // If "Logout" is selected, navigate back to the LoginPage
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) =>  LoginPage()),
        );
      } else {
        _selectedIndex = index;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SkinSerenity'),
      ),
      body: _pages[_selectedIndex],
      bottomNavigationBar: _selectedIndex == _pages.length // Check against the length of _pages
          ? null // Hide bottom navigation bar if logout is selected
          : BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        unselectedItemColor: Colors.black, // Set unselected items to black
        selectedItemColor: Colors.blueGrey, // Set selected item to grey
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'About',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.auto_awesome),
            label: 'Skintype',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.face_retouching_natural),
            label: 'Customize',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.logout),
            label: 'Logout',
          ),
        ],
      ),
    );
  }
}