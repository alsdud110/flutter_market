import 'package:flutter/material.dart';
import 'package:flutter_carrot_market/models/chat_message.dart';
import 'package:flutter_carrot_market/screens/chatting/components/chat_container.dart';
import 'package:flutter_carrot_market/screens/components/appbar_preferred_size.dart';

class ChattingScreen extends StatelessWidget {
  const ChattingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("채팅"),
          bottom: bottom(),
        ),
        body: ListView(
          children: List.generate(
            chatMessageList.length,
            (index) => ChatContainer(
              chatMessage: chatMessageList[index],
            ),
          ),
        ));
  }
}
