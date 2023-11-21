import 'package:flutter/material.dart';

PreferredSize bottom() {
  return const PreferredSize(
    preferredSize: Size.fromHeight(0.5),
    child: Divider(
      color: Colors.grey,
      thickness: 0.5,
      height: 0.5,
    ),
  );
}
