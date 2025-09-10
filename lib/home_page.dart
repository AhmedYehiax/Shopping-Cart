import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shopping App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Suwannaphum',
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final List<Map<String, dynamic>> featuredProducts = [
    {
      'image': 'assets/premium-headphone.png',
      'title': 'Premium Headphones',
    },
    {
      'image': 'assets/Smart-watch.jpg',
      'title': 'Smart Watch',
    },
    {
      'image': 'assets/wireless-speaker.png',
      'title': 'Wireless Speaker',
    },
  ];

  final List<Map<String, dynamic>> products = [
    {
      'image': 'assets/Apple-Airpods-3-generation.jpeg',
      'title': 'Wireless Earbuds',
      'price': '\$59.99',
    },
    {
      'image': 'assets/iphoe-case.jpg',
      'title': 'Smartphone Case',
      'price': '\$19.99',
    },
    {
      'image': 'assets/Bluetooth Speaker.jpeg',
      'title': 'Bluetooth Speaker',
      'price': '\$79.99',
    },
    {
      'image': 'assets/Fitness Tracker.jpg',
      'title': 'Fitness Tracker',
      'price': '\$49.99',
    },
    {
      'image': 'assets/Laptop Sleeve.jpg',
      'title': 'Laptop Sleeve',
      'price': '\$29.99',
    },
    {
      'image': 'assets/USB-C Cable.jpg',
      'title': 'USB-C Cable',
      'price': '\$14.99',
    },
  ];

  final List<Map<String, dynamic>> hotOffers = [
    {
      'image': 'assets/Buy one get one.png',
      'description': 'Buy one get one free on all headphones. Limited time only!',
    },
    {
      'image': 'assets/50% off.jpg',
      'description': '50% off on smartphone accessories. Use code: SAVE50',
    },
    {
      'image': 'assets/freeshipping.png',
      'description': 'Free shipping on orders over \$50. Shop now!',
    },
    {
      'image': 'assets/firstorder.png',
      'description': 'New customer discount: 15% off your first order.',
    },
    {
      'image': 'assets/Flash sale.jpg',
      'description': 'Flash sale: Smart watches starting at \$99.99.',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Our Products',
          style: TextStyle(
            fontWeight: FontWeight.w900,
            fontFamily: 'Suwannaphum',
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        flexibleSpace: FlexibleSpaceBar(
          background: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.blue,
                  Colors.deepPurple,
                ],
              ),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Featured Products Section with PageView
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Featured Products',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              height: 200,
              width: double.infinity,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: featuredProducts.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Container(
                      width: 250,
                      decoration: BoxDecoration(
                        color: Colors.deepPurple,
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                      ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.vertical(top: Radius.circular(15)),
                              child: Image.asset(
                                featuredProducts[index]['image'],
                                width: double.infinity,
                                height: 164,
                                fit: BoxFit.fill,
                              ),
                            ),
                            Container(
                              width: double.infinity,
                                decoration: BoxDecoration(
                                  color: Colors.black45,
                                  borderRadius: BorderRadius.vertical(bottom: Radius.circular(15))
                                ),
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  featuredProducts[index]['title'],
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                          ],
                        ),
                      ),
                  );
                },
              ),
            ),

            // Products Grid Section
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'All Products',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              padding: const EdgeInsets.all(8.0),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                childAspectRatio: 0.74,
              ),
              itemCount: products.length,
              itemBuilder: (context, index) {
                return Card(
                  elevation: 2,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        decoration:BoxDecoration(
                          color:Colors.white,
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(12),
                            topRight: Radius.circular(12),
                            ),
                        ),
                        child: Image.asset(
                          products[index]['image'],
                          width: double.infinity,
                          height: 150,
                          fit: BoxFit.contain,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              products[index]['title'],
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 4),
                            Row(
                              mainAxisAlignment:MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  products[index]['price'],
                                  style: TextStyle(
                                    color: Colors.grey[700],
                                  ),
                                ),
                                IconButton(
                                      icon: const Icon(Icons.add_shopping_cart),
                                      onPressed: () {
                                        ScaffoldMessenger.of(context).showSnackBar(
                                          SnackBar(
                                            content:
                                            Text('${products[index]['title']} added to the cart'),
                                            duration: const Duration(seconds: 1),
                                          ),
                                        );
                                      },
                                    ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),

            // Hot Offers Section
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Hot Offers',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              height:550 ,
              child: ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                scrollDirection: Axis.vertical,
                itemCount: hotOffers.length,
                itemBuilder: (context, index) {
                  return Card(
                    elevation: 2,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Image.asset(
                              hotOffers[index]['image'],
                              width: 80,
                              height: 80,
                              fit: BoxFit.fitWidth,
                            ),
                          ),
                          const SizedBox(width: 12),
                          Expanded(
                            child: Text(
                              hotOffers[index]['description'],
                              style: const TextStyle(
                                fontSize: 14,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}