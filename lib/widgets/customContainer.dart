import 'package:flutter/material.dart';

Widget customContainer() {
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
            for (var i = 0; i < 4; i++)
              Icon(
                Icons.star_border,
                color: Colors.yellow,
              ),
            SizedBox(
              width: 100,
            ),
            Text(
              '1200' + dollarsign,
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
                        'Hotel Name',
                        style: TextStyle(fontSize: 25, color: Colors.white, fontWeight: FontWeight.w800),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Location',
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
              'https://www.princehotels.com/wp-content/uploads/2019/04/aboutslider2-1.jpg',
            ),
            fit: BoxFit.cover,
            scale: 2.0)),
  );
}