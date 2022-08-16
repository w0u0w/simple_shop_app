import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:simple_shop_app/screens/product_detail_screen.dart';

import '../providers/product.dart';

class ProductItem extends StatelessWidget {
  // final String id;
  // final String title;
  // final String imgUrl;
  //
  // const ProductItem(
  //     {Key? key, required this.id, required this.title, required this.imgUrl})
  //     : super(key: key);

  @override
  Widget build(BuildContext context) {
    final product = Provider.of<Product>(context);
    return ClipRRect(
      borderRadius: BorderRadius.circular(10.0),
      child: GridTile(
        footer: GridTileBar(
          leading: IconButton(
            icon: Icon(
                product.isFavorite ? Icons.favorite : Icons.favorite_border),
            color: Theme.of(context).accentColor,
            onPressed: () {
              product.toggleFavoriteStatus();
            },
          ),
          backgroundColor: Colors.black87,
          title: Text(
            product.title,
            textAlign: TextAlign.center,
          ),
          trailing: IconButton(
            icon: Icon(Icons.add_shopping_cart),
            color: Theme.of(context).accentColor,
            onPressed: () {},
          ),
        ),
        child: GestureDetector(
          onTap: () {
            Navigator.of(context).pushNamed(ProductDetailScreen.routeName,
                arguments: product.id);
          },
          onLongPress: () {
            HapticFeedback.mediumImpact();
          },
          child: Image.network(
            product.imgUrl,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
