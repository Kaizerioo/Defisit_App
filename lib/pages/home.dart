import 'package:defisit/pages/login.dart';
import 'package:defisit/pages/profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Home extends StatelessWidget {
  const Home({super.key});
  

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Homepage'),
      ),
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search for food or restaurants',
                prefixIcon: const Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
            ),
          ),
          const Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Today's Deals",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              height: 200.0,
              child: PageView(
                children: [
                  Image.network('https://upload.wikimedia.org/wikipedia/commons/thumb/6/6d/Good_Food_Display_-_NCI_Visuals_Online.jpg/220px-Good_Food_Display_-_NCI_Visuals_Online.jpg', fit: BoxFit.cover),
                  Image.network('https://cdn.britannica.com/36/123536-050-95CB0C6E/Variety-fruits-vegetables.jpg', fit: BoxFit.cover),
                  Image.network('https://post.healthline.com/wp-content/uploads/2021/10/breakfast-foods-eggs-scrambled-pan-1296x728-header.jpg', fit: BoxFit.cover),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  // Add action for the button
                },
                child: const Text('View total saving'),
              ),
            ),
          ),
          const Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Categories',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
                Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  height: 120.0,
                  child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    {'name': 'Fruits', 'image': 'https://cdn.britannica.com/36/123536-050-95CB0C6E/Variety-fruits-vegetables.jpg'},
                    {'name': 'Vegetables', 'image': 'https://cdn.britannica.com/36/123536-050-95CB0C6E/Variety-fruits-vegetables.jpg'},
                    {'name': 'Dairy', 'image': 'https://post.healthline.com/wp-content/uploads/2021/10/breakfast-foods-eggs-scrambled-pan-1296x728-header.jpg'},
                    {'name': 'Meat', 'image': 'https://upload.wikimedia.org/wikipedia/commons/thumb/6/6d/Good_Food_Display_-_NCI_Visuals_Online.jpg/220px-Good_Food_Display_-_NCI_Visuals_Online.jpg'},
                    {'name': 'Grains', 'image': 'https://cdn.britannica.com/36/123536-050-95CB0C6E/Variety-fruits-vegetables.jpg'},
                    {'name': 'Fruits', 'image': 'https://cdn.britannica.com/36/123536-050-95CB0C6E/Variety-fruits-vegetables.jpg'},
                    {'name': 'Fruits', 'image': 'https://cdn.britannica.com/36/123536-050-95CB0C6E/Variety-fruits-vegetables.jpg'},
                    {'name': 'Fruits', 'image': 'https://cdn.britannica.com/36/123536-050-95CB0C6E/Variety-fruits-vegetables.jpg'},
                    {'name': 'Fruits', 'image': 'https://cdn.britannica.com/36/123536-050-95CB0C6E/Variety-fruits-vegetables.jpg'},
                  ].map((category) {
                    return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Column(
                      children: [
                      Image.network(category['image']!, height: 50, width: 50, fit: BoxFit.cover),
                      Chip(
                        label: Text(category['name']!),
                      ),
                      ],
                    ),
                    );
                  }).toList(),
                  ),
                ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: BottomNavigationBar(
                    items: const <BottomNavigationBarItem>[
                      BottomNavigationBarItem(
                        icon: Icon(Icons.home),
                        label: 'Home',
                      ),
                      BottomNavigationBarItem(
                        icon: Icon(Icons.shopping_cart),
                        label: 'Cart',
                      ),
                      BottomNavigationBarItem(
                        icon: Icon(Icons.receipt),
                        label: 'Orders',
                      ),
                      BottomNavigationBarItem(
                        icon: Icon(Icons.account_circle),
                        label: 'Account',
                      ),
                    ],
                    currentIndex: 0, // Set the initial selected index
                    selectedItemColor: Colors.blue, // Set the selected label color
                    unselectedItemColor: Colors.grey, // Set the unselected label color
                    onTap: (index) {
                      // Handle item tap
                      switch (index) {
                        case 0:
                          // Navigator.push(
                          //   context,
                          //   MaterialPageRoute(builder: (context) => const LoginPage()),
                          // );
                          break;
                        // case 1:
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(builder: (context) => const CartPage()),
                        // );
                        // break;
                        // case 2:
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(builder: (context) => const OrdersPage()),
                        // );
                        // break;
                        case 3:
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const Profile()),
                          );
                          break;
                      }
                    },
                  ),
                )
          // Add more widgets to display restaurants, food items, etc.
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add action for the button
        },
        child: const Icon(Icons.shopping_cart),
      ),
    );
  }
}