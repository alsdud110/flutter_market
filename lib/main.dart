import 'package:flutter/material.dart';
import 'package:flutter_carrot_market/screens/main_screens.dart';
import 'package:flutter_carrot_market/theme.dart';

void main() {
  runApp(const CarrotMarketUI());
}

class CarrotMarketUI extends StatelessWidget {
  const CarrotMarketUI({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "carrot_market_ui",
      debugShowCheckedModeBanner: false,
      home: const MainScreens(),
      theme: theme(),
    );
  }
}
