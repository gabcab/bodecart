import 'package:bodecart/constants/constants.dart';
import 'package:flutter/material.dart';

class CategoryPage extends StatelessWidget {
  const CategoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: kOffWhite,
        title: const Text('Category Page'),
      ),
      body: const Center(
        child: Text('This is the Category Page'),
      ),
    );
  }
}