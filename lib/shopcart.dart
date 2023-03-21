import 'package:flutter/material.dart';
import 'package:pizza_dominos/cartwidget.dart';
import 'package:pizza_dominos/seller.dart';

class CartPage extends StatefulWidget {
  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  //int _value = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[50],
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70.0),
        child: AppBar(
          backgroundColor: Colors.blue[800],
          actions: [
            Expanded(
              flex: 7,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 50, top: 10),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Text(
                            "3 items in shop",
                            style: TextStyle(
                                //fontWeight: FontWeight.bold,
                                fontSize: 18),
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.only(top: 5),
                          child: Text("You pay: Rs 490",
                              style: TextStyle(fontSize: 14)),
                        ),
                        //Text("rs 490"),
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              width: 80,
            ),
            Expanded(
              flex: 3,
              child: Row(
                children: [
                  Container(
                    height: 30,
                    width: 80,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(0),
                        border: Border.all(color: Colors.white)),
                    child: Center(
                      child: Text(
                        "Edit",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      body: ListView(
        children: [
          Cartwidget(),
          Cartwidget(),
          SizedBox(
            height: 20,
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    left: 10.0, top: 10.0, right: 10.0, bottom: 3.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Frequently Buyed Together",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "EXPLORE MENU",
                      style: TextStyle(
                          color: Colors.blue, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 250,
            width: MediaQuery.of(context).size.height - 185.0,
            //color: Colors.red,
            child: Padding(
              padding: const EdgeInsets.all(3.0),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  seller(
                      "Peppy Paneer", "assets/pizza.jpeg", "Rs 279", "Medium"),
                  seller("Veggie Paradise", "assets/bestseller3.jpeg", "Rs 395",
                      "Medium"),
                  seller(
                      "Cheesey", "assets/bestseller2.jpeg", "Rs 275", "Medium"),
                  seller(
                      "Corn cheese", "assets/pizza.jpeg", "Rs 380", "Medium"),
                  seller(
                      "Cheesey", "assets/bestseller2.jpeg", "Rs 275", "Medium"),
                  seller(
                      "Peppy Paneer", "assets/pizza.jpeg", "Rs 279", "Medium"),
                  seller("Veggie Paradise", "assets/bestseller3.jpeg", "Rs 395",
                      "Medium"),
                  seller(
                      "Cheesee", "assets/bestseller2.jpeg", "Rs 275", "Medium"),
                  seller(
                      "Corn cheese", "assets/pizza.jpeg", "Rs 380", "Medium"),
                  seller(
                      "Cheesey", "assets/bestseller2.jpeg", "Rs 275", "Medium"),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
                height: 180,
                width: 600,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(0),
                  color: Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                  child: Column(
                    //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 20.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("All Total"),
                                Text("Rs 489"),
                              ],
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Discount"),
                              Text("0.00"),
                            ],
                          )
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Taxes and Charges"),
                              Text("Rs 92"),
                            ],
                          )
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Divider(
                        color: Colors.grey,
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Grand Total"),
                              Text("Rs 490"),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                )),
          ),
        ],
      ),
    );
  }
}

// ignore: must_be_immutable

