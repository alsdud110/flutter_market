import 'package:flutter/material.dart';

class RoundBorderText extends StatelessWidget {
  final String title;
  final int position;
  const RoundBorderText(
      {super.key, required this.title, required this.position});

  @override
  Widget build(BuildContext context) {
    var paddingValue = position == 0 ? 16.0 : 8.0;
    return Center(
      child: Padding(
        padding: EdgeInsets.only(left: paddingValue),
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18),
            border: Border.all(
              width: 0.5,
              color: Colors.grey,
            ),
          ),
          child: Text(
            title,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
