import 'package:flutter/material.dart';
import 'menu_page.dart';

class RestaurantListScreen extends StatelessWidget {
  final String category;

  const RestaurantListScreen({super.key, required this.category});

  @override
  Widget build(BuildContext context) {

    final Map<String, List<Map<String, String>>> restaurantData = {
      
      'Desi Food': [
        {'name': 'Haveli Restaurant', 'image': 'https://images.unsplash.com/photo-1517248135467-4c7edcad34c4?auto=format&fit=crop&w=500&q=60'},
        {'name': 'Butt Karahi', 'image': 'https://images.unsplash.com/photo-1606471191009-63994c53433b?auto=format&fit=crop&w=500&q=60'},
        {'name': 'Spice Bazaar', 'image': 'https://images.unsplash.com/photo-1565557623262-b51c2513a641?auto=format&fit=crop&w=500&q=60'},
      ],
      'Fast Food': [
        {'name': 'Cheezious', 'image': 'https://images.unsplash.com/photo-1513104890138-7c749659a591?auto=format&fit=crop&w=500&q=60'},
        {'name': 'KFC', 'image': 'https://images.unsplash.com/photo-1626082927389-6cd097cdc6ec?auto=format&fit=crop&w=500&q=60'},
        {'name': 'McDonald\'s', 'image': 'https://images.unsplash.com/photo-1561758033-d89a9ad46330?auto=format&fit=crop&w=500&q=60'},
      ],
      'Chinese': [
        {'name': 'Yum Chinese & Thai', 'image': 'https://images.unsplash.com/photo-1525755662778-989d0524087e?auto=format&fit=crop&w=500&q=60'},
        {'name': 'Dynasty', 'image': 'https://images.unsplash.com/photo-1552566626-52f8b828add9?auto=format&fit=crop&w=500&q=60'},
      ],
      'BBQ': [
        {'name': 'Bundu Khan', 'image': 'https://images.unsplash.com/photo-1599487488170-d11ec9c172f0?auto=format&fit=crop&w=500&q=60'},
        {'name': 'Baba Tikka', 'image': 'https://images.unsplash.com/photo-1544025162-d76694265947?auto=format&fit=crop&w=500&q=60'},
      ],
      'Street Food': [
        {
          'name': 'Riaz Falooda',
          'image': 'https://images.unsplash.com/photo-1505253716362-afaea1d3d1af?auto=format&fit=crop&w=500&q=60'
        },
        {
          'name': 'Fiqa Lassi',
          'image': 'https://images.unsplash.com/photo-1577859714523-5f0b6c98ece7?auto=format&fit=crop&w=500&q=60'
        },
        {
          'name': 'Bhaiyya Kabab',
          'image': 'https://images.unsplash.com/photo-1529692236671-f1f6cf9683ba?auto=format&fit=crop&w=500&q=60'
        },
      ],
      'Snacks': [
        {
          'name': 'Jalal Sons',
          'image': 'https://images.unsplash.com/photo-1621996346565-e3dbc646d9a9?auto=format&fit=crop&w=500&q=60'
        },
        {
          'name': 'Samosa House',
          'image': 'https://images.unsplash.com/photo-1601050690597-df0568f70950?auto=format&fit=crop&w=500&q=60'
        },
        {
          'name': 'Brew Chat',
          'image': 'https://images.unsplash.com/photo-1527515545081-5db817172677?auto=format&fit=crop&w=500&q=60'
        },
      ],
      'Vegetarian': [
        {
          'name': 'Desi Kitchenette',
          'image': 'https://images.unsplash.com/photo-1627308595229-7830a5c91f9f?auto=format&fit=crop&w=500&q=60'
        },
        {
          'name': 'Spice Lounge',
          'image': 'https://images.unsplash.com/photo-1604908176997-125f25cc6f3d?auto=format&fit=crop&w=500&q=60'
        },
        {
          'name': 'Hania\'s Veggie',
          'image': 'https://images.unsplash.com/photo-1512621776951-a57141f2eefd?auto=format&fit=crop&w=500&q=60'
        },
      ],
      'Desserts': [
        {
          'name': 'Chashni',
          'image': 'https://images.unsplash.com/photo-1587314168485-3236d6710814?auto=format&fit=crop&w=500&q=60'
        },
        {
          'name': 'Sweet Affairs',
          'image': 'https://images.unsplash.com/photo-1563729784474-d77dbb933a9e?auto=format&fit=crop&w=500&q=60'
        },
        {
          'name': 'Jay Bees',
          'image': 'https://images.unsplash.com/photo-1579306194872-64d3b7bac4c2?auto=format&fit=crop&w=500&q=60'
        },
      ],
      'Bakery': [
        {
          'name': 'Layers Bakeshop',
          'image': 'https://images.unsplash.com/photo-1578985545062-69928b1d9587?auto=format&fit=crop&w=500&q=60'
        },
        {
          'name': 'Gourmet Bakers',
          'image': 'https://images.unsplash.com/photo-1509440159596-0249088772ff?auto=format&fit=crop&w=500&q=60'
        },
        {
          'name': 'Kitchen Cuisine',
          'image': 'https://images.unsplash.com/photo-1550617931-e17a7b70dce2?auto=format&fit=crop&w=500&q=60'
        },
      ],
      'Italian': [
        {
          'name': 'Cosa Nostra',
          'image': 'https://images.unsplash.com/photo-1579684947550-22e945225d9a?auto=format&fit=crop&w=500&q=60'
        },
        {
          'name': 'Tuscany Courtyard',
          'image': 'https://images.unsplash.com/photo-1498837167922-ddd27525d352?auto=format&fit=crop&w=500&q=60'
        },
        {
          'name': 'Arcadian Cafe',
          'image': 'https://images.unsplash.com/photo-1551183053-bf91a1d81141?auto=format&fit=crop&w=500&q=60'
        },
        {
          'name': 'Cafe Aylanto',
          'image': 'https://images.unsplash.com/photo-1595295333158-4742f28fbd85?auto=format&fit=crop&w=500&q=60'
        },
      ],
      'Middle Eastern': [
        {
          'name': 'Al-Nakhal',
          'image': 'https://images.unsplash.com/photo-1541518763669-27fef04b14ea?auto=format&fit=crop&w=500&q=60'
        },
        {
          'name': 'Damas Restaurant',
          'image': 'https://images.unsplash.com/photo-1605807646983-377bc5a76493?auto=format&fit=crop&w=500&q=60'
        },
      ],
      'Turkish': [
        {
          'name': 'Zeytin',
          'image': 'https://images.unsplash.com/photo-1533777857889-4be7c70b33f7?auto=format&fit=crop&w=500&q=60'
        },
        {
          'name': 'Taksim Restoran',
          'image': 'https://images.unsplash.com/photo-1601050690117-94f5f6fa8bd7?auto=format&fit=crop&w=500&q=60'
        },
      ],
    };

    final currentRestaurants = restaurantData[category] ?? [];

    return Scaffold(
      appBar: AppBar(
        title: Text(category,
        style: TextStyle(
          fontWeight: FontWeight.bold,
        ),
        ),

        foregroundColor: Colors.orange,
        
        centerTitle: true,
      ),
      body: currentRestaurants.isEmpty
          ? Center(child: Text("No restaurants found for $category"))
          : ListView.builder(
              padding: const EdgeInsets.all(30),
              itemCount: currentRestaurants.length,
              itemBuilder: (context, index) {
                final restaurant = currentRestaurants[index];
                
                return Card(
                  margin: const EdgeInsets.only(bottom: 20),
                  elevation: 20,
                  shadowColor: Color.fromARGB(255, 255, 115, 0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => MenuScreen(
                            restaurant: restaurant['name']!,
                          ),
                        ),
                      );
                    },
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        // PICTURE SECTION
                        ClipRRect(
                          borderRadius: const BorderRadius.vertical(top: Radius.circular(30)),
                          child: Image.network(
                            restaurant['image']!,
                            height: 150,
                            fit: BoxFit.cover,
                            errorBuilder: (ctx, _, __) => Container(
                              height: 150,
                              color: Colors.grey[300],
                              child: const Icon(Icons.broken_image, size: 50),
                            ),
                          ),
                        ),
                        // NAME SECTION (No Rating)
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                restaurant['name']!,
                                style: const TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              
                              Icon(Icons.arrow_forward_ios, size: 16, color: Colors.grey),
                            ],
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