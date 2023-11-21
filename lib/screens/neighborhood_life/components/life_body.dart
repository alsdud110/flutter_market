import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_carrot_market/models/neiborhood_life.dart';
import 'package:flutter_carrot_market/screens/components/image_container.dart';
import 'package:flutter_carrot_market/theme.dart';

class LifeBody extends StatelessWidget {
  final NeighborhoodLife life;
  const LifeBody({super.key, required this.life});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            _buildCategoryAndDate(life.category, life.date),
            const SizedBox(
              height: 16,
            ),
            _buildAuthInfo(life.profileImgUri, life.userName, life.location,
                life.authCount),
            _buildContentAndImg(life.content, life.contentImgUri),
            const Divider(),
            _buildLikeAndReply(life.commentCount),
          ],
        ),
      ),
    );
  }

  Widget _buildCategoryAndDate(String category, String date) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
            decoration: BoxDecoration(
              color: Colors.grey[100],
              borderRadius: BorderRadius.circular(15),
            ),
            child: Padding(
              padding: const EdgeInsets.all(4.0),
              child: Text(category),
            )),
        Text(date),
      ],
    );
  }

  Widget _buildAuthInfo(
      String imgUrl, String username, String location, int authCount) {
    return Row(
      children: [
        ImageContainer(
          imageUrl: imgUrl,
          width: 35,
          height: 35,
          borderRadius: 25,
        ),
        const SizedBox(
          width: 10,
        ),
        Text(username, style: textTheme().bodyLarge),
        const SizedBox(
          width: 3,
        ),
        Text(location),
        const SizedBox(
          width: 5,
        ),
        Text("인증 $authCount 회"),
      ],
    );
  }

  Widget _buildContentAndImg(String content, String imgUrl) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            content,
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
            style: textTheme().displayMedium,
          ),
          const SizedBox(
            height: 10,
          ),
          Image.network(
            imgUrl,
            fit: BoxFit.cover,
            width: double.infinity,
            height: 180,
          ),
        ],
      ),
    );
  }

  Widget _buildLikeAndReply(int count) {
    return Row(
      children: [
        const Icon(CupertinoIcons.smiley),
        const SizedBox(
          width: 8,
        ),
        Text(
          "공감하기",
          style: textTheme().bodyLarge,
        ),
        const SizedBox(
          width: 16,
        ),
        const Icon(CupertinoIcons.reply),
        const SizedBox(
          width: 8,
        ),
        Text(
          "댓글쓰기 $count",
          style: textTheme().bodyLarge,
        ),
      ],
    );
  }
}
