import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  String? character = "latte";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade300,
        leading: IconButton(
            onPressed: () {},
            icon: Icon(Icons.arrow_back_sharp, color: Colors.white)),
        actions: [
          IconButton(
              onPressed: () {}, icon: Icon(Icons.coffee, color: Colors.white)),
          IconButton(
              onPressed: () {},
              icon: Icon(Icons.shopping_basket_outlined, color: Colors.white)),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.25,
            color: Colors.blue.shade300,
          ),
          Padding(
            padding: EdgeInsets.only(top: 20),
          ),
          Text("Velkommen",
              style: TextStyle(fontSize: 20, color: Colors.black)),
          Padding(
            padding: EdgeInsets.only(top: 8),
            child: Text(
              "hvordan har du det?",
              style: TextStyle(fontSize: 15, color: Colors.grey),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8, bottom: 10),
            child: Text("hva vil drikker du?",
                style: TextStyle(fontSize: 21, color: Colors.black)),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Container(height: 1, color: Colors.grey.shade400),
          ),
          Container(
              // alignment: Alignment.topLeft,z
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(20),
                child: Text("Drikke  Menu",
                    style:
                        TextStyle(fontSize: 17, fontWeight: FontWeight.bold)),
              ),
              ListTile(
                title: Text("en kopp te"),
                leading: Radio(
                    activeColor: Colors.blue,
                    value: "latte",
                    groupValue: character,
                    onChanged: (value) => {character = value}),
              ),
              ListTile(
                title: Text("en kopp kaffe"),
                leading: Radio(
                    activeColor: Colors.blue,
                    value: "coffe",
                    groupValue: character,
                    onChanged: (value) => {character = value}),
              ),
              ListTile(
                title: Text("en kopp matcha te"),
                leading: Radio(
                    activeColor: Colors.blue,
                    value: "matcha",
                    groupValue: character,
                    onChanged: (value) => {character = value}),
              )
            ],
          )),
          Padding(
            padding: const EdgeInsets.only(top: 20.0, left: 20, right: 20),
            child: TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Colors.blue.shade300,
                minimumSize: Size(MediaQuery.of(context).size.width, 45),
              ),
              child: Text("Bestille", style: TextStyle(color: Colors.white)),
              onPressed: () {},
            ),
          )
        ],
      ),
    );
  }
}
