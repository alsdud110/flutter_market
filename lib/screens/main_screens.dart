import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_carrot_market/screens/chatting/chatting_screen.dart';
import 'package:flutter_carrot_market/screens/home/home_screen.dart';
import 'package:flutter_carrot_market/screens/my_carrot/my_carrot_screen.dart';
import 'package:flutter_carrot_market/screens/near_me/near_me_screen.dart';
import 'package:flutter_carrot_market/screens/neighborhood_life/neighborhood_life_screen.dart';

class MainScreens extends StatefulWidget {
  const MainScreens({super.key});

  @override
  State<MainScreens> createState() => _MainScreensState();
}

class _MainScreensState extends State<MainScreens> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectedIndex,
        children: const [
          HomeScreen(),
          NeighborhoodLifeScreen(),
          NearMeScreen(),
          ChattingScreen(),
          MyCarrotScreen(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black54,
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed, // 3개 이상의 item을 표시할 때
        items: const [
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.home),
            label: "홈",
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.square_on_square),
            label: "동네생활",
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.placemark),
            label: "내 근처",
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.chat_bubble),
            label: "채팅",
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.person),
            label: "나의 당근",
          ),
        ],
        onTap: (value) => setState(() {
          _selectedIndex = value;
        }),
        currentIndex: _selectedIndex,
      ),
    );
  }
}
