import 'package:flutter/material.dart';

class Cartwidget extends StatefulWidget {
  int _value = 1;

  @override
  _CartwidgetState createState() => _CartwidgetState();
}

class _CartwidgetState extends State<Cartwidget> {
  @override
  Widget build(
    BuildContext context,
  ) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10.0, right: 10.0, top: 20.0),
          child: Container(
            height: 170,
            width: 600,
            color: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Row(
                      children: [
                        // 1st row
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Container(
                                width: 80,
                                height: 80,
                                child: Image.asset(
                                  "assets/pizza.jpeg",
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ],
                        ),
                        //2nd row
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              width: 200,
                              //color: Colors.yellow,
                              child: Column(
                                children: [
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Container(
                                        width: 200,
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text(
                                            "Marghretta",
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 18),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Text("Medium | New Hand Tossed",
                                          style: TextStyle(
                                              //fontWeight: FontWeight.bold,
                                              fontSize: 14)),
                                    ],
                                  ),
                                  // SizedBox(
                                  //   height: 20,
                                  // ),
                                  SizedBox(
                                    height: 20.0,
                                  ),

                                  Column(
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 8.0),
                                        child: Row(
                                          children: [
                                            Container(
                                              height: 30,
                                              width: 30,
                                              alignment: Alignment.topCenter,
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                                shape: BoxShape.rectangle,
                                                border: Border.all(
                                                    color: Colors.black,
                                                    width: 0.5),
                                              ),
                                              child: Align(
                                                alignment: Alignment.center,
                                                //child: Text("sa"),
                                                child: IconButton(
                                                    padding: EdgeInsets.all(0),
                                                    icon: Icon(
                                                      Icons.delete,
                                                    ),

                                                    //iconSize: 20,
                                                    onPressed: null),
                                              ),
                                            ),
                                            Container(
                                                height: 30,
                                                width: 30,
                                                alignment: Alignment.center,
                                                decoration: BoxDecoration(
                                                    color: Colors.white,
                                                    shape: BoxShape.rectangle,
                                                    border: Border.all(
                                                        color: Colors.black,
                                                        width: 0.5)),
                                                child: Text("2")),
                                            Container(
                                              height: 30,
                                              width: 30,
                                              alignment: Alignment.center,
                                              decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  shape: BoxShape.rectangle,
                                                  border: Border.all(
                                                      color: Colors.black,
                                                      width: 0.5)),
                                              child: Align(
                                                alignment: Alignment.center,
                                                child: IconButton(
                                                    padding: EdgeInsets.all(0),
                                                    icon: Icon(Icons.add),
                                                    onPressed: null),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        //3rd row
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            SizedBox(
                              height: 30.0,
                            ),
                            Container(
                              alignment: Alignment.bottomRight,
                              width: 100,
                              height: 100,
                              // color: Colors.orange,
                              child: Padding(
                                padding: const EdgeInsets.only(right: 8.0),
                                child: Text(
                                  "Rs 600.00",
                                  style: TextStyle(
                                      //fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 8, right: 8),
                          child: Container(
                              width: 600,
                              height: 40,
                              color: Colors.grey[300],
                              child: DropdownButtonHideUnderline(
                                child: DropdownButton(
                                  value: widget._value,
                                  items: [
                                    DropdownMenuItem(
                                      child: Padding(
                                        padding: const EdgeInsets.all(12.0),
                                        child: Text("Details"),
                                      ),
                                      value: 1,
                                    ),
                                    DropdownMenuItem(
                                      child: Padding(
                                        padding: const EdgeInsets.all(12.0),
                                        child: Text("Mo Cheese"),
                                      ),
                                      value: 2,
                                    )
                                  ],
                                  onChanged: (value) {
                                    setState(() {
                                      widget._value = value!;
                                    });
                                  },
                                ),
                              )),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
