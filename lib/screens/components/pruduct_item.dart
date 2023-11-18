import 'package:flutter/cupertino.dart';
import 'package:flutter_carrot_market/models/product.dart';
import 'package:flutter_carrot_market/screens/components/product_detail.dart';

class ProductItem extends StatelessWidget {
  final Product product;
  const ProductItem({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 135,
      padding: const EdgeInsets.all(16),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: Image.network(
              product.urlToImage,
              width: 115,
              height: 115,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          ProductDetail(product: product),
        ],
      ),
    );
  }
}
