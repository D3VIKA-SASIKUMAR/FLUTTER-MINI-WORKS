// pages/products_page.dart
import 'package:flutter/material.dart';
import 'package:flutter_mini/FakeStoreAPI/apiservices.dart';

class ProductsPage extends StatelessWidget {
  final String category;

  const ProductsPage({Key? key, required this.category}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Products: $category')),
      body: FutureBuilder<List<dynamic>>(
        future: ApiService.fetchProductsByCategory(category),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return const Center(child: Text('No products found.'));
          }

          final products = snapshot.data!;
          return ListView.builder(
            itemCount: products.length,
            itemBuilder: (context, index) {
              final product = products[index];
              return ListTile(
                leading: Image.network(
                  product['image'],
                  width: 50,
                  height: 50,
                  fit: BoxFit.cover,
                ),
                title: Text(product['title']),
                subtitle: Text('\$${product['price'].toStringAsFixed(2)}'),
              );
            },
          );
        },
      ),
    );
  }
}
