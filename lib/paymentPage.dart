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
              padding: EdgeInsets.only(bottom: 10),
              child: TextField(
                decoration: InputDecoration(
                    // enabledBorder: UnderlineInputBorder(
                    //   borderSide: BorderSide(color: Colors.purple),
                    // ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.purple),
                    ),
                    // border: UnderlineInputBorder(
                    //     borderSide: BorderSide(color: Colors.purple)),
                    labelStyle: TextStyle(color: Colors.grey),
                    filled: true,
                    fillColor: Colors.grey[300],
                    icon: Icon(
                      Icons.person,
                      color: Colors.grey,
                    ),
                    labelText: "Card Name",
                    hoverColor: Colors.purple,
                    focusColor: Colors.purple),
              ),
            ),
            Container(
              padding: EdgeInsets.only(bottom: 10),
              child: TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    // enabledBorder: UnderlineInputBorder(
                    //   borderSide: BorderSide(color: Colors.purple),
                    // ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.purple),
                    ),
                    // border: UnderlineInputBorder(
                    //     borderSide: BorderSide(color: Colors.purple)),
                    labelStyle: TextStyle(color: Colors.grey),
                    filled: true,
                    fillColor: Colors.grey[300],
                    icon: Icon(
                      Icons.credit_card,
                      color: Colors.grey,
                    ),
                    labelText: "Number"),
              ),
            ),
            Container(
              padding: EdgeInsets.only(bottom: 10),
              child: TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    // enabledBorder: UnderlineInputBorder(
                    //   borderSide: BorderSide(color: Colors.purple),
                    // ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.purple),
                    ),
                    // border: UnderlineInputBorder(
                    //     borderSide: BorderSide(color: Colors.purple)),
                    labelStyle: TextStyle(color: Colors.grey),
                    filled: true,
                    fillColor: Colors.grey[300],
                    icon: Icon(
                      Icons.card_membership,
                      color: Colors.grey,
                    ),
                    labelText: "CVV"),
              ),
            ),
            Container(
              padding: EdgeInsets.only(bottom: 10),
              child: TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    // enabledBorder: UnderlineInputBorder(
                    //   borderSide: BorderSide(color: Colors.purple),
                    // ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.purple),
                    ),
                    // border: UnderlineInputBorder(
                    //     borderSide: BorderSide(color: Colors.purple)),
                    labelStyle: TextStyle(color: Colors.grey),
                    filled: true,
                    fillColor: Colors.grey[300],
                    icon: Icon(
                      Icons.date_range,
                      color: Colors.grey,
                    ),
                    labelText: "Expiry Date"),
              ),
            ),
            FlatButton(
              onPressed: () {},
              child: Text(
                "Pay",
                style: TextStyle(color: Colors.white),
              ),
              color: Colors.blue,
            )
          ],
        ),
      ),
    );
  }
}
