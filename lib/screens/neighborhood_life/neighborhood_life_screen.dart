import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_carrot_market/models/neiborhood_life.dart';
import 'package:flutter_carrot_market/screens/components/appbar_preferred_size.dart';
import 'package:flutter_carrot_market/screens/neighborhood_life/components/life_body.dart';
import 'package:flutter_carrot_market/screens/neighborhood_life/components/life_header.dart';

class NeighborhoodLifeScreen extends StatelessWidget {
  const NeighborhoodLifeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: const Text("동네생활"),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(CupertinoIcons.search),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(CupertinoIcons.plus_rectangle_on_rectangle),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(CupertinoIcons.bell),
          ),
        ],
        bottom: bottom(),
      ),
      body: ListView(
        children: [
          const LifeHeader(),
          ...List.generate(
            neighborhoodLifeList.length,
            (index) => Padding(
              padding: const EdgeInsets.only(bottom: 12),
              child: LifeBody(
                life: neighborhoodLifeList[index],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
