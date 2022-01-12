import 'package:flutter/material.dart';

Widget customContainer(String image, name, location, int price, rating) {
  String dollarsign = r"$";
  return Container(
    height: 150,
    width: 150,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            for (var i = 0; i < rating; i++)
              Icon(
                Icons.star_border,
                color: Colors.yellow,
              ),
            SizedBox(
              width: 100,
            ),
            Text(
              '$price' + dollarsign,
              style: TextStyle(fontSize: 25, color: Colors.black, fontWeight: FontWeight.w800),
            )
          ],
        ),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Opacity(
                opacity: 0.5,
                child: Container(
                  color: Colors.black,
                  height: 70,
                  width: double.infinity,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        name,
                        style: TextStyle(fontSize: 25, color: Colors.white, fontWeight: FontWeight.w800),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        location,
                        style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.w800),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        )
      ],
    ),
    decoration: BoxDecoration(
        image: DecorationImage(
            image: NetworkImage(
              image,
            ),
            fit: BoxFit.cover,
            scale: 2.0)),
  );
}
