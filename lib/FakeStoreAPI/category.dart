import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_mini/FakeStoreAPI/products.dart';

import 'package:http/http.dart' as http;

class CategoriesPage extends StatefulWidget {
  const CategoriesPage({Key? key}) : super(key: key);

  @override
  State<CategoriesPage> createState() => _CategoriesPageState();
}

class _CategoriesPageState extends State<CategoriesPage> {
  List<dynamic> _categories = [];
  bool isLoading = true;

  Future<void> fetchCategories() async {
    try {
      final response = await http.get(
        Uri.parse('https://fakestoreapi.com/products/categories'),
      );

      if (response.statusCode == 200) {
        final data = json.decode(response.body);
        setState(() {
          _categories = List<dynamic>.from(data);
          isLoading = false;
        });
      } else {
        throw Exception('Failed to load categories');
      }
    } catch (e) {
      setState(() {
        isLoading = false;
      });
      print('Error fetching categories: $e');
    }
  }

  @override
  void initState() {
    super.initState();
    fetchCategories();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 49, 36, 31),
      appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 30, 68, 32),
          title: const Text(
            'Categories',
            style: TextStyle(color: Colors.white),
          )),
      body: isLoading
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : _categories.isEmpty
              ? const Center(
                  child: Text('No categories found.'),
                )
              : ListView.builder(
                  itemCount: _categories.length,
                  itemBuilder: (context, index) {
                    final categoryy = _categories[index];

                    return Card(
                      margin: const EdgeInsets.symmetric(
                        vertical: 10,
                        horizontal: 5,
                      ),
                      child: ListTile(
                        title: Text(
                          categoryy,
                          style: const TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  ProductsPage(category: categoryy),
                            ),
                          );
                        },
                      ),
                    );
                  },
                ),
    );
  }
}
