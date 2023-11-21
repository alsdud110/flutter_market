import 'package:flutter/material.dart';
import 'package:flutter_carrot_market/models/neiborhood_life.dart';
import 'package:flutter_carrot_market/screens/components/image_container.dart';
import 'package:flutter_carrot_market/theme.dart';

class LifeHeader extends StatelessWidget {
  const LifeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      elevation: 0.5,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0)),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          children: [
            const ImageContainer(
              imageUrl: "https://picsum.photos/id/875/200/100?grayscale",
              width: 45,
              height: 45,
              borderRadius: 6,
            ),
            const SizedBox(
              width: 16,
            ),
            Expanded(
              child: Text(
                lifeTitle,
                style: textTheme().bodyLarge,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
