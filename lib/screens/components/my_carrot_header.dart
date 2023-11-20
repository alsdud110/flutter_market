import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_carrot_market/theme.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyCarrotHeader extends StatelessWidget {
  const MyCarrotHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0.5,
      margin: EdgeInsets.zero,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(0.0),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
        child: Column(
          children: [
            _buildProfileRow(),
            const SizedBox(
              height: 30,
            ),
            _buildProfileButton(),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _buildRoundTextButton(FontAwesomeIcons.receipt, "판매내역"),
                _buildRoundTextButton(FontAwesomeIcons.shoppingBag, "구매내역"),
                _buildRoundTextButton(FontAwesomeIcons.heart, "관심목록"),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildProfileRow() {
    return Row(
      children: [
        Stack(
          children: [
            SizedBox(
              width: 65,
              height: 65,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(32.5),
                child: Image.network(
                  "https://placeimg.com/200/100/people",
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              child: Container(
                width: 20,
                height: 20,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.grey[100],
                ),
                child: const Icon(
                  Icons.camera_alt_outlined,
                  size: 15,
                ),
              ),
            )
          ],
        ),
        const SizedBox(
          width: 16,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("developer", style: textTheme().displayMedium),
            const SizedBox(
              height: 10,
            ),
            const Text("제기동 #00912"),
          ],
        ),
      ],
    );
  }

  Widget _buildProfileButton() {
    return InkWell(
      onTap: () {},
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: const Color(0xFFD4D5DD),
            width: 1.0,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        height: 45,
        child: Center(child: Text("프로필 보기", style: textTheme().titleMedium)),
      ),
    );
  }

  Widget _buildRoundTextButton(IconData icon, String title) {
    return InkWell(
      onTap: () {},
      child: Column(
        children: [
          Container(
            width: 60,
            height: 60,
            decoration: const BoxDecoration(
                color: Color.fromRGBO(255, 226, 208, 1),
                shape: BoxShape.circle),
            child: Icon(
              icon,
              color: Colors.orange,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(title, style: textTheme().titleMedium),
        ],
      ),
    );
  }
}
