// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace, division_optimization

import 'package:flutter/material.dart';
import 'news_info.dart';
import 'package:get/get.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

//$$$$$$$$$$$$$$$$$$$$$$$$$
//** Instagram :
//  ** @CodeWithFlexz
// ----------------
//** Github :
//  ** AmirBayat0
// ----------------
//** Youtube :
//  ** Programming with Flexz
//$$$$$$$$$$$$$$$$$$$$$$$$$

class _MyHomePageState extends State<MyHomePage> {
  List info = [
    {"title": "Hot Bundle", "img": "assets/hotbundel.jpg"},
    {"title": "Featured", "img": "assets/featured.jpg"},
    {"title": "News", "img": "assets/news.jpg"},
    {"title": "Sport", "img": "assets/sport.jpg"},
    {"title": "technology", "img": "assets/tec.jpg"},
    {"title": "Politics", "img": "assets/Politics.jpg"},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfffefdfd),
      body: TweenAnimationBuilder(
        child: Container(
          padding: const EdgeInsets.only(top: 50, left: 20, right: 20),
          child: Column(
            children: [
              Row(
                // ignore:
                children: [
                  Text(
                    "TodayNews",
                    style: TextStyle(
                        fontSize: 30,
                        color: Colors.black,
                        fontWeight: FontWeight.w700),
                  ),
                  Expanded(child: Container()),
                  Icon(
                    Icons.arrow_back_ios,
                    size: 22.0,
                    color: Colors.black,
                  ),
                  SizedBox(
                    width: 5.0,
                  ),
                  Icon(
                    Icons.calendar_today,
                    size: 22.0,
                    color: Colors.black,
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: 22.0,
                    color: Colors.black,
                  ),
                ],
              ),
              SizedBox(
                height: 10.0,
              ),
              Row(
                children: [
                  Padding(padding: const EdgeInsets.only(left: 4.0)),
                  Text(
                    "For You",
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.black87,
                        fontWeight: FontWeight.w700),
                  ),
                  Expanded(child: Container()),
                  Text(
                    "Details",
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.blue,
                        fontWeight: FontWeight.normal),
                  ),
                  SizedBox(
                    width: 2,
                  ),
                  InkWell(
                    onTap: () {
                      Get.to(() => NewsInfo());
                    },
                    child: Icon(
                      Icons.arrow_forward,
                      size: 20.0,
                      color: Colors.grey[900],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 150,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [Color(0xff6842ee), Color(0xff8362fd)],
                      begin: Alignment.bottomLeft,
                      end: Alignment.centerRight),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10.0),
                    bottomLeft: Radius.circular(10.0),
                    bottomRight: Radius.circular(10.0),
                    topRight: Radius.circular(80.0),
                  ),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(5, 10),
                      blurRadius: 30,
                      color: Colors.black.withOpacity(0.2),
                    ),
                  ],
                ),
                child: Container(
                  padding: const EdgeInsets.only(left: 18, top: 10, right: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Top News",
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                            fontWeight: FontWeight.normal),
                      ),
                      Text(
                        "Browse The Top",
                        style: TextStyle(
                            fontSize: 28,
                            color: Colors.white,
                            fontWeight: FontWeight.normal),
                      ),
                      Text(
                        "News Stories",
                        style: TextStyle(
                            fontSize: 28,
                            color: Colors.white,
                            fontWeight: FontWeight.normal),
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.info_outline,
                                color: Colors.white,
                                size: 20,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "News Breaking",
                                style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.white,
                                    fontWeight: FontWeight.normal),
                              ),
                            ],
                          ),
                          Expanded(child: Container()),
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(80),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.2),
                                    blurRadius: 10,
                                    offset: Offset(4, 8),
                                  )
                                ]),
                            child: Icon(
                              Icons.explore_rounded,
                              color: Colors.white,
                              size: 50,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                height: 90,
                width: MediaQuery.of(context).size.width,
                margin: const EdgeInsets.only(top: 20),
                child: Stack(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 78,
                      decoration: BoxDecoration(
                          color: Colors.black38,
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                            image: AssetImage("assets/card.png"),
                            fit: BoxFit.fill,
                          ),
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 10,
                              offset: Offset(1, 5),
                              color: Colors.black.withOpacity(0.2),
                            ),
                            BoxShadow(
                              blurRadius: 10,
                              offset: Offset(-1, -5),
                              color: Colors.black.withOpacity(0.2),
                            ),
                          ]),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 20, top: 7),
                      height: 65,
                      width: 65,
                      decoration: BoxDecoration(
                        color: Colors.black38,
                        borderRadius: BorderRadius.circular(50),
                        image: DecorationImage(
                          image: AssetImage("assets/newyorkTimes.png"),
                          fit: BoxFit.fill,
                        ),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 10,
                            offset: Offset(1, 5),
                            color: Colors.black.withOpacity(0.2),
                          ),
                          BoxShadow(
                            blurRadius: 10,
                            offset: Offset(-1, -5),
                            color: Colors.black.withOpacity(0.2),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 100, top: 10),
                      height: 60,
                      width: 210,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "The NewYork Times",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Container(
                            margin: const EdgeInsets.only(left: 5),
                            child: Text(
                              "The Inflation Miscalculation Complicating Biden’s Agenda...",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  height: 1,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  Text(
                    'DISCOVER',
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Expanded(
                child: OverflowBox(
                  maxWidth: MediaQuery.of(context).size.width,
                  child: MediaQuery.removePadding(
                    removeTop: true,
                    context: context,
                    child: ListView.builder(
                      itemCount: (info.length.toDouble() / 2).toInt(), //2
                      itemBuilder: (_, i) {
                        int a = 2 * i; //0 ,2
                        int b = 2 * i + 1; //1 , 3
                        return Row(
                          children: [
                            Container(
                              padding: EdgeInsets.only(
                                  bottom: 20), //text of List View
                              height: 135,
                              width:
                                  (MediaQuery.of(context).size.width - 90) / 2,
                              margin: EdgeInsets.only(
                                  left: 30, bottom: 15, top: 15),
                              decoration: BoxDecoration(
                                color: Colors.white70,
                                borderRadius: BorderRadius.circular(15),
                                image: DecorationImage(
                                  image: AssetImage(info[a]["img"]),
                                ),
                                boxShadow: [
                                  BoxShadow(
                                      blurRadius: 5,
                                      offset: Offset(5, 5),
                                      color: Colors.black.withOpacity(0.1)),
                                  BoxShadow(
                                      blurRadius: 5,
                                      offset: Offset(-5, -5),
                                      color: Colors.black.withOpacity(0.1)),
                                ],
                              ),
                              child: Center(
                                child: Align(
                                  alignment: Alignment.bottomLeft,
                                  child: Text(
                                    '  ${info[a]["title"]}',
                                    style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(
                                  bottom: 20), //text of List View
                              margin: EdgeInsets.only(
                                  left: 30, bottom: 15, top: 15),
                              height: 135,
                              width:
                                  (MediaQuery.of(context).size.width - 90) / 2,
                              decoration: BoxDecoration(
                                color: Colors.white70,
                                borderRadius: BorderRadius.circular(15),
                                image: DecorationImage(
                                  image: AssetImage(info[b]["img"]),
                                ),
                                boxShadow: [
                                  BoxShadow(
                                      blurRadius: 5,
                                      offset: Offset(5, 5),
                                      color: Colors.black.withOpacity(0.1)),
                                  BoxShadow(
                                      blurRadius: 5,
                                      offset: Offset(-5, -5),
                                      color: Colors.black.withOpacity(0.1)),
                                ],
                              ),
                              child: Center(
                                child: Align(
                                  alignment: Alignment.bottomLeft,
                                  child: Text(
                                    '  ${info[b]["title"]}',
                                    style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        );
                      },
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        tween: Tween<double>(begin: 0, end: 1),
        duration: Duration(milliseconds: 1500),
        builder: (BuildContext context, double _value, child) {
          return Opacity(
            opacity: _value,
            child: Padding(
              padding: EdgeInsets.only(top: _value * 1),
              child: child,
            ),
          );
        },
      ),
    );
  }
}
