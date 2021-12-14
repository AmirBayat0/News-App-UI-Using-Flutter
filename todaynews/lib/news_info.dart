// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:todaynews/home_page.dart';

class NewsInfo extends StatefulWidget {
  const NewsInfo({Key? key}) : super(key: key);

  @override
  _NewsInfoState createState() => _NewsInfoState();
}

class _NewsInfoState extends State<NewsInfo> {
  List infoNews = [
    {
      "title": "Breaking News",
      "subject": """ Omicron coronavirus variant 
 spreading worldwide.""",
      "img": "assets/brekingnews.jpg",
      "text": "hello every body i like your style",
      "date": "28 Nov"
    },
    {
      "title": "NewYork Times",
      "subject": """ Will the Vaccines Stop Omicron?
 Scientists Are Racing to Find Out.""",
      "img": "assets/newyorkTimes.png",
      "text": "ythrthrthr",
      "date": "28 Nov"
    },
    {
      "title": "Fox News",
      "subject": """ WHO’s COVID-19 variant update 
 warns of ‘high’ global risk""",
      "img": "assets/foxnews.png",
      "text": "hfmhrmngfhfg",
      "date": "27 Nov"
    },
    {
      "title": "BBC News",
      "subject": """ New Covid variant: How worried 
 should we be?""",
      "img": "assets/bbc.png",
      "text": "hfhyjmjthmjfhgm",
      "date": "26 Nov"
    },
    {
      "title": "Yahoo! News",
      "subject": """ South Africa's president calls
 for lifting of Omicron travel bans""",
      "img": "assets/yahoonews.jpg",
      "text": "hnrng",
      "date": "26 Nov"
    },
    {
      "title": "CNN",
      "subject": """ Iran nuclear talks to resume
 in Vienna amid muted hopes""",
      "img": "assets/cnn.png",
      "text": "tjmy",
      "date": "25 Nov"
    },
  ];
  bool _playArea = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TweenAnimationBuilder(
        child: Container(
          decoration: _playArea == false
              ? BoxDecoration(
                  gradient: LinearGradient(
                      colors: [Colors.deepPurple, Colors.pinkAccent],
                      begin: FractionalOffset(0.0, 0.5),
                      end: Alignment.topRight),
                )
              : BoxDecoration(
                  color: Colors.purple[300],
                ),
          child: Column(
            children: [
              _playArea == false
                  ? Container(
                      padding: EdgeInsets.only(top: 40, left: 15, right: 15),
                      width: MediaQuery.of(context).size.width,
                      height: 250,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => MyHomePage()));
                                },
                                child: Icon(
                                  Icons.arrow_back_ios,
                                  size: 20,
                                  color: Colors.white,
                                ),
                              ),
                              Expanded(child: Container()),
                              Icon(
                                Icons.search_outlined,
                                size: 25,
                                color: Colors.white,
                              )
                            ],
                          ),
                          SizedBox(height: 15),
                          Text(
                            "Today",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 40,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            margin: const EdgeInsets.only(
                              left: 5,
                            ),
                            child: Text(
                              "News All Over The World",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  height: 1,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Row(
                            children: [
                              Container(
                                width: 70,
                                height: 23,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color:
                                      Colors.redAccent[700]!.withOpacity(0.9),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.circle_sharp,
                                      size: 15,
                                      color: Colors.white,
                                    ),
                                    SizedBox(
                                      width: 2,
                                    ),
                                    Text(
                                      "Live",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 16),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Container(
                                width: 230,
                                height: 23,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.black.withOpacity(0.6)),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.radio_button_on_outlined,
                                      size: 20,
                                      color: Colors.white,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      "Nov 29 ,2021 02:35 PM",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 16),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    )
                  : Container(
                      width: 350,
                      height: 280,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 25),
                            child: Container(
                              height: 50,
                              padding: const EdgeInsets.only(left: 8),
                              child: Row(
                                children: [
                                  InkWell(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => MyHomePage(),
                                        ),
                                      );
                                    },
                                    child: Icon(
                                      Icons.arrow_back_ios,
                                      size: 22,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Expanded(child: Container()),
                                  Icon(
                                    Icons.info_outlined,
                                    size: 22,
                                    color: Colors.white,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            width: 350,
                            height: 200,
                            color: Colors.red,
                            child: Text(
                              " ${infoNews[0]["text"]}",
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                        ],
                      ),
                    ),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius:
                        BorderRadius.only(topRight: Radius.circular(70)),
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 15,
                          ),
                          Text(
                            "Latest News",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            width: 130,
                          ),
                          InkWell(
                            onTap: () => Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => NewsInfo(),
                              ),
                            ),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.loop,
                                  size: 20,
                                  color: Colors.grey,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "Reload",
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 15,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Expanded(
                        child: _listView(),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        tween: Tween<double>(begin: 0, end: 1),
        duration: Duration(milliseconds: 3000),
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

  _listView() {
    return ListView.builder(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 8),
      itemCount: infoNews.length,
      itemBuilder: (_, int index) {
        return GestureDetector(
          onTap: () {
            debugPrint(index.toString());
            setState(() {
              if (_playArea == false) {
                _playArea = true;
              }
            });
          },
          child: _buildCard(index),
        );
      },
    );
  }

  _buildCard(int index) {
    return Container(
      height: 120,
      child: Column(
        children: [
          Row(
            children: [
              Container(
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(
                      image: AssetImage(
                        infoNews[index]["img"],
                      ),
                      fit: BoxFit.cover),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    infoNews[index]["title"],
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                  // SizedBox(
                  //   height: 10,
                  // ),
                  Padding(
                    padding: EdgeInsets.only(top: 10),
                    child: Text(
                      infoNews[index]["subject"],
                      style: TextStyle(
                        color: Colors.grey[800],
                        fontSize: 14,
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
          SizedBox(
            height: 12,
          ),
          Row(
            children: [
              Container(
                width: 80,
                height: 15,
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Text(
                    " ${infoNews[index]["date"]}",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w700,
                        fontSize: 12),
                  ),
                ),
              ),
              Row(
                children: [
                  for (int i = 0; i < 82; i++)
                    i.isEven
                        ? Container(
                            width: 3,
                            height: 1,
                            decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(2)),
                          )
                        : Container(
                            width: 3,
                            height: 1,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(2),
                            ),
                          )
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
