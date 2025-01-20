import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ProductsPage extends StatefulWidget {
  final String category;
  const ProductsPage({Key? key, required this.category}) : super(key: key);

  @override
  State<ProductsPage> createState() => _ProductsPageState();
}

class _ProductsPageState extends State<ProductsPage> {
  List<dynamic> _products = [];
  bool isLoading = true;
//fetchProducts Method: Fetches products from the API based on the selected category.
//Uri.parse: Constructs the URL dynamically by injecting the category using widget.category.
//Example: For the "electronics" category, the URL becomes:
//https://fakestoreapi.com/products/category/electronics.
  Future<void> fetchProducts() async {
    try {
      final response = await http.get(
        Uri.parse(
            'https://fakestoreapi.com/products/category/${widget.category}'),
      );

      if (response.statusCode == 200) {
        final data = json.decode(response.body);
        setState(() {
          _products = data;
          isLoading = false;
        });
      } else {
        throw Exception('Failed to load products');
      }
    } catch (e) {
      setState(() {
        isLoading = false;
      });
      print('Error fetching products: $e');
    }
  }

  @override
  void initState() {
    super.initState();
    fetchProducts();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('${widget.category} Products')),
      body: isLoading
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : _products.isEmpty
              ? const Center(
                  child: Text('No products found.'),
                )
              : ListView.builder(
                  itemCount: _products.length,
                  itemBuilder: (context, index) {
                    final product = _products[index];
                    return Card(
                      margin: const EdgeInsets.symmetric(
                        vertical: 5,
                        horizontal: 10,
                      ),
                      child: ListTile(
                        leading: Image.network(
                          product['image'],
                          height: 50,
                          width: 50,
                          fit: BoxFit.cover,
                        ),
                        title: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              product['title'],
                              style: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(height: 4),
                            Text(
                              product['description'],
                              style: const TextStyle(
                                  fontSize: 14,
                                  color: Color.fromARGB(255, 71, 70, 70)),
                              maxLines: 3,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ],
                        ),
                        subtitle: Text(
                          "\$${product['price'].toString()}",
                          style: const TextStyle(color: Colors.green),
                        ),
                        onTap: () {
                          print('Selected product: ${product['title']}');
                        },
                      ),
                    );
                  },
                ),
    );
  }
}
