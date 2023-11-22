import 'package:flutter/material.dart';
import 'package:flutter_carrot_market/models/recommend_store.dart';
import 'package:flutter_carrot_market/theme.dart';

class StoreItem extends StatelessWidget {
  final RecommendStore store;
  const StoreItem({super.key, required this.store});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 289,
      decoration: BoxDecoration(
        border: Border.all(
          width: 0.3,
          color: Colors.grey,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              _buildClipRRect(topLeft: 10),
              const SizedBox(width: 2),
              _buildClipRRect(topRight: 10),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                          text: "${store.storeName} ",
                          style: textTheme().displayLarge),
                      TextSpan(text: store.location)
                    ],
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  store.description,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: textTheme().titleMedium,
                ),
                const SizedBox(
                  height: 8,
                ),
                Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: "후기 ${store.commentCount}",
                        style:
                            const TextStyle(fontSize: 15, color: Colors.blue),
                      ),
                      TextSpan(
                          text: " - 관심 ${store.likeCount}",
                          style: textTheme().titleMedium),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              margin: const EdgeInsets.only(bottom: 16, left: 16, right: 16),
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey[200],
              ),
              child: Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                        text: '${store.commentUser},',
                        style: const TextStyle(
                            fontSize: 13,
                            color: Colors.black,
                            fontWeight: FontWeight.bold)),
                    TextSpan(
                        text: store.comment,
                        style:
                            const TextStyle(fontSize: 12, color: Colors.black)),
                  ],
                ),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ),
        ],
      ),
    );
  }

  ClipRRect _buildClipRRect({double topLeft = 0, double topRight = 0}) {
    return ClipRRect(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(topLeft),
        topRight: Radius.circular(topRight),
      ),
      child: Image.network(
        store.storeImages[0],
        width: 143,
        height: 100,
        fit: BoxFit.cover,
      ),
    );
  }
}
