import 'package:flutter/material.dart';
import 'package:pizza_dominos/shopcart.dart';

class BottomNavigator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 35),
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 80,
              width: 330,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(210),
                  color: Colors.blueAccent.shade400),
              child: Padding(
                padding: const EdgeInsets.only(left: 25.0, right: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        IconButton(
                            padding: EdgeInsets.zero,
                            icon: Icon(
                              Icons.home,
                              color: Colors.white,
                              size: 30,
                            ),
                            onPressed: () {}),
                        Text("Home", style: TextStyle(color: Colors.white))
                      ],
                    ),
                    Container(
                      color: Colors.black26,
                      height: 30,
                      width: 2,
                    ),
                    Column(
                      children: [
                        Align(
                          alignment: Alignment.center,
                          child: IconButton(
                              padding: EdgeInsets.zero,
                              icon: Icon(
                                Icons.people,
                                color: Colors.white,
                                size: 30,
                              ),
                              onPressed: () {}),
                        ),
                        Text(
                          "GC",
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                    Container(
                      color: Colors.black26,
                      height: 30,
                      width: 2,
                    ),
                    Column(
                      children: [
                        IconButton(
                            padding: EdgeInsets.all(0),
                            icon: Icon(
                              Icons.shopping_cart,
                              color: Colors.white,
                              size: 30,
                            ),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (_) => CartPage()));
                            }),
                        Text("Shop", style: TextStyle(color: Colors.white))
                      ],
                    ),
                  ],
                ),
              ),
            ),
            //
          ),
        ),
      ],
    );
  }
}
