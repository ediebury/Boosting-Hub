import 'package:flutter/material.dart';

Widget likesView({required String numText, required Icon icon}) {
  return Row(
    children: [
      Icon(
        icon.icon,
        size: 30,
      ),
      const SizedBox(
        width: 5,
      ),
      Text(
        numText,
        style: const TextStyle(fontSize: 20),
      )
    ],
  );
}
