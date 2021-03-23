import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List list = [
    "Lab\nNumber ",
    "Lab\nNumber ",
    "Lab\nNumber ",
    "Lab\nNumber ",
    "Lab\nNumber ",
    "Lab\nNumber ",
  ];
  int _index = 0;
  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          "الرئيسية",
          style: TextStyle(
              color: Colors.black, fontSize: 30, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.mic_external_off),
            onPressed: () {},
            color: Colors.black,
          )
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 200,
                width: w,
                child: PageView.builder(
                  itemCount: list.length,
                  controller: PageController(viewportFraction: 0.7),
                  onPageChanged: (int index) => setState(() => _index = index),
                  itemBuilder: (_, i) {
                    return Transform.scale(
                      scale: i == _index ? 1 : 0.88,
                      child: Container(
                        padding: EdgeInsets.all(30),
                        margin: EdgeInsets.only(right: 10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                                image: AssetImage("asset/lab.jpg"),
                                fit: BoxFit.fill)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "${list[i] + (i + 1).toString()}",
                              style: TextStyle(fontSize: 30),
                              textAlign: TextAlign.start,
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
                // ListView.builder(
                //   padding: EdgeInsets.symmetric(vertical: 16.0),
                //   scrollDirection: Axis.horizontal,
                //   physics: BouncingScrollPhysics(),
                //   itemBuilder: (context, index) {

                //   },
                //   itemCount: list.length,
              ),
              doctorWidge("دكتورة فاطمه"),
              doctorWidge("دكتور امير"),
            ],
          ),
        ),
      ),
    );
  }

  Container doctorWidge(String text) {
    return Container(
      margin: EdgeInsets.only(top: 30, bottom: 30, left: 20, right: 20),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 17,
            offset: Offset(3, 3), // changes position of shadow
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Column(
          children: [
            Image(image: AssetImage("asset/doctor.jpg")),
            Container(
              padding: EdgeInsets.only(left: 10, right: 10),
              height: 70,
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: Icon(
                      Icons.share,
                      color: Colors.black,
                    ),
                    onPressed: () {},
                  ),
                  Row(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            text,
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "2021-03-01",
                            style: TextStyle(fontSize: 17, color: Colors.black),
                          ),
                        ],
                      ),
                      SizedBox(width: 10),
                      Container(
                          width: 50,
                          height: 50,
                          decoration: new BoxDecoration(
                              color: Colors.orange,
                              shape: BoxShape.circle,
                              image: new DecorationImage(
                                  fit: BoxFit.fill,
                                  image: AssetImage("asset/logo.png")))),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
