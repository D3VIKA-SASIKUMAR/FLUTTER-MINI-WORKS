import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class StoreFake extends StatefulWidget {
  const StoreFake({super.key});

  @override
  State<StoreFake> createState() => _StoreFakeState();
}

class _StoreFakeState extends State<StoreFake> {
  List<dynamic> _products = [];
  bool isLoading = true;

  Future<void> fetchData() async {
    try {
      final response =
          await http.get(Uri.parse('https://fakestoreapi.com/products'));
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
    fetchData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Product List')),
        body: isLoading
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : _products.isEmpty
                ? const Center(
                    child: Text(
                      'No products found.',
                      style: TextStyle(fontSize: 18),
                    ),
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
                          leading: Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Image.network(
                              product['image'],
                              height: 60,
                              width: 60,
                              fit: BoxFit.fill,
                            ),
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
                          trailing: product['rating'] != null &&
                                  product['rating']['rate'] != null
                              ? Text(
                                  "⭐ ${product['rating']['rate']}",
                                  style: const TextStyle(fontSize: 14),
                                )
                              : const Text("No rating"),
                        ),
                      );
                    },
                  ));
  }
}
