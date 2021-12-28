import 'dart:js';

import 'package:class_scheduler_view/screen/editschedule.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  get cards => null;
  PageController _pageController = PageController();

  void initState() {
    super.initState();
    _pageController = PageController(
      initialPage: 0,
      keepPage: true,
      viewportFraction: 1,
    );
  }

  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: Icon(
                Icons.list_outlined,
                size: 34,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: Text(
                'Scheduler',
                style: TextStyle(fontSize: 18),
              ),
            ),
          ],
        ),
      ),
      body: PageView(
        controller: _pageController,
        scrollDirection: Axis.horizontal,
        pageSnapping: true,
        reverse: false,
        onPageChanged: (index) {
          print("$index");
        },
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width,
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Padding(
                padding: EdgeInsets.all(16),
                child: Text(
                  'SCHEDULER',
                  style: TextStyle(fontFamily: 'Poppins', fontSize: 24.0),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  'Senin',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontFamily: 'Poppins', fontSize: 34.0),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  '29-12-2021',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontFamily: 'Poppins'),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(16.0),
                child: Container(
                  child: FittedBox(
                    fit: BoxFit.contain,
                    child: Material(
                      color: Colors.white,
                      elevation: 14.0,
                      borderRadius: BorderRadius.circular(24.0),
                      shadowColor: Color(0xffD2D2DC),
                      child: Row(
                        children: <Widget>[
                          Container(
                            child: DetailPage(),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.64,
                            height: 250,
                            child: ClipRRect(
                              borderRadius: new BorderRadius.circular(24.0),
                              child: Image(
                                fit: BoxFit.contain,
                                alignment: Alignment.topRight,
                                image: NetworkImage(
                                    "https://media.istockphoto.com/photos/blue-book-stack-picture-id1290063471?b=1&k=20&m=1290063471&s=170667a&w=0&h=oLiQoa2Ewu9HKfBJzzvInI41vei54HLoEakxvIJvnsg="),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              TextButton(
                onPressed: () {
                  _pageController.nextPage(
                      duration: Duration(milliseconds: 600),
                      curve: Curves.easeIn);
                },
                child: Text(
                  "NEXT",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                  ),
                ),
              ),
            ]),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Padding(
                padding: EdgeInsets.all(16),
                child: Text(
                  'SCHEDULER',
                  style: TextStyle(fontFamily: 'Poppins', fontSize: 24.0),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  'Selasa',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontFamily: 'Poppins', fontSize: 34.0),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  '30-12-2021',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontFamily: 'Poppins'),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(16.0),
                child: Container(
                  child: FittedBox(
                    fit: BoxFit.contain,
                    child: Material(
                      color: Colors.white,
                      elevation: 14.0,
                      borderRadius: BorderRadius.circular(24.0),
                      shadowColor: Color(0xffD2D2DC),
                      child: Row(
                        children: <Widget>[
                          Container(
                            child: DetailPage2(),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.64,
                            height: 250,
                            child: ClipRRect(
                              borderRadius: new BorderRadius.circular(24.0),
                              child: Image(
                                fit: BoxFit.contain,
                                alignment: Alignment.topRight,
                                image: NetworkImage(
                                    "https://media.istockphoto.com/photos/blue-book-stack-picture-id1290063471?b=1&k=20&m=1290063471&s=170667a&w=0&h=oLiQoa2Ewu9HKfBJzzvInI41vei54HLoEakxvIJvnsg="),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              TextButton(
                onPressed: () {
                  _pageController.nextPage(
                      duration: Duration(milliseconds: 600),
                      curve: Curves.easeIn);
                },
                child: Text(
                  "NEXT",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                  ),
                ),
              ),
              TextButton(
                onPressed: () {
                  _pageController.nextPage(
                      duration: Duration(milliseconds: 600),
                      curve: Curves.easeIn);
                },
                child: Text(
                  "PREVIOUS",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                  ),
                ),
              ),
            ]),
          ),
        ],
      ),
    );
  }
}

Widget DetailPage() {
  return Column(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: <Widget>[
      Padding(
        padding: const EdgeInsets.only(left: 16.0),
        child: Container(
          child: Text(
            'S E N I N',
            textAlign: TextAlign.center,
            style: TextStyle(fontFamily: 'Poppins', fontSize: 35),
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(left: 16.0),
        child: Container(
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                  child: Text("Link Zoom",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.black54, fontSize: 18.0)),
                ),
              ]),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(left: 16.0),
        child: Container(
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                  child: Text("Link Absen",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.black54, fontSize: 18.0)),
                ),
              ]),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(left: 16.0, right: 16.0),
        child: TextButton(
          style: TextButton.styleFrom(
            textStyle: const TextStyle(fontSize: 20),
          ),
          onPressed: () {
            // Navigator.push(context,
            //   MaterialPageRoute(builder: (context)=>EditSchedule()),
            // );
          },
          child: const Text('Edit',
              style: TextStyle(
                  color: Color(0xff43426D),
                  fontFamily: 'Poppins',
                  fontSize: 25)),
        ),
      )
    ],
  );
}
Widget DetailPage2() {
  return Column(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: <Widget>[
      Padding(
        padding: const EdgeInsets.only(left: 16.0),
        child: Container(
          child: Text(
            'S E L A S A',
            textAlign: TextAlign.center,
            style: TextStyle(fontFamily: 'Poppins', fontSize: 35),
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(left: 16.0),
        child: Container(
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                  child: Text("Link Zoom",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.black54, fontSize: 18.0)),
                ),
              ]),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(left: 16.0),
        child: Container(
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                  child: Text("Link Absen",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.black54, fontSize: 18.0)),
                ),
              ]),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(left: 16.0, right: 16.0),
        child: TextButton(
          style: TextButton.styleFrom(
            textStyle: const TextStyle(fontSize: 20),
          ),
          onPressed: () {
            // Navigator.push(context,
            //   MaterialPageRoute(builder: (context)=>EditSchedule()),
            // );
          },
          child: const Text('Edit',
              style: TextStyle(
                  color: Color(0xff43426D),
                  fontFamily: 'Poppins',
                  fontSize: 25)),
        ),
      )
    ],
  );
}