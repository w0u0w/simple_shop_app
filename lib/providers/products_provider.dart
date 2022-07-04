import 'package:flutter/material.dart';
import '../models/product.dart';

class Products with ChangeNotifier {
  final List<Product> _items = [
    Product(
      id: '1',
      title: 'Naruto, Vol. 1 : Volume 1',
      description:
          ' Growing up in a village of ninja, Uzumaki Naruto had no idea he was shunned because inside him was the spirit of the demon fox who destroyed their village over a decade ago! ',
      price: 19.99,
      imgUrl:
          'https://secretgalaxy.ru/thumb/2/udTxPKrZJ7Uo26GNTxvXEQ/350r350/d/oblozhka_naruto_1.jpg',
    ),
    Product(
      id: '2',
      title: 'Chainsaw Man, Vol. 1 : Volume 1',
      description: 'Broke young man + chainsaw dog demon = Chainsaw Man',
      price: 9.99,
      imgUrl:
          'https://static.insales-cdn.com/images/products/1/6251/477952107/F0m6EEj9pbA.jpg',
    ),
    Product(
      id: '3',
      title:
          'Jojo\'s Bizarre Adventure : Part 1--Phantom Blood, Vol. 1: Volume 1',
      description:
          'Warm and cozy - exactly what you need for the winter.A multigenerational tale of the heroic Joestar family and their never-ending battle against evil',
      price: 19.99,
      imgUrl:
          'https://i5.walmartimages.com/asr/23425064-1ec7-4cc1-a54f-76803e6caf83_1.31825ff696e8362202e3fd1d5a9c208f.jpeg?odnHeight=612&odnWidth=612&odnBg=FFFFFF',
    ),
    Product(
      id: '4',
      title: 'Spy X Family, Vol. 5 : Volume 5',
      description:
          'An action-packed comedy about a fake family that includes a spy, an assassin and a telepath',
      price: 9.99,
      imgUrl:
          'https://images-na.ssl-images-amazon.com/images/I/716tJmz71WL.jpg',
    ),
  ];

  List<Product> get items {
    return [..._items];
  }

  void addProduct() {
    // _items.add(value);
    notifyListeners();
  }
}
