import 'package:flutter/material.dart';

Widget banner(String imgpath) {
  return Padding(
    padding: const EdgeInsets.only(left: 8.0, right: 2.0),
    child: Container(
      //height: 200,
      //width: 500,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(0), color: Colors.white),
      child: Image.asset(
        imgpath,
        fit: BoxFit.fill,
      ),
    ),
  );
}
