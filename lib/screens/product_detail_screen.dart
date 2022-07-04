import 'package:flutter/material.dart';

class ProductDetailScreen extends StatelessWidget {
  // final String title;
  // const ProductDetailScreen({Key? key, required this.title}) : super(key: key);
  static const routeName = '/product-detail';

  @override
  Widget build(BuildContext context) {
    ModalRoute.of(context)!.settings.arguments as String;
    return Scaffold(
      appBar: AppBar(
        title: Text('title'),
      ),
    );
  }
}
