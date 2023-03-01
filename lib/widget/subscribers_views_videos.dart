import 'package:flutter/material.dart';

Widget subViewVid({required String numText, required String nameText}) {
  return Container(
    height: 90,
    width: 90,
    decoration: BoxDecoration(
        color: Colors.transparent,
        border: Border.all(color: Colors.black, width: 0.5),
        borderRadius: BorderRadius.circular(8)),
    child: Padding(
      padding: const EdgeInsets.all(5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 10),
          Text(
            numText,
            style: const TextStyle(
                color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Text(nameText)
        ],
      ),
    ),
  );
}
