import 'dart:async';
import 'package:flutter/material.dart';
import 'pages/restaurant_list.dart';

void main() {
  runApp(const MyApp());
}

/* ===================== APP ROOT ===================== */

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'QuickBite',
      home: SplashScreen(),
    );
  }
}

/* ===================== SPLASH SCREEN ===================== */

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Timer(const Duration(seconds: 4), () {
      if (!mounted) return;

      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (_) => const GuestInfoScreen(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              '👋 Welcome to QuickBite',
              style: TextStyle(
                fontSize: 33,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 90),
            Icon(Icons.fastfood, size: 100, color: Colors.white),
            SizedBox(height: 10),
            Text(
              'QuickBite',
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 8),
            Text(
              'Finding the best food near you…',
              style: TextStyle(
                fontSize: 18,
                color: Colors.white70,
              ),
            ),
            SizedBox(height: 40),
            CircularProgressIndicator(
              backgroundColor: Colors.orange,
              color: Colors.white,
            ),
            SizedBox(height: 100),
            Padding(
              padding: EdgeInsets.all(12),
              child: Text(
                'Developed by: Abdul Rehman Ali',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                  color: Colors.white70,
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

/* ===================== GUEST INFO SCREEN ===================== */

class GuestInfoScreen extends StatelessWidget {
  const GuestInfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('How Ordering Works'),
        centerTitle: true,
      ),
backgroundColor: Colors.orange,
      body: Padding(
        
        padding: const EdgeInsets.all(24),
        
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          
          children: [
            const Icon(
              Icons.person_outline,
              size: 80,
              color: Colors.white,
            ),
            const SizedBox(height: 20),
            const Text(
              'Guest Checkout',
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
            ),
            
            const SizedBox(height: 15),
            const Text(
              'No login or signup required.\n\n'
              'Select food items, confirm your order, '
              'and it will be sent directly via WhatsApp.',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 40),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (_) => const HomeScreen(),
                  ),
                );
              },
              child: const Text(
                'Continue',
                style: TextStyle(fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

/* ===================== HOME SCREEN ===================== */

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final categories = [
      {'name': 'Desi Food', 'icon': Icons.rice_bowl},
      {'name': 'Fast Food', 'icon': Icons.fastfood},
      {'name': 'Chinese', 'icon': Icons.ramen_dining},
      {'name': 'BBQ', 'icon': Icons.outdoor_grill},
      {'name': 'Street Food', 'icon': Icons.streetview},
      {'name': 'Snacks', 'icon': Icons.fastfood},
      {'name': 'Vegetarian', 'icon': Icons.eco},
      {'name': 'Desserts', 'icon': Icons.cake},
      {'name': 'Bakery', 'icon': Icons.bakery_dining},
      {'name': 'Italian', 'icon': Icons.local_pizza},
      {'name': 'Middle Eastern', 'icon': Icons.kebab_dining},
      {'name': 'Turkish', 'icon': Icons.restaurant},
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Select Food Type',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        foregroundColor: Colors.orange,
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(20),
        itemCount: categories.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          mainAxisSpacing: 20,
          crossAxisSpacing: 20,
        ),
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => RestaurantListScreen(
                    category: categories[index]['name'] as String,
                  ),
                ),
              );
            },
            child: Card(
              elevation: 20,
              shadowColor: const Color.fromARGB(255, 255, 115, 0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    categories[index]['icon'] as IconData,
                    size: 50,
                    color: Colors.orange,
                  ),
                  const SizedBox(height: 10),
                  Text(
                    categories[index]['name'] as String,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
