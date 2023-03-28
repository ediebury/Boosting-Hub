// ignore_for_file: sized_box_for_whitespace, sort_child_properties_last, avoid_unnecessary_containers

import 'package:flutter/material.dart';

class OrderPage extends StatefulWidget {
  const OrderPage({super.key});

  @override
  State<OrderPage> createState() => _OrderPageState();
}

final List<String> category = [
  "Youtube",
  "Twitter",
];
String? selected;
final List<String> service = [
  "likes",
  "Followers or Subscribers",
  "Page Engagement",
  "Ad Clicks",
  "Ad Views",
  "Watch Hours",
  "Comments"
];
String? selected1;
final List<String> payment = [
  "Visa",
  "Mastercard",
  "PayPal",
  "Vodafone Cash",
  "MTN Mobile Money",
  "AirtelTigo Money",
];
String? selected2;

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
          const SizedBox(
            height: 10,
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
          Container(
            height: 75,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                10,
              ),
            ),
            child: DropdownButtonFormField(
                hint: const Text("Choose a category"),
                items: category
                    .map((e) => DropdownMenuItem(
                          child: Text(e),
                          value: e,
                        ))
                    .toList(),
                value: selected,
                onChanged: (val) {
                  setState(() {
                    selected = val;
                  });
                }),
          ),
          const SizedBox(
            height: 10,
          ),
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
            child: DropdownButtonFormField(
                hint: const Text("Choose a Service"),
                items: service
                    .map((e) => DropdownMenuItem(
                          child: Text(e),
                          value: e,
                        ))
                    .toList(),
                value: selected1,
                onChanged: (val) {
                  setState(() {
                    selected1 = val;
                  });
                }),
          ),
          const SizedBox(
            height: 10,
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
          const SizedBox(
            height: 10,
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
            width: 200,
            child: TextFormField(
              decoration: const InputDecoration(
                hintText: "Total Charge: \$20.00",
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
          DropdownButtonFormField(
              hint: const Text("Pay With Any"),
              items: payment
                  .map((e) => DropdownMenuItem(
                        child: Text(e),
                        value: e,
                      ))
                  .toList(),
              value: selected2,
              onChanged: (val) {
                setState(() {
                  selected2 = val;
                });
              }),
        ],
      ),
    ));
  }
}
