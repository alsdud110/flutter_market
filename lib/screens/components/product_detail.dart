import 'package:flutter/cupertino.dart';
import 'package:flutter_carrot_market/models/product.dart';
import 'package:flutter_carrot_market/theme.dart';
import 'package:intl/intl.dart';

class ProductDetail extends StatelessWidget {
  final Product product;
  const ProductDetail({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(product.title, style: textTheme().bodyLarge),
          const SizedBox(
            height: 4,
          ),
          Text("${product.address} - ${product.publishedAt}"),
          const SizedBox(
            height: 4,
          ),
          Text("${numberFormat(product.price)}원",
              style: textTheme().bodyMedium),
          const Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Visibility(
                visible: product.commentsCount > 0,
                child: _buildIcons(
                  product.heartCount,
                  CupertinoIcons.chat_bubble_2,
                ),
              ),
              const SizedBox(
                width: 8,
              ),
              Visibility(
                visible: product.heartCount > 0,
                child: _buildIcons(
                  product.commentsCount,
                  CupertinoIcons.heart,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  String numberFormat(String price) {
    final formatter = NumberFormat("#,###");
    return formatter.format(int.parse(price));
  }

  Widget _buildIcons(int count, IconData myIcon) {
    return Row(
      children: [
        Icon(myIcon, size: 14),
        const SizedBox(
          width: 4,
        ),
        Text("$count"),
      ],
    );
  }
}
