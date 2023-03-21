import 'package:flutter/material.dart';
import 'package:pizza_dominos/banner.dart';
import 'package:pizza_dominos/bottomnav.dart';
import 'package:pizza_dominos/seller.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[50],
      floatingActionButton: BottomNavigator(),
      appBar: AppBar(
        backgroundColor: Colors.blue.shade200,
        title: Column(
          children: [
            Row(
              children: [
                const Text(
                  "Deliver Here",
                  style: TextStyle(fontSize: 18),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 8.0),
                  child: Icon(
                    Icons.arrow_drop_down_sharp,
                    size: 30,
                  ),
                ),
              ],
            ),
            const Align(
                alignment: Alignment.topLeft,
                child: Text("Pune", style: TextStyle(fontSize: 14))),
          ],
        ),
        leading: GestureDetector(
          onTap: () {},
          child: const Icon(Icons.menu),
        ),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 30),
            child: GestureDetector(
              onTap: () {},
              child: const Icon(Icons.search),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 50,
                      //width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(0),
                          color: Colors.white),
                      child: Row(
                        children: [
                          const Radio(
                            materialTapTargetSize:
                                MaterialTapTargetSize.shrinkWrap,
                            value: 0,
                            groupValue: null,
                            onChanged: null,
                          ),
                          const Text(
                            "Delivery",
                            style: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.bold),
                          ),
                          const Radio(
                            materialTapTargetSize:
                                MaterialTapTargetSize.shrinkWrap,
                            value: 0,
                            groupValue: null,
                            onChanged: null,
                          ),
                          const Text("Take Away",
                              style: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.bold)),
                          const Radio(
                            materialTapTargetSize:
                                MaterialTapTargetSize.shrinkWrap,
                            value: 0,
                            groupValue: null,
                            onChanged: null,
                          ),
                          const Padding(
                            padding: EdgeInsets.only(right: 10),
                            child: Text("Dine in",
                                style: TextStyle(
                                    fontSize: 12, fontWeight: FontWeight.bold)),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 50,
                      //width: 100,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(0),
                          color: Colors.white),
                      child: Row(
                        children: [
                          const Icon(
                            Icons.train_outlined,
                            size: 30,
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 8.0, right: 8.0),
                            child: Column(
                              children: [
                                const SizedBox(
                                  height: 10,
                                ),
                                const Text("Deliver"),
                                const Text("on Train")
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              //Scrollable menu
              const SizedBox(
                height: 10,
              ),
              //1st banner
              Container(
                height: 150,
                width: MediaQuery.of(context).size.height - 185.0,
                //color: Colors.red,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    banner("assets/offer1.jpeg"),
                    banner("assets/offer2.jpeg"),
                    banner("assets/offer3.jpeg"),
                    banner("assets/offer4.jpeg"),
                    banner("assets/banner.jpeg"),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Column(
                //mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Align(
                    child: Padding(
                      padding: EdgeInsets.only(left: 15.0),
                      child: Text(
                        "Explore ",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                    ),
                    alignment: Alignment.topLeft,
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              //2nd banner
              Padding(
                padding: const EdgeInsets.only(left: 10.0, right: 2.0),
                child: Column(
                  children: [
                    Row(
                      //mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        InkWell(
                          onTap: () {},
                          child: Container(
                            height: 200,
                            width: 200,
                            //alignment: Alignment.center,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(0),
                                color: Colors.white),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                const SizedBox(
                                  height: 20,
                                ),
                                Image.asset(
                                  "assets/2.png",
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                const Text(
                                  "Veg Breads",
                                  style: TextStyle(
                                    fontSize: 17,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 8.0,
                        ),
                        InkWell(
                          onTap: () {},
                          child: Container(
                            height: 200,
                            width: 200,
                            //alignment: Alignment.center,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(0),
                                color: Colors.white),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                const SizedBox(
                                  height: 20,
                                ),
                                Image.asset(
                                  "assets/2.png",
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                const Text(
                                  "Non-Veg Breads",
                                  style: TextStyle(
                                    fontSize: 17,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              //2nd menu
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 10.0, right: 2.0, bottom: 30.0),
                    child: Row(
                      //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: () {},
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(0),
                                color: Colors.white),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset(
                                  "assets/garlic.png",
                                  height: 130,
                                  width: 130,
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(bottom: 8.0),
                                  child: Text(
                                    "others",
                                    style: TextStyle(
                                      fontSize: 15,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 8.0,
                        ),
                        InkWell(
                          onTap: () {},
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(0),
                                color: Colors.white),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset(
                                  "assets/daaru.png",
                                  height: 130,
                                  width: 130,
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(bottom: 8.0),
                                  child: Text(
                                    "Beverage",
                                    style: TextStyle(
                                      fontSize: 15,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 8.0,
                        ),
                        InkWell(
                          onTap: () {},
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(0),
                                color: Colors.white),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset(
                                  "assets/choco.png",
                                  height: 130,
                                  width: 130,
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(bottom: 8.0),
                                  child: Text(
                                    "Dessert",
                                    style: TextStyle(
                                      fontSize: 15,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              //banner

              Container(
                height: 200,
                width: MediaQuery.of(context).size.height - 185.0,
                child: GestureDetector(
                  onTap: () {},
                  child: Image.asset("assets/banner.jpeg"),
                ),
              ),
              const SizedBox(height: 30),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 20.0),
                        child: Text(
                          "offer %",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(right: 10.0),
                        child: Text(
                          "View",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.blue),
                        ),
                      )
                    ],
                  )
                ],
              ),
              //offers menu

              const SizedBox(
                height: 10,
              ),
              Container(
                height: 200,
                width: MediaQuery.of(context).size.height - 185.0,
                //color: Colors.red,
                child: Padding(
                  padding: const EdgeInsets.only(left: 8.0, right: 12.0),
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      banner("assets/offer1.jpeg"),
                      banner("assets/offer2.jpeg"),
                      banner("assets/offer3.jpeg"),
                      banner("assets/offer4.jpeg"),
                      banner("assets/banner.jpeg"),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 30.0,
              ),
              Column(
                children: [
                  const Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: EdgeInsets.only(left: 20.0),
                        child: Text(
                          "Bestsellers",
                          style: TextStyle(
                            fontSize: 22,
                          ),
                        ),
                      )),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              //Best Seller menu
              Container(
                height: 250,
                width: MediaQuery.of(context).size.height - 185.0,
                //color: Colors.red,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    seller("Peppy Paneer", "assets/pizza.jpeg", "Rs 279",
                        "Medium"),
                    seller("Veggie Paradise", "assets/bestseller3.jpeg",
                        "Rs 395", "Medium"),
                    seller("Cheesey", "assets/bestseller2.jpeg", "Rs 275",
                        "Medium"),
                    seller(
                        "Corn cheese", "assets/pizza.jpeg", "Rs 380", "Medium"),
                    seller("Cheesey", "assets/bestseller2.jpeg", "Rs 275",
                        "Medium"),
                    seller("Peppy Paneer", "assets/pizza.jpeg", "Rs 279",
                        "Medium"),
                    seller("Veggie Paradise", "assets/bestseller3.jpeg",
                        "Rs 395", "Medium"),
                    seller("Cheesey", "assets/bestseller2.jpeg", "Rs 275",
                        "Medium"),
                    seller(
                        "Corn cheese", "assets/pizza.jpeg", "Rs 380", "Medium"),
                    seller("Cheesey", "assets/bestseller2.jpeg", "Rs 275",
                        "Medium"),
                  ],
                ),
              ),
              const SizedBox(
                height: 100,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
