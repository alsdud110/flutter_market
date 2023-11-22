import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_carrot_market/models/neiborhood_life.dart';
import 'package:flutter_carrot_market/screens/components/image_container.dart';
import 'package:flutter_carrot_market/theme.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LifeBody extends StatelessWidget {
  final NeighborhoodLife life;
  const LifeBody({super.key, required this.life});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        border: Border(
          bottom: BorderSide(
            color: Color(0xFFD4D5DD),
            width: 0.5,
          ),
        ),
      ),
      child: Column(
        children: [
          _buildCategoryAndDate(life.category, life.date),
          _buildAuthInfo(
              life.profileImgUri, life.userName, life.location, life.authCount),
          _buildContent(life.content),
          _buildImg(
            life.contentImgUri,
          ),
          const Divider(
            thickness: 1,
            color: Colors.grey,
            height: 1,
          ),
          _buildLikeAndReply(life.commentCount),
        ],
      ),
    );
  }

  Widget _buildCategoryAndDate(String category, String date) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
              decoration: BoxDecoration(
                color: Colors.grey[100],
                shape: BoxShape.rectangle,
                borderRadius: const BorderRadius.all(
                  Radius.circular(4),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: Text(category),
              )),
          Text(date),
        ],
      ),
    );
  }

  Widget _buildAuthInfo(
      String imgUrl, String username, String location, int authCount) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
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
      ),
    );
  }

  Widget _buildContent(String content) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text(
          content,
          maxLines: 3,
          overflow: TextOverflow.ellipsis,
          style: textTheme().bodyLarge,
          textAlign: TextAlign.start,
        ),
      ),
    );
  }

  Widget _buildImg(String imgUrl) {
    return Visibility(
      visible: imgUrl != '',
      child: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16, bottom: 16),
        child: Image.network(
          imgUrl,
          width: double.infinity,
          height: 200,
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget _buildLikeAndReply(int count) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Row(
        children: [
          const Icon(
            FontAwesomeIcons.faceSmile,
            color: Colors.grey,
            size: 22,
          ),
          const SizedBox(
            width: 8,
          ),
          const Text(
            "공감하기",
            style: TextStyle(
              fontSize: 16,
              color: Colors.black,
            ),
          ),
          const SizedBox(
            width: 22,
          ),
          const Icon(
            FontAwesomeIcons.message,
            size: 22,
            color: Colors.grey,
          ),
          const SizedBox(
            width: 8,
          ),
          Text(
            "댓글쓰기 $count",
            style: const TextStyle(
              fontSize: 16,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
