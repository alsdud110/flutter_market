import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_carrot_market/models/recommend_store.dart';
import 'package:flutter_carrot_market/screens/components/appbar_preferred_size.dart';
import 'package:flutter_carrot_market/screens/near_me/components/bottom_title_icon.dart';
import 'package:flutter_carrot_market/screens/near_me/components/round_border_text.dart';
import 'package:flutter_carrot_market/screens/near_me/components/search_text_field.dart';
import 'package:flutter_carrot_market/screens/near_me/components/store_item.dart';
import 'package:flutter_carrot_market/theme.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NearMeScreen extends StatelessWidget {
  const NearMeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("내 근처"),
        actions: [
          IconButton(
            icon: const Icon(CupertinoIcons.pen),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(CupertinoIcons.bell),
            onPressed: () {},
          ),
        ],
        bottom: bottom(),
      ),
      body: ListView(
        children: [
          const SizedBox(
            height: 10,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: SearchTextField(),
          ),
          SizedBox(
            height: 66,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: searchKeyword.length,
              itemBuilder: (context, index) {
                return RoundBorderText(
                    title: searchKeyword[index], position: index);
              },
            ),
          ),
          Divider(
            color: Colors.grey[100],
            thickness: 10.0,
          ),
          const Padding(
            padding: EdgeInsets.only(top: 30, left: 16),
            child: Wrap(
              alignment: WrapAlignment.start,
              spacing: 22, // spacing은 children 에 있는 위젯들간의 간격을 조정 - horizontal
              runSpacing: 30, // 다음줄로 내려간 위젯들과 윗줄에 있는 위젯 간의 간격 - vertical
              children: [
                BottomTitleIcon(iconData: FontAwesomeIcons.user, title: "구인구직"),
                BottomTitleIcon(
                    iconData: FontAwesomeIcons.penToSquare, title: "과외/클래스"),
                BottomTitleIcon(
                    iconData: FontAwesomeIcons.appleWhole, title: "농수산물"),
                BottomTitleIcon(iconData: FontAwesomeIcons.hotel, title: "부동산"),
                BottomTitleIcon(iconData: FontAwesomeIcons.car, title: "중고차"),
                BottomTitleIcon(
                    iconData: FontAwesomeIcons.chessBishop, title: "전시/행사"),
              ],
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Text(
              "이웃들의 추천 가게",
              style: textTheme().displayMedium,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 288,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: recommendStoreList.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(left: 16),
                  child: StoreItem(store: recommendStoreList[index]),
                );
              },
            ),
          ),
          const SizedBox(
            height: 40,
          ),
        ],
      ),
    );
  }
}
