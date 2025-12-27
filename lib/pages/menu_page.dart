import 'package:flutter/material.dart';
import 'cart_page.dart';

class MenuScreen extends StatefulWidget {
  final String restaurant;

  const MenuScreen({super.key, required this.restaurant});

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  final Map<String, int> cart = {};
  final Map<String, int> itemPrices = {};

  final Map<String, List<Map<String, dynamic>>> restaurantMenus = {
    // ================== 1. DESI FOOD ==================
    'Haveli Restaurant': [
      {
        'name': 'Chicken Karahi',
        'price': 2200,
        'image':
            'https://images.unsplash.com/photo-1606471191009-63994c53433b?auto=format&fit=crop&w=500&q=60',
      },
      //{'name': 'Mutton Karahi', 'price': 3500, 'image': 'https://images.unsplash.com/photo-1548943487-a2e4e43b485c?auto=format&fit=crop&w=500&q=60'},
      {
        'name': 'Roghni Naan',
        'price': 150,
        'image':
            'https://images.unsplash.com/photo-1626074353765-517a681e40be?auto=format&fit=crop&w=500&q=60',
      },
      {
        'name': 'Seekh Kabab',
        'price': 850,
        'image':
            'https://images.unsplash.com/photo-1594041680534-e8c8cdebd659?auto=format&fit=crop&w=500&q=60',
      },
    ],
    'Butt Karahi': [
      {
        'name': 'Desi Ghee Karahi',
        'price': 2800,
        'image':
            'https://images.unsplash.com/photo-1606471191009-63994c53433b?auto=format&fit=crop&w=500&q=60',
      },
      {
        'name': 'Chicken Tikka',
        'price': 600,
        'image':
            'https://images.unsplash.com/photo-1599487488170-d11ec9c172f0?auto=format&fit=crop&w=500&q=60',
      },
      {
        'name': 'Butter Naan',
        'price': 120,
        'image':
            'https://images.unsplash.com/photo-1626074353765-517a681e40be?auto=format&fit=crop&w=500&q=60',
      },
    ],
    'Spice Bazaar': [
      {
        'name': 'Sunday Brunch Buffet',
        'price': 2495,
        'image':
            'https://images.unsplash.com/photo-1555244162-803834f70033?auto=format&fit=crop&w=500&q=60',
      },
      //{'name': 'Tawa Chicken', 'price': 1800, 'image': 'https://images.unsplash.com/photo-1604329760661-e71dc83f8f1e?auto=format&fit=crop&w=500&q=60'},
      {
        'name': 'Palak Paneer',
        'price': 1200,
        'image':
            'https://images.unsplash.com/photo-1589647363585-f4a7d3877b10?auto=format&fit=crop&w=500&q=60',
      },
    ],
    'The Monal': [
      {
        'name': 'Monal Special Platter',
        'price': 4500,
        'image':
            'https://images.unsplash.com/photo-1544025162-d76694265947?auto=format&fit=crop&w=500&q=60',
      },
      {
        'name': 'Makhni Handi',
        'price': 2400,
        'image':
            'https://images.unsplash.com/photo-1565557623262-b51c2513a641?auto=format&fit=crop&w=500&q=60',
      },
      //{'name': 'Cheese Naan', 'price': 450, 'image': 'https://images.unsplash.com/photo-1573164713714-d95e436ab8d6?auto=format&fit=crop&w=500&q=60'},
    ],
    'Savour Foods': [
      {
        'name': 'Chicken Pulao Kabab',
        'price': 550,
        'image':
            'https://images.unsplash.com/photo-1633945274405-b6c8069047b0?auto=format&fit=crop&w=500&q=60',
      },
      //{'name': 'Zarda (Sweet Rice)', 'price': 300, 'image': 'https://images.unsplash.com/photo-1596560548464-f010549b8416?auto=format&fit=crop&w=500&q=60'},
      {
        'name': 'Savour Ice Cream',
        'price': 200,
        'image':
            'https://images.unsplash.com/photo-1563805042-7684c019e1cb?auto=format&fit=crop&w=500&q=60',
      },
    ],

    // ================== 2. FAST FOOD ==================
    'Cheezious': [
      {
        'name': 'Crown Crust Pizza',
        'price': 1400,
        'image':
            'https://images.unsplash.com/photo-1513104890138-7c749659a591?auto=format&fit=crop&w=500&q=60',
      },
      {
        'name': 'Behari Rolls',
        'price': 450,
        'image':
            'https://images.unsplash.com/photo-1534080564583-6be75777b70a?auto=format&fit=crop&w=500&q=60',
      },
      //{'name': 'Fettuccine Pasta', 'price': 900, 'image': 'https://images.unsplash.com/photo-1612874742237-9828671438a4?auto=format&fit=crop&w=500&q=60'},
    ],
    'KFC': [
      {
        'name': 'Zinger Burger',
        'price': 550,
        'image':
            'https://images.unsplash.com/photo-1568901346375-23c9450c58cd?auto=format&fit=crop&w=500&q=60',
      },
      {
        'name': 'Mighty Zinger',
        'price': 750,
        'image':
            'https://images.unsplash.com/photo-1568901346375-23c9450c58cd?auto=format&fit=crop&w=500&q=60',
      },
      {
        'name': 'Hot Wings (Bucket)',
        'price': 600,
        'image':
            'https://images.unsplash.com/photo-1626082927389-6cd097cdc6ec?auto=format&fit=crop&w=500&q=60',
      },
    ],
    'McDonald\'s': [
      {
        'name': 'Big Mac',
        'price': 900,
        'image':
            'https://images.unsplash.com/photo-1561758033-d89a9ad46330?auto=format&fit=crop&w=500&q=60',
      },
      {
        'name': 'McFlurry',
        'price': 450,
        'image':
            'https://images.unsplash.com/photo-1563805042-7684c019e1cb?auto=format&fit=crop&w=500&q=60',
      },
      {
        'name': 'Spicy McCrispy',
        'price': 850,
        'image':
            'https://images.unsplash.com/photo-1568901346375-23c9450c58cd?auto=format&fit=crop&w=500&q=60',
      },
    ],
    'Ranchers': [
      {
        'name': 'Godfather Burger',
        'price': 800,
        'image':
            'https://images.unsplash.com/photo-1568901346375-23c9450c58cd?auto=format&fit=crop&w=500&q=60',
      },
      {
        'name': 'Loaded Fries',
        'price': 600,
        'image':
            'https://images.unsplash.com/photo-1576107232684-1279f390859f?auto=format&fit=crop&w=500&q=60',
      },
    ],
    'Howdy': [
      {
        'name': 'Son of a Bun',
        'price': 850,
        'image':
            'https://images.unsplash.com/photo-1568901346375-23c9450c58cd?auto=format&fit=crop&w=500&q=60',
      },
      {
        'name': 'Jalapeno Burger',
        'price': 900,
        'image':
            'https://images.unsplash.com/photo-1568901346375-23c9450c58cd?auto=format&fit=crop&w=500&q=60',
      },
      {
        'name': 'Steak & Fries',
        'price': 1500,
        'image':
            'https://images.unsplash.com/photo-1600891964092-4316c288032e?auto=format&fit=crop&w=500&q=60',
      },
    ],

    // ================== 3. CHINESE ==================
    'Yum Chinese & Thai': [
      {
        'name': 'Chicken Chowmein',
        'price': 950,
        'image':
            'https://images.unsplash.com/photo-1585032226651-759b368d7246?auto=format&fit=crop&w=500&q=60',
      },
      {
        'name': 'Kung Pao Chicken',
        'price': 1200,
        'image':
            'https://images.unsplash.com/photo-1525755662778-989d0524087e?auto=format&fit=crop&w=500&q=60',
      },
      {
        'name': 'Fish Chill Dry',
        'price': 1400,
        'image':
            'https://images.unsplash.com/photo-1565557623262-b51c2513a641?auto=format&fit=crop&w=500&q=60',
      },
    ],
    'Bamboo Union': [
      //{'name': 'Dumplings', 'price': 800, 'image': 'https://images.unsplash.com/photo-1541696490865-e03c66201e4b?auto=format&fit=crop&w=500&q=60'},
      {
        'name': 'Beef Chilli Dry',
        'price': 1300,
        'image':
            'https://images.unsplash.com/photo-1585032226651-759b368d7246?auto=format&fit=crop&w=500&q=60',
      },
    ],
    'Dynasty': [
      {
        'name': 'Szechuan Chicken',
        'price': 1100,
        'image':
            'https://images.unsplash.com/photo-1525755662778-989d0524087e?auto=format&fit=crop&w=500&q=60',
      },
      //{'name': 'Egg Fried Rice', 'price': 600, 'image': 'https://images.unsplash.com/photo-1603133872878-684f208fb74b?auto=format&fit=crop&w=500&q=60'},
    ],
    'Mandarin Kitchen': [
      {
        'name': 'General Tso Chicken',
        'price': 1250,
        'image':
            'https://images.unsplash.com/photo-1525755662778-989d0524087e?auto=format&fit=crop&w=500&q=60',
      },
      {
        'name': 'Spring Rolls (6 pcs)',
        'price': 450,
        'image':
            'https://images.unsplash.com/photo-1544025162-d76694265947?auto=format&fit=crop&w=500&q=60',
      },
    ],
    'Tai-Pan': [
      //{'name': 'Hot & Sour Soup', 'price': 500, 'image': 'https://images.unsplash.com/photo-1547592166-23acbe3a624b?auto=format&fit=crop&w=500&q=60'},
      {
        'name': 'Chowmein',
        'price': 900,
        'image':
            'https://images.unsplash.com/photo-1585032226651-759b368d7246?auto=format&fit=crop&w=500&q=60',
      },
    ],

    // ================== 4. BBQ ==================
    'Bar.B.Q Tonight': [
      {
        'name': 'Mutton Ribs',
        'price': 2800,
        'image':
            'https://images.unsplash.com/photo-1544025162-d76694265947?auto=format&fit=crop&w=500&q=60',
      },
      {
        'name': 'Reshmi Kabab',
        'price': 900,
        'image':
            'https://images.unsplash.com/photo-1599487488170-d11ec9c172f0?auto=format&fit=crop&w=500&q=60',
      },
      //{'name': 'BBQ Platter', 'price': 3500, 'image': 'https://images.unsplash.com/photo-1529193591184-b1d580690408?auto=format&fit=crop&w=500&q=60'},
    ],
    'Bundu Khan': [
      {
        'name': 'Chicken Tikka Leg',
        'price': 450,
        'image':
            'https://images.unsplash.com/photo-1599487488170-d11ec9c172f0?auto=format&fit=crop&w=500&q=60',
      },
      {
        'name': 'Malai Boti',
        'price': 950,
        'image':
            'https://images.unsplash.com/photo-1599487488170-d11ec9c172f0?auto=format&fit=crop&w=500&q=60',
      },
    ],
    'Baba Tikka': [
      {
        'name': 'Seekh Kabab',
        'price': 150,
        'image':
            'https://images.unsplash.com/photo-1599487488170-d11ec9c172f0?auto=format&fit=crop&w=500&q=60',
      },
      {
        'name': 'Chicken Piece',
        'price': 400,
        'image':
            'https://images.unsplash.com/photo-1599487488170-d11ec9c172f0?auto=format&fit=crop&w=500&q=60',
      },
    ],
    'Zaviya': [
      {
        'name': 'Beef Kabab',
        'price': 700,
        'image':
            'https://images.unsplash.com/photo-1599487488170-d11ec9c172f0?auto=format&fit=crop&w=500&q=60',
      },
      {
        'name': 'Lamb Chops',
        'price': 2200,
        'image':
            'https://images.unsplash.com/photo-1544025162-d76694265947?auto=format&fit=crop&w=500&q=60',
      },
    ],

    // ================== 5. STREET FOOD ==================
    'Riaz Falooda': [
      {
        'name': 'Kulfi Falooda',
        'price': 350,
        'image':
            'https://images.unsplash.com/photo-1563805042-7684c019e1cb?auto=format&fit=crop&w=500&q=60',
      },
      {
        'name': 'Rabri Bowl',
        'price': 400,
        'image':
            'https://images.unsplash.com/photo-1563805042-7684c019e1cb?auto=format&fit=crop&w=500&q=60',
      },
    ],
    'Fiqa Lassi': [
      {
        'name': 'Pera Lassi (Sweet)',
        'price': 300,
        'image':
            'https://images.unsplash.com/photo-1595981267035-7b04ca84a82d?auto=format&fit=crop&w=500&q=60',
      },
      {
        'name': 'Salted Lassi',
        'price': 200,
        'image':
            'https://images.unsplash.com/photo-1595981267035-7b04ca84a82d?auto=format&fit=crop&w=500&q=60',
      },
    ],
    'Bhaiyya Kabab': [
      {
        'name': 'Beef Kabab Plate',
        'price': 450,
        'image':
            'https://images.unsplash.com/photo-1599487488170-d11ec9c172f0?auto=format&fit=crop&w=500&q=60',
      },
      {
        'name': 'Paratha',
        'price': 50,
        'image':
            'https://images.unsplash.com/photo-1626074353765-517a681e40be?auto=format&fit=crop&w=500&q=60',
      },
    ],
    'Amritsari Hareesa': [
      //{'name': 'Special Hareesa', 'price': 800, 'image': 'https://images.unsplash.com/photo-1547496502-ffa2264a36b5?auto=format&fit=crop&w=500&q=60'},
      {
        'name': 'Naan',
        'price': 40,
        'image':
            'https://images.unsplash.com/photo-1626074353765-517a681e40be?auto=format&fit=crop&w=500&q=60',
      },
    ],

    // ================== 6. SNACKS ==================
    'Jalal Sons': [
      {
        'name': 'Chicken Patties',
        'price': 150,
        'image':
            'https://images.unsplash.com/photo-1621996346565-e3dbc646d9a9?auto=format&fit=crop&w=500&q=60',
      },
      {
        'name': 'Club Sandwich',
        'price': 450,
        'image':
            'https://images.unsplash.com/photo-1528735602780-2552fd46c7af?auto=format&fit=crop&w=500&q=60',
      },
      {
        'name': 'Pizza Slice',
        'price': 350,
        'image':
            'https://images.unsplash.com/photo-1513104890138-7c749659a591?auto=format&fit=crop&w=500&q=60',
      },
    ],
    'Samosa House': [
      {
        'name': 'Aloo Samosa',
        'price': 50,
        'image':
            'https://images.unsplash.com/photo-1601050690597-df0568f70950?auto=format&fit=crop&w=500&q=60',
      },
      {
        'name': 'Chicken Samosa',
        'price': 80,
        'image':
            'https://images.unsplash.com/photo-1601050690597-df0568f70950?auto=format&fit=crop&w=500&q=60',
      },
      {
        'name': 'Samosa Chat',
        'price': 250,
        'image':
            'https://images.unsplash.com/photo-1601050690597-df0568f70950?auto=format&fit=crop&w=500&q=60',
      },
    ],
    'Brew Chat': [
      {
        'name': 'Gol Gappay',
        'price': 200,
        'image':
            'https://images.unsplash.com/photo-1601050690597-df0568f70950?auto=format&fit=crop&w=500&q=60',
      },
      {
        'name': 'Dahi Bhallay',
        'price': 250,
        'image':
            'https://images.unsplash.com/photo-1563805042-7684c019e1cb?auto=format&fit=crop&w=500&q=60',
      },
    ],
    'Bombay Chowpatty': [
      {
        'name': 'Puri Bhaji',
        'price': 350,
        'image':
            'https://images.unsplash.com/photo-1601050690597-df0568f70950?auto=format&fit=crop&w=500&q=60',
      },
      {
        'name': 'Bhel Puri',
        'price': 250,
        'image':
            'https://images.unsplash.com/photo-1601050690597-df0568f70950?auto=format&fit=crop&w=500&q=60',
      },
    ],

    // ================== 7. VEGETARIAN ==================
    'Desi Kitchenette': [
      {
        'name': 'Daal Makhni',
        'price': 400,
        'image':
            'https://images.unsplash.com/photo-1546833999-b9f581a1996d?auto=format&fit=crop&w=500&q=60',
      },
      {
        'name': 'Aloo Gobi',
        'price': 350,
        'image':
            'https://images.unsplash.com/photo-1604329760661-e71dc83f8f1e?auto=format&fit=crop&w=500&q=60',
      },
    ],
    'Spice Lounge': [
      {
        'name': 'Paneer Tikka',
        'price': 800,
        'image':
            'https://images.unsplash.com/photo-1567188040754-b7917106b2f1?auto=format&fit=crop&w=500&q=60',
      },
      {
        'name': 'Vegetable Biryani',
        'price': 450,
        'image':
            'https://images.unsplash.com/photo-1589302168068-964664d93dc0?auto=format&fit=crop&w=500&q=60',
      },
    ],
    'Hania\'s Veggie': [
      {
        'name': 'Mixed Veggies',
        'price': 400,
        'image':
            'https://images.unsplash.com/photo-1546833999-b9f581a1996d?auto=format&fit=crop&w=500&q=60',
      },
      {
        'name': 'Sarson Ka Saag',
        'price': 500,
        'image':
            'https://images.unsplash.com/photo-1589647363585-f4a7d3877b10?auto=format&fit=crop&w=500&q=60',
      },
    ],

    // ================== 8. DESSERTS ==================
    'Chashni': [
      {
        'name': 'Gulab Jamun (1kg)',
        'price': 1200,
        'image':
            'https://images.unsplash.com/photo-1591196740685-6ba4eb4f686f?auto=format&fit=crop&w=500&q=60',
      },
      {
        'name': 'Ras Malai',
        'price': 400,
        'image':
            'https://images.unsplash.com/photo-1563805042-7684c019e1cb?auto=format&fit=crop&w=500&q=60',
      },
    ],
    'Sweet Affairs': [
      {
        'name': 'Molten Lava Cake',
        'price': 750,
        'image':
            'https://images.unsplash.com/photo-1624353365286-3f8d62daad51?auto=format&fit=crop&w=500&q=60',
      },
      {
        'name': 'Red Velvet Slice',
        'price': 450,
        'image':
            'https://images.unsplash.com/photo-1616031037011-087000171ea3?auto=format&fit=crop&w=500&q=60',
      },
    ],
    'Jay Bees': [
      {
        'name': 'Ice Cream Scoop',
        'price': 250,
        'image':
            'https://images.unsplash.com/photo-1563805042-7684c019e1cb?auto=format&fit=crop&w=500&q=60',
      },
      {
        'name': 'Falooda',
        'price': 400,
        'image':
            'https://images.unsplash.com/photo-1563805042-7684c019e1cb?auto=format&fit=crop&w=500&q=60',
      },
    ],
    'Jamil Sweets': [
      {
        'name': 'Barfi (1kg)',
        'price': 1100,
        'image':
            'https://images.unsplash.com/photo-1587314168485-3236d6710814?auto=format&fit=crop&w=500&q=60',
      },
      {
        'name': 'Moti Choor Laddu',
        'price': 900,
        'image':
            'https://images.unsplash.com/photo-1587314168485-3236d6710814?auto=format&fit=crop&w=500&q=60',
      },
    ],

    // ================== 9. BAKERY ==================
    'Layers Bakeshop': [
      {
        'name': 'Chocolate Cake (Slice)',
        'price': 400,
        'image':
            'https://images.unsplash.com/photo-1578985545062-69928b1d9587?auto=format&fit=crop&w=500&q=60',
      },
      {
        'name': 'Sundae Cup',
        'price': 300,
        'image':
            'https://images.unsplash.com/photo-1563805042-7684c019e1cb?auto=format&fit=crop&w=500&q=60',
      },
      {
        'name': 'Three Milk Cake',
        'price': 2500,
        'image':
            'https://images.unsplash.com/photo-1578985545062-69928b1d9587?auto=format&fit=crop&w=500&q=60',
      },
    ],
    'Gourmet Bakers': [
      {
        'name': 'Chicken Pizza',
        'price': 800,
        'image':
            'https://images.unsplash.com/photo-1513104890138-7c749659a591?auto=format&fit=crop&w=500&q=60',
      },
      {
        'name': 'Fresh Cream Cake',
        'price': 1500,
        'image':
            'https://images.unsplash.com/photo-1578985545062-69928b1d9587?auto=format&fit=crop&w=500&q=60',
      },
    ],
    'Kitchen Cuisine': [
      {
        'name': 'Fruit Cake',
        'price': 800,
        'image':
            'https://images.unsplash.com/photo-1578985545062-69928b1d9587?auto=format&fit=crop&w=500&q=60',
      },
      {
        'name': 'Chicken Bread',
        'price': 400,
        'image':
            'https://images.unsplash.com/photo-1509440159596-0249088772ff?auto=format&fit=crop&w=500&q=60',
      },
    ],
    'Loafology': [
      {
        'name': 'Croissant',
        'price': 350,
        'image':
            'https://images.unsplash.com/photo-1555507036-ab1f40388085?auto=format&fit=crop&w=500&q=60',
      },
      {
        'name': 'Cheesecake Slice',
        'price': 600,
        'image':
            'https://images.unsplash.com/photo-1563729784474-d77dbb933a9e?auto=format&fit=crop&w=500&q=60',
      },
    ],

    // ================== 10. ITALIAN ==================
    'Cosa Nostra': [
      {
        'name': 'Thin Crust Pizza',
        'price': 1600,
        'image':
            'https://images.unsplash.com/photo-1513104890138-7c749659a591?auto=format&fit=crop&w=500&q=60',
      },
      {
        'name': 'Beef Lasagna',
        'price': 1200,
        'image':
            'https://images.unsplash.com/photo-1574868291534-184672626e25?auto=format&fit=crop&w=500&q=60',
      },
    ],
    'Tuscany Courtyard': [
      {
        'name': 'Alfredo Pasta',
        'price': 1400,
        'image':
            'https://images.unsplash.com/photo-1612874742237-9828671438a4?auto=format&fit=crop&w=500&q=60',
      },
      {
        'name': 'Grilled Chicken',
        'price': 1800,
        'image':
            'https://images.unsplash.com/photo-1600891964092-4316c288032e?auto=format&fit=crop&w=500&q=60',
      },
    ],
    'Arcadian Cafe': [
      {
        'name': 'Red Dragon Chicken',
        'price': 1300,
        'image':
            'https://images.unsplash.com/photo-1525755662778-989d0524087e?auto=format&fit=crop&w=500&q=60',
      },
      {
        'name': 'Stuffed Chicken',
        'price': 1500,
        'image':
            'https://images.unsplash.com/photo-1600891964092-4316c288032e?auto=format&fit=crop&w=500&q=60',
      },
    ],
    'Cafe Aylanto': [
      {
        'name': 'Mediterranean Chicken',
        'price': 1900,
        'image':
            'https://images.unsplash.com/photo-1600891964092-4316c288032e?auto=format&fit=crop&w=500&q=60',
      },
      {
        'name': 'Beef Steaks',
        'price': 2500,
        'image':
            'https://images.unsplash.com/photo-1600891964092-4316c288032e?auto=format&fit=crop&w=500&q=60',
      },
    ],

    // ================== 11. MIDDLE EASTERN ==================
    'Al-Nakhal': [
      {
        'name': 'Chicken Mandi',
        'price': 1200,
        'image':
            'https://images.unsplash.com/photo-1541518763669-27fef04b14ea?auto=format&fit=crop&w=500&q=60',
      },
      {
        'name': 'Mutton Mandi',
        'price': 1800,
        'image':
            'https://images.unsplash.com/photo-1541518763669-27fef04b14ea?auto=format&fit=crop&w=500&q=60',
      },
    ],
    'Damas Restaurant': [
      {
        'name': 'Hummus',
        'price': 400,
        'image':
            'https://images.unsplash.com/photo-1577906096429-f71c2c310d65?auto=format&fit=crop&w=500&q=60',
      },
      {
        'name': 'Shish Tawook',
        'price': 900,
        'image':
            'https://images.unsplash.com/photo-1529193591184-b1d580690408?auto=format&fit=crop&w=500&q=60',
      },
    ],
    'Qabail': [
      {
        'name': 'Peshawari Karahi',
        'price': 2200,
        'image':
            'https://images.unsplash.com/photo-1606471191009-63994c53433b?auto=format&fit=crop&w=500&q=60',
      },
      {
        'name': 'Chapli Kabab',
        'price': 600,
        'image':
            'https://images.unsplash.com/photo-1599487488170-d11ec9c172f0?auto=format&fit=crop&w=500&q=60',
      },
    ],
    'Hungry Habibi': [
      {
        'name': 'Arabian Platter',
        'price': 1500,
        'image':
            'https://images.unsplash.com/photo-1541518763669-27fef04b14ea?auto=format&fit=crop&w=500&q=60',
      },
      {
        'name': 'Shawarma Wrap',
        'price': 350,
        'image':
            'https://images.unsplash.com/photo-1626804475297-411d863b67ab?auto=format&fit=crop&w=500&q=60',
      },
    ],

    // ================== 12. TURKISH ==================
    'Nisa Sultan': [
      {
        'name': 'Adana Kebab',
        'price': 1100,
        'image':
            'https://images.unsplash.com/photo-1529193591184-b1d580690408?auto=format&fit=crop&w=500&q=60',
      },
      {
        'name': 'Turkish Tea',
        'price': 150,
        'image':
            'https://images.unsplash.com/photo-1594443916244-8da2c918bbd1?auto=format&fit=crop&w=500&q=60',
      },
    ],
    'Zeytin': [
      {
        'name': 'Doner Kebab',
        'price': 800,
        'image':
            'https://images.unsplash.com/photo-1626804475297-411d863b67ab?auto=format&fit=crop&w=500&q=60',
      },
      {
        'name': 'Kunafa',
        'price': 600,
        'image':
            'https://images.unsplash.com/photo-1587314168485-3236d6710814?auto=format&fit=crop&w=500&q=60',
      },
    ],
    'Istanbul Restaurant': [
      {
        'name': 'Iskender Kebab',
        'price': 1400,
        'image':
            'https://images.unsplash.com/photo-1529193591184-b1d580690408?auto=format&fit=crop&w=500&q=60',
      },
      {
        'name': 'Turkish Pizza (Lahmacun)',
        'price': 500,
        'image':
            'https://images.unsplash.com/photo-1604382354936-07c5d9983bd3?auto=format&fit=crop&w=500&q=60',
      },
    ],
    'Taksim Restoran': [
      {
        'name': 'Mixed Grill',
        'price': 2200,
        'image':
            'https://images.unsplash.com/photo-1544025162-d76694265947?auto=format&fit=crop&w=500&q=60',
      },
      {
        'name': 'Baklava',
        'price': 500,
        'image':
            'https://images.unsplash.com/photo-1587314168485-3236d6710814?auto=format&fit=crop&w=500&q=60',
      },
    ],
  };

