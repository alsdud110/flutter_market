import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextField(
        cursorColor: Colors.grey,
        decoration: InputDecoration(
          disabledBorder: _buildBorder(),
          enabledBorder: _buildBorder(),
          focusedBorder: _buildBorder(),
          fillColor: Colors.grey[200],
          filled: true,
          prefixIcon: const Icon(
            CupertinoIcons.search,
            color: Colors.grey,
          ),
          contentPadding:
              const EdgeInsets.only(bottom: 15, top: 15, left: 0, right: 0),
          hintText: "제기동 주변 가게를 찾아 보세요.",
          hintStyle: const TextStyle(fontSize: 18),
        ),
      ),
    );
  }

  OutlineInputBorder _buildBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: const BorderSide(
        width: 0.5,
        color: Color(0xFFD4D5DD),
      ),
    );
  }
}
