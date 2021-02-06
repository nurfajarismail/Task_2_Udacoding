import 'package:flutter/material.dart';

class PaymentPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.purple,
        title: Text(
          "Payment Card Demo",
          textAlign: TextAlign.center,
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Container(
              child: TextField(
                decoration: InputDecoration(
                    labelStyle: TextStyle(color: Colors.grey),
                    filled: true,
                    fillColor: Colors.grey[300],
                    icon: Icon(
                      Icons.person,
                      color: Colors.grey,
                    ),
                    labelText: "Card Name"),
              ),
            ),
            Container(
              child: TextField(
                decoration: InputDecoration(labelText: "Number"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
