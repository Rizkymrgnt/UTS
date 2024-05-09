import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shoes',
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
      home: const MyHomePage(title: 'Shoes'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Text(title),
            Spacer(), // Spacer untuk menjaga jarak
            CircleAvatar(
              radius: 20, // Ukuran radius avatar
              backgroundColor: Colors.grey[300], // Warna latar belakang avatar
              child: Icon(
                Icons.person,
                color: Colors.black, // Warna ikon avatar
              ),
            ),
          ],
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          ShoeCard(
            imageUrl:
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSTkj0o60OxEXXqYvvCrUlUCOtdB_EWSCXRlA&s",
            shoeName: 'Sneakers',
            shoePrice: 'US \$8.795',
            backgroundColor:
                Colors.purple.withOpacity(0.2), // Background ungu lembut
          ),
          ShoeCard(
            imageUrl:
                'https://images.tokopedia.net/img/cache/700/VqbcmM/2023/6/1/226ceee9-75e0-4b85-a9f5-1fdc68c73fe4.jpg',
            shoeName: 'Airwalk',
            shoePrice: 'US \$9.999',
            backgroundColor: Colors.cyan.withOpacity(0.2), // Background cyan
          ),
          ShoeCard(
            imageUrl:
                'https://edit.voila.id/wp-content/uploads/s/files/1/0516/0760/1336/products/5product-DM9036-104-Xms-2022-09-07T1539460700_2048x2048.jpg',
            shoeName: 'Jordan',
            shoePrice: 'US \$9.999',
            backgroundColor: Colors.cyan.withOpacity(0.2), // Background cyan
          ),
          ShoeCard(
            imageUrl:
                'https://static.promediateknologi.id/crop/0x0:0x0/0x0/webp/photo/p2/207/2023/12/07/converse-427294744.jpg',
            shoeName: 'Converse',
            shoePrice: 'US \$9.999',
            backgroundColor: Colors.cyan.withOpacity(0.2), // Background cyan
          ),

          
        ],
      ),
    );
  }
}

class ShoeCard extends StatelessWidget {
  final String imageUrl;
  final String shoeName;
  final String shoePrice;
  final Color backgroundColor;

  const ShoeCard({
    required this.imageUrl,
    required this.shoeName,
    required this.shoePrice,
    required this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: backgroundColor,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            // Column 1: Name and price
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    shoeName,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8.0),
                  Text(
                    shoePrice,
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white, // Warna teks putih
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(width: 16.0), // Spacer
            // Column 2: Image
            Container(
              width: 100,
              height: 100,
              child: Image.network(
                imageUrl,
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ),
    );
  }
}