import 'package:flutter/material.dart';
import 'package:project11/second.dart';

class demo1 extends StatefulWidget {
  // const demo1({Key? key}) : super(key: key);
  @override
  State<demo1> createState() => _demo1State();
}

class _demo1State extends State<demo1> {
  List<String> stype = [
    "Love Shayari",
    "Sad Shayari",
    "Romantic Shayari",
    "BreakUp Shayari",
    "Bewafa Shayari",
    "Atitude Shayari",
    "Motivational Shayari"
  ];

  List images = [
    "myimage/image1.png",
    "myimage/image2.jpg",
    "myimage/image3.png",
    "myimage/image4.jpg",
    "myimage/image5.png",
    "myimage/image6.png",
    "myimage/image7.jpg"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff89ad6d),
        title: Row(children: [
          Expanded(
              child: Container(
                child: Text(
                  "Love Shayari", /*style: TextStyle(fontWeight:FontWeight.bold)*/
                ),
                margin: EdgeInsets.only(left: 50),
              )),
          Container(
            child: IconButton(onPressed: () {}, icon: Icon(Icons.share)),
          ),
          Container(
            child: IconButton(onPressed: () {}, icon: Icon(Icons.more_vert)),
          )
        ]),
      ),
      body: ListView.separated(
        separatorBuilder: (context, index) {
          return Container(
            height: 6,
            color: Color(0xffb6afaf),
          );
        },
        itemCount: stype.length,
        itemBuilder: (context, index) {
          return ListTile(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return second(index);
                },
              ));
            },

            title: Text(
              stype[index],
              style: TextStyle(
                color: Color(0xff89ad6d),
              ),
            ),
            leading: Image.asset(images[index]),
          );
        },
      ),
    );
  }
}
