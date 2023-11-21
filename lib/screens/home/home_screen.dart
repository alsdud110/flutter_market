import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_carrot_market/models/product.dart';
import 'package:flutter_carrot_market/screens/components/appbar_preferred_size.dart';
import 'package:flutter_carrot_market/screens/components/pruduct_item.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Row(
          children: [
            Text("제기동"),
            SizedBox(
              width: 5,
            ),
            Icon(
              CupertinoIcons.chevron_down,
              size: 15,
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: const Icon(CupertinoIcons.search),
            onPressed: () {},
          ),
          IconButton(
              icon: const Icon(CupertinoIcons.list_dash), onPressed: () {}),
          IconButton(icon: const Icon(CupertinoIcons.bell), onPressed: () {})
        ],
        bottom: bottom(),
      ),
      body: ListView.separated(
        itemBuilder: ((context, index) {
          return ProductItem(product: productList[index]);
        }),
        separatorBuilder: (context, index) {
          return const Divider(
            color: Colors.grey,
            indent: 16,
            endIndent: 16,
            height: 0,
          );
        },
        itemCount: productList.length,
      ),
    );
  }
}