  @override
  Widget build(BuildContext context) {
    final currentMenu = restaurantMenus[widget.restaurant] ?? [];

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(widget.restaurant,
        style: TextStyle(
          fontWeight: FontWeight.bold,
        ),),
        foregroundColor: Colors.orange,
        actions: [
          Stack(
            children: [
              
              IconButton(
                icon: const Icon(Icons.shopping_cart, color: Colors.black,),
                
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      // 2. PASS DATA directly to the Cart Page
                      builder: (_) =>
                          CartScreen(cart: cart, prices: itemPrices),
                    ),
                  );
                },
                
              ),
              
              if (cart.isNotEmpty)
                Positioned(
                  right: 8,
                  top: 8,
                  child: Container(
                    padding: const EdgeInsets.all(2),
                    decoration: const BoxDecoration(
                      color: Colors.red,
                      shape: BoxShape.circle,
                    ),
                    constraints: const BoxConstraints(
                      minWidth: 16,
                      minHeight: 16,
                    ),
                    child: Text(
                      '${cart.length}',
                      style: const TextStyle(color: Colors.white, fontSize: 10),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
            ],
          ),
        ],
        
      ),
      body: currentMenu.isEmpty
          ? Center(child: Text("Menu not available for ${widget.restaurant}"))
          : GridView.builder(
              padding: const EdgeInsets.all(12),
              itemCount: currentMenu.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 0.8,
                mainAxisSpacing: 12,
                crossAxisSpacing: 12,
              ),
              itemBuilder: (context, index) {
                final item = currentMenu[index];
                final name = item['name'];
                final price = item['price'];
                final image = item['image'];

                return Card(
                  elevation: 10,
                  shadowColor: Colors.orange,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),

                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Expanded(
                        child: ClipRRect(
                          borderRadius: const BorderRadius.vertical(
                            top: Radius.circular(20),
                          ),
                          child: Image.network(
                            image,
                            fit: BoxFit.cover,
                            errorBuilder: (ctx, _, __) => const Icon(
                              Icons.fastfood,
                              size: 50,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Text(
                              name,
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                            Text(
                              'Rs $price',
                              style: const TextStyle(
                                color: Colors.green,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 5),
                            SizedBox(
                              height: 35,
                              width: double.infinity,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.orange,
                                  foregroundColor: Colors.white,
                                ),
                                onPressed: () {
                                  // 3. Update Local Cart
                                  setState(() {
                                    cart[name] = (cart[name] ?? 0) + 1;
                                    itemPrices[name] = price;
                                  });
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                      content: Text("$name added!"),
                                      duration: const Duration(
                                        milliseconds: 500,
                                      ),
                                    ),
                                  );
                                },
                                child: const Text('Add'),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
    );
  }
}
