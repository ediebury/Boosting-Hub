// ignore_for_file: sized_box_for_whitespace, sort_child_properties_last, avoid_unnecessary_containers

import 'dart:html';

import 'package:flutter/material.dart';

class OrderPage extends StatefulWidget {
  const OrderPage({super.key});

  @override
  State<OrderPage> createState() => _OrderPageState();
}

int? selected;

class _OrderPageState extends State<OrderPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.only(
        left: 8.0,
        right: 8.0,
        top: 40,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Order",
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Text(
            "Category",
            style: TextStyle(
              fontSize: 20,
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          DropdownButtonFormField(
              hint: Text("Choose a category"),
              items: [
                DropdownMenuItem(child: Text("Youtube")),
              ],
              value: selected,
              onChanged: (val) {
                setState(() {
                  selected = val;
                });
              }),
          const Text(
            "Service",
            style: TextStyle(
              fontSize: 20,
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Container(
            height: 75,
            width: double.infinity,
            child: ElevatedButton.icon(
              onPressed: () {},
              icon: const Icon(
                Icons.arrow_drop_down,
                size: 30,
              ),
              label: const Text('Choose a Service'),
            ),
          ),
          const Text(
            "Link",
            style: TextStyle(
              fontSize: 20,
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Container(
            height: 75,
            width: double.infinity,
            child: TextFormField(
              decoration: const InputDecoration(
                hintText: "https://boostinghub.com",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                  borderSide: BorderSide(
                    style: BorderStyle.solid,
                    width: 10,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ),
          const Text(
            "Quantity",
            style: TextStyle(
              fontSize: 15,
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Container(
            height: 75,
            width: double.infinity,
            child: TextFormField(
              decoration: const InputDecoration(
                hintText: "Input your quantity",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                  borderSide: BorderSide(
                    style: BorderStyle.solid,
                    width: 10,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Container(
            height: 75,
            width: double.infinity,
            child: TextFormField(
              decoration:
                  const InputDecoration(hintText: "Total Charge: \$20.00"),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Container(
            height: 75,
            width: double.infinity,
            color: Colors.transparent,
            child: ElevatedButton.icon(
              onPressed: () {},
              icon: const Icon(
                Icons.arrow_drop_down,
                size: 24.0,
              ),
              label: const Text('Pay with any'),
            ),
          ),
        ],
      ),
    ));
  }
}
