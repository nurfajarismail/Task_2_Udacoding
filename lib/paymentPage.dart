import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:task_2/customInputExpiry.dart';
import 'package:task_2/customInputFormatter.dart';

class PaymentPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       resizeToAvoidBottomInset: false,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.purple,
        title: Text(
          "Payment Card Demo",
          textAlign: TextAlign.center,
        ),
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.only(bottom: 20),
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
                padding: EdgeInsets.only(bottom: 20),
                child: TextField(
                  // maxLength: 19,
                  inputFormatters: [
                    FilteringTextInputFormatter.digitsOnly,
                    new CustomInputNumber()
                  ],
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      counterText: "",
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
                padding: EdgeInsets.only(bottom: 20),
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
                padding: EdgeInsets.only(bottom: 20),
                child: TextField(
                  keyboardType: TextInputType.number,
                  inputFormatters: [
                    FilteringTextInputFormatter.digitsOnly,
                    new CustomInputExpiry()
                  ],
                  maxLength: 5,
                  decoration: InputDecoration(
                      counterText: "",
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
      ),
    );
  }
}
