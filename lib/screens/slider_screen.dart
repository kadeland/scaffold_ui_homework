import 'package:flutter/material.dart';

class SliderScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
              icon: Icon(Icons.clear, color: Colors.grey.shade600),
              onPressed: () {},
            ),
          ],
          title: Text(
            "Reviews",
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Colors.grey.shade300,
        ),
        body: Column(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [Text("What other customers think")],
            ),
          ],
        ));
  }
}
