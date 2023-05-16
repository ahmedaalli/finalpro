import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:loginui/algebra.dart';
import 'package:loginui/grade7.dart';
import 'package:loginui/grade8.dart';
import 'package:loginui/grade9.dart';
import 'package:loginui/widgets/drawer.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return MaterialApp(
      theme: ThemeData(fontFamily: GoogleFonts.lato().fontFamily),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        resizeToAvoidBottomInset:
            false, //to avoid app resize when keyboard rises
        backgroundColor: Color(0xFFFFFFFF),
        drawer: HomePageDrawer(),
        body: SafeArea(child: LayoutBuilder(builder: (context, Constraints) {
          return LayoutBuilder(builder: (context, Constraints) {
            return SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    color: Color(0xFF0C0C88),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Material(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50)),
                            elevation: 8.0,
                            child: IconButton(
                              icon: Icon(
                                Icons.menu,
                              ),
                              onPressed: () => Scaffold.of(context)
                                  .openDrawer(), //to open drawer with the help of icons without any gloabl scafold keys
                            ),
                          ),
                        ),
                        SingleChildScrollView(
                          child: Padding(
                            padding: const EdgeInsets.only(right: 10.0),
                            child: Material(
                              elevation: 8,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50)),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.search,
                                      size: 30,
                                    ),
                                    SizedBox(
                                      width: 8,
                                    ),
                                    Icon(
                                      Icons.notifications,
                                      size: 30,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      Column(
                        children: [
                          Container(
                            child: Stack(
                              children: [
                                Positioned(
                                  left: MediaQuery.of(context).size.width *
                                      0.000001,
                                  bottom: 1,
                                  height: 200,
                                  width: 200,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        scale: 2.0,
                                        image: AssetImage(
                                          "assets/images/homepageboy.png",
                                        ),
                                        // fit: BoxFit.contain,
                                      ),
                                    ),
                                  ),
                                ),
                                Center(
                                    // positioned widgets helps to position the widgets of stack
                                    // left: 120,
                                    // height: 180,
                                    // width: 150,
                                    child: Container(
                                  height: 200,
                                  width: 152,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                    alignment: Alignment.center,
                                    image:
                                        AssetImage("assets/images/items.png"),
                                  )),
                                )),
                                Positioned(
                                    left:
                                        MediaQuery.of(context).size.width - 575,
                                    bottom: 40,
                                    child: Container(
                                      child: Text(
                                        "Welcome To",
                                        style: TextStyle(
                                            fontSize: 25, color: Colors.white),
                                      ),
                                    )),
                                Positioned(
                                    left:
                                        MediaQuery.of(context).size.width - 550,
                                    bottom: 10,
                                    child: Container(
                                      child: Text(
                                        "Linguify",
                                        style: TextStyle(
                                            fontSize: 25,
                                            color: Color(0xFFFB8D34),
                                            fontWeight: FontWeight.bold),
                                      ),
                                    )),
                                Positioned(
                                    left:
                                        MediaQuery.of(context).size.width - 109,
                                    height: 160,
                                    bottom: 10,
                                    width: 120,
                                    child: Container(
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                        image: AssetImage(
                                            "assets/images/leafes.png"),
                                      )),
                                    )),
                              ],
                            ),
                            height: 230,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(50),
                                // bottomRight: Radius.circular(50)
                              ),
                              color: Color(0xFF0C0C88),
                            ),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 14.0, right: 10.0),
                                child: Text(
                                  "Hello!!",
                                  textAlign: TextAlign.right,
                                  style: TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFFFF0909),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 8.0),
                                child: Text(
                                  "Student",
                                  textAlign: TextAlign.right,
                                  style: TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFF000000),
                                  ),
                                ),
                              ),
                              Image.asset(
                                "assets/images/waving.png",
                                height: 32,
                                width: 32,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            height: 50,
                            width: MediaQuery.of(context).size.width * 0.90,
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey
                                      .withOpacity(0.2), //color of shadow
                                  spreadRadius: 2, //spread radius
                                  blurRadius: 2, // blur radius
                                  offset: Offset(
                                      0, 0), // changes position of shadow
                                  //first paramerter of offset is left-right
                                  //second parameter is top to down
                                ),
                              ],
                            ),
                            child: Material(
                              elevation: 14.0,
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10))),
                              child: TextFormField(
                                textAlign: TextAlign.center,
                                style: TextStyle(fontSize: 18),
                                keyboardType: TextInputType
                                    .name, //specifies input type in textfield
                                textInputAction: TextInputAction
                                    .search, //provied actions to be done after input is given
                                decoration: InputDecoration(
                                  hintText: "search",
                                  hintStyle: TextStyle(fontSize: 18),
                                  border: InputBorder.none,
                                  suffixIcon: Icon(
                                    CupertinoIcons.search,
                                    color: Colors.black54,
                                    size: 25,
                                  ),

                                  ///to add icon inside textfield
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          SizedBox(
                            height: 50,
                            width: MediaQuery.of(context).size.width,
                            child: Container(),
                          )
                        ],
                      ),

                      Container(
                        alignment: Alignment.center,
                        height: 200,
                        width: MediaQuery.of(context).size.width,
                        color: Color(0xFFFFFFFF),
                        child: Padding(
                            padding: const EdgeInsets.all(20),
                            child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children: [
//==================================================================
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        PageRouteBuilder(
                                            transitionDuration:
                                                Duration(milliseconds: 500),
                                            pageBuilder: (context, animation,
                                                secondAnimation) {
                                              return GradeSevenUI();
                                            },
                                            transitionsBuilder: (context,
                                                animation,
                                                secondaryAnimation,
                                                child) {
                                              return Material(
                                                elevation: 12,
                                                child: SlideTransition(
                                                  position: animation.drive(Tween(
                                                          begin: Offset(1, 0),
                                                          end: Offset(0, 0))
                                                      .chain(CurveTween(
                                                          curve: Curves
                                                              .easeOutCubic))),
                                                  child: ScaleTransition(
                                                    scale: animation,
                                                    child: child,
                                                  ),
                                                ),
                                              );
                                            }),
                                      );
                                    },
                                    child: Hero(
                                      tag: "grade7",
                                      child: Container(
                                        //for grade 7

                                        height: 260,
                                        width: 225,
                                        child: Column(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 100),
                                            )
                                          ],
                                        ),
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                            image: AssetImage(
                                                "assets/images/tes.png"),
                                            fit: BoxFit.fill,
                                          ),
                                          color: Color(0xFFFFD30F),
                                          borderRadius: BorderRadius.only(
                                              topRight: Radius.circular(30),
                                              bottomLeft: Radius.circular(30)),
                                          boxShadow: [
                                            BoxShadow(
                                              color: Colors.grey.withOpacity(
                                                  0.7), //color of shadow
                                              spreadRadius: 2, //spread radius
                                              blurRadius: 5, // blur radius
                                              offset: Offset(2,
                                                  2), // changes position of shadow
                                              //first paramerter of offset is left-right
                                              //second parameter is top to down
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),

                                  SizedBox(
                                    width: 10,
                                  ),
//==================================================================

                                  GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        PageRouteBuilder(
                                            transitionDuration:
                                                Duration(milliseconds: 500),
                                            pageBuilder: (context, animation,
                                                secondAnimation) {
                                              return GradeEightUI();
                                            },
                                            transitionsBuilder: (context,
                                                animation,
                                                secondaryAnimation,
                                                child) {
                                              return Material(
                                                elevation: 12,
                                                child: SlideTransition(
                                                  position: animation.drive(Tween(
                                                          begin: Offset(1, 0),
                                                          end: Offset(0, 0))
                                                      .chain(CurveTween(
                                                          curve: Curves
                                                              .easeOutCubic))),
                                                  child: ScaleTransition(
                                                    scale: animation,
                                                    child: child,
                                                  ),
                                                ),
                                              );
                                            }),
                                      );
                                    },
                                    child: Hero(
                                      tag: "grade8",
                                      child: Container(
                                        //for grade 8

                                        height: 260,
                                        width: 225,
                                        child: Column(
                                          children: [
                                            Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                            )
                                          ],
                                        ),
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                            image: AssetImage(
                                                "assets/images/diction.png"),
                                            fit: BoxFit.contain,
                                            alignment: Alignment.bottomCenter,
                                          ),
                                          color: Color(0xFFFA6A17),
                                          borderRadius: BorderRadius.only(
                                              topRight: Radius.circular(30),
                                              bottomLeft: Radius.circular(30)),
                                          boxShadow: [
                                            BoxShadow(
                                              color: Colors.grey.withOpacity(
                                                  0.7), //color of shadow
                                              spreadRadius: 2, //spread radius
                                              blurRadius: 5, // blur radius
                                              offset: Offset(2,
                                                  2), // changes position of shadow
                                              //first paramerter of offset is left-right
                                              //second parameter is top to down
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),

//==========================================================

                                  SizedBox(
                                    width: 10,
                                  ),
                                ],
                              ),
                            )),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      SizedBox(
                        height: 80,
                        width: MediaQuery.of(context).size.width,
                        child: Container(
                          child: Padding(
                              padding: const EdgeInsets.only(left: 16.0),
                              child: Row(
                                children: [
                                  Text(
                                    "English Levels",
                                    style: TextStyle(
                                        fontSize: 23,
                                        fontWeight: FontWeight.bold),
                                    textAlign: TextAlign.left,
                                  ),
                                  SizedBox(
                                    width: MediaQuery.of(context).size.width *
                                        0.26,
                                  ),
                                ],
                              )),
                        ),
                      ),
//========================english levels============================================

                      SingleChildScrollView(
                        child: Column(
                          children: [
                            Container(
                              //for graphics designing
                              height: MediaQuery.of(context).size.height * 0.15,
                              width: MediaQuery.of(context).size.width * 0.85,
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                  colors: [
                                    Color(0xFF13FAC8),
                                    Color(0xFF13EBFA)
                                  ],
                                ),
                                borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(20),
                                    topRight: Radius.circular(20)),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey
                                        .withOpacity(0.7), //color of shadow
                                    spreadRadius: 2, //spread radius
                                    blurRadius: 5, // blur radius
                                    offset: Offset(2, 2),
                                  ),
                                ],
                              ),

                              child: Row(
                                children: [
                                  Container(
                                    width: MediaQuery.of(context).size.width *
                                        0.20,
                                    child: Center(
                                      child: Image.asset(
                                        "assets/images/homepageboy.png",
                                        height: 200,
                                        width: 160,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: MediaQuery.of(context).size.width *
                                        0.50,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          "A1",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: Color(0xFFF1390B),
                                              fontSize: 35),
                                        ),
                                        Text(
                                          "Beginner",
                                          style: TextStyle(
                                              color: Color(0xFFF0461B),
                                              fontSize: 25),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    width: MediaQuery.of(context).size.width *
                                        0.08,
                                  ),
                                  Container(
                                    height: 35,
                                    width: 35,
                                    decoration: BoxDecoration(
                                      color: Color(0xFFFFFFFF),
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(30)),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey.withOpacity(
                                              0.9), //color of shadow
                                          spreadRadius: 2, //spread radius
                                          blurRadius: 2, // blur radius
                                          offset: Offset(0, 0),
                                        ),
                                      ],
                                    ),
                                    child: FloatingActionButton(
                                        onPressed: () {
                                          // loadData();
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      Algebra()));
                                        },
                                        child: Icon(
                                          Icons.keyboard_arrow_right,
                                          size: 30,
                                        )),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                          ],
                        ),
                      ),
//=================================================================
                      Container(
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              Container(
                                //for learn python
                                height:
                                    MediaQuery.of(context).size.height * 0.15,
                                width: MediaQuery.of(context).size.width * 0.85,
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomRight,
                                    colors: [
                                      Color(0xFFDF1436),
                                      Color(0xFFDF14A2),
                                    ],
                                  ),
                                  borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(20),
                                      topRight: Radius.circular(20)),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey
                                          .withOpacity(0.7), //color of shadow
                                      spreadRadius: 2, //spread radius
                                      blurRadius: 5, // blur radius
                                      offset: Offset(2, 2),
                                    ),
                                  ],
                                ),

                                child: Row(
                                  children: [
                                    Container(
                                      width: MediaQuery.of(context).size.width *
                                          0.20,
                                      child: Image.asset(
                                        "assets/images/homepageboy.png",
                                        height: 200,
                                        width: 160,
                                        // alignment: Alignment.centerLeft,
                                      ),
                                    ),
                                    Container(
                                      width: MediaQuery.of(context).size.width *
                                          0.50,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            "A2",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Color(0xFFE2F819),
                                                fontSize: 35),
                                          ),
                                          Text(
                                            "Elementary/Pre-intermediate",
                                            style: TextStyle(
                                                color: Color(0xFFD7E741),
                                                fontSize: 25),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      width: MediaQuery.of(context).size.width *
                                          0.08,
                                    ),
                                    Container(
                                      height: 35,
                                      width: 35,
                                      decoration: BoxDecoration(
                                        color: Color(0xFFFFFFFF),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(30)),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.grey.withOpacity(
                                                0.9), //color of shadow
                                            spreadRadius: 2, //spread radius
                                            blurRadius: 2, // blur radius
                                            offset: Offset(0, 0),
                                          ),
                                        ],
                                      ),
                                      child: FloatingActionButton(
                                          onPressed: () {
                                            // loadData();
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        Algebra()));
                                          },
                                          child: Icon(
                                            Icons.keyboard_arrow_right,
                                            size: 30,
                                          )),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                            ],
                          ),
                        ),
                      ),
//=================================================================
                      Container(
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              Container(
                                //for flutter
                                height:
                                    MediaQuery.of(context).size.height * 0.15,
                                width: MediaQuery.of(context).size.width * 0.85,
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomRight,
                                    colors: [
                                      Color(0xFFF8F535),
                                      Color(0xFFF8BA35),
                                    ],
                                  ),
                                  borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(20),
                                      topRight: Radius.circular(20)),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey
                                          .withOpacity(0.7), //color of shadow
                                      spreadRadius: 2, //spread radius
                                      blurRadius: 5, // blur radius
                                      offset: Offset(2, 2),
                                    ),
                                  ],
                                ),

                                child: Row(
                                  children: [
                                    Container(
                                      width: MediaQuery.of(context).size.width *
                                          0.20,
                                      child: Image.asset(
                                        "assets/images/homepageboy.png",
                                        height: 200,
                                        width: 160,
                                        // alignment: Alignment.centerLeft,
                                      ),
                                    ),
                                    Container(
                                      width: MediaQuery.of(context).size.width *
                                          0.50,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            "B1",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Color(0xFF08107A),
                                                fontSize: 35),
                                          ),
                                          Text(
                                            "Intermediate",
                                            style: TextStyle(
                                                color: Color(0xFF232A8D),
                                                fontSize: 25),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      width: MediaQuery.of(context).size.width *
                                          0.08,
                                    ),
                                    Container(
                                      height: 35,
                                      width: 35,
                                      decoration: BoxDecoration(
                                        color: Color(0xFFFFFFFF),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(30)),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.grey.withOpacity(
                                                0.9), //color of shadow
                                            spreadRadius: 2, //spread radius
                                            blurRadius: 2, // blur radius
                                            offset: Offset(0, 0),
                                          ),
                                        ],
                                      ),
                                      child: FloatingActionButton(
                                          onPressed: () {
                                            // loadData();
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        Algebra()));
                                          },
                                          child: Icon(
                                            Icons.keyboard_arrow_right,
                                            size: 30,
                                          )),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                            ],
                          ),
                        ),
                      ),
//=================================================================
                      Container(
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              Container(
                                //for design website
                                height:
                                    MediaQuery.of(context).size.height * 0.15,
                                width: MediaQuery.of(context).size.width * 0.85,
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomRight,
                                    colors: [
                                      Color(0xFFF3166B),
                                      Color(0xFFF316BC),
                                    ],
                                  ),
                                  borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(20),
                                      topRight: Radius.circular(20)),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey
                                          .withOpacity(0.7), //color of shadow
                                      spreadRadius: 2, //spread radius
                                      blurRadius: 5, // blur radius
                                      offset: Offset(2, 2),
                                    ),
                                  ],
                                ),

                                child: Row(
                                  children: [
                                    Container(
                                      width: MediaQuery.of(context).size.width *
                                          0.20,
                                      child: Image.asset(
                                        "assets/images/homepageboy.png",
                                        height: 200,
                                        width: 160,
                                      ),
                                    ),
                                    Container(
                                      width: MediaQuery.of(context).size.width *
                                          0.50,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            "B2",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Color(0xFF0BA7F0),
                                                fontSize: 35),
                                          ),
                                          Text(
                                            "Upper-Intermediate",
                                            style: TextStyle(
                                                color: Color(0xFF2EA7DF),
                                                fontSize: 25),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      width: MediaQuery.of(context).size.width *
                                          0.08,
                                    ),
                                    Container(
                                      height: 35,
                                      width: 35,
                                      decoration: BoxDecoration(
                                        color: Color(0xFFFFFFFF),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(30)),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.grey.withOpacity(
                                                0.9), //color of shadow
                                            spreadRadius: 2, //spread radius
                                            blurRadius: 2, // blur radius
                                            offset: Offset(0, 0),
                                          ),
                                        ],
                                      ),
                                      child: FloatingActionButton(
                                          onPressed: () {
                                            // loadData();
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        Algebra()));
                                          },
                                          child: Icon(
                                            Icons.keyboard_arrow_right,
                                            size: 30,
                                          )),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                            ],
                          ),
                        ),
                      ),
//=================================================================
                      Container(
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              Container(
                                //for react native
                                height:
                                    MediaQuery.of(context).size.height * 0.15,
                                width: MediaQuery.of(context).size.width * 0.85,
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomRight,
                                    colors: [
                                      Color.fromARGB(255, 84, 16, 255),
                                      Color.fromARGB(255, 104, 16, 255),
                                    ],
                                  ),
                                  borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(20),
                                      topRight: Radius.circular(20)),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey
                                          .withOpacity(0.7), //color of shadow
                                      spreadRadius: 2, //spread radius
                                      blurRadius: 5, // blur radius
                                      offset: Offset(2, 2),
                                    ),
                                  ],
                                ),

                                child: Row(
                                  children: [
                                    Container(
                                      width: MediaQuery.of(context).size.width *
                                          0.20,
                                      child: Image.asset(
                                        "assets/images/homepageboy.png",
                                        height: 200,
                                        width: 160,
                                        // alignment: Alignment.centerLeft,
                                      ),
                                    ),
                                    Container(
                                      width: MediaQuery.of(context).size.width *
                                          0.50,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            "C1",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Color(0xFF11D3F5),
                                                fontSize: 35),
                                          ),
                                          Text(
                                            "Expert/Advance",
                                            style: TextStyle(
                                                color: Color(0xFF35D7F3),
                                                fontSize: 25),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      width: MediaQuery.of(context).size.width *
                                          0.08,
                                    ),
                                    Container(
                                      height: 35,
                                      width: 35,
                                      decoration: BoxDecoration(
                                        color: Color(0xFFFFFFFF),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(30)),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.grey.withOpacity(
                                                0.9), //color of shadow
                                            spreadRadius: 2, //spread radius
                                            blurRadius: 2, // blur radius
                                            offset: Offset(0, 0),
                                          ),
                                        ],
                                      ),
                                      child: FloatingActionButton(
                                          onPressed: () {
                                            // loadData();
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        Algebra()));
                                          },
                                          child: Icon(
                                            Icons.keyboard_arrow_right,
                                            size: 30,
                                          )),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                            ],
                          ),
                        ),
                      ),
//=================================================================
                      Container(
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              Container(
                                //for java
                                height:
                                    MediaQuery.of(context).size.height * 0.15,
                                width: MediaQuery.of(context).size.width * 0.85,
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomRight,
                                    colors: [
                                      Color(0xFF10FF88),
                                      Color(0xFF10FF10),
                                    ],
                                  ),
                                  borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(20),
                                      topRight: Radius.circular(20)),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey
                                          .withOpacity(0.7), //color of shadow
                                      spreadRadius: 2, //spread radius
                                      blurRadius: 5, // blur radius
                                      offset: Offset(2, 2),
                                    ),
                                  ],
                                ),

                                child: Row(
                                  children: [
                                    Container(
                                      width: MediaQuery.of(context).size.width *
                                          0.20,
                                      child: Image.asset(
                                        "assets/images/homepageboy.png",
                                        height: 200,
                                        width: 160,
                                        // alignment: Alignment.centerLeft,
                                      ),
                                    ),
                                    Container(
                                      width: MediaQuery.of(context).size.width *
                                          0.50,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          ShaderMask(
                                            child: Text(
                                              "C2",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  color: Color(0xFFFFFFFF),
                                                  fontSize: 35),
                                            ),
                                            shaderCallback: (rect) {
                                              return LinearGradient(colors: [
                                                Color.fromARGB(255, 1, 0, 0),
                                                Color.fromARGB(255, 1, 0, 0),
                                              ]).createShader(rect);
                                            },
                                          ),
                                          Text(
                                            "Proficiency",
                                            style: TextStyle(
                                                color: Color(0xFF2480D6),
                                                fontSize: 25),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      width: MediaQuery.of(context).size.width *
                                          0.08,
                                    ),
                                    Container(
                                      height: 35,
                                      width: 35,
                                      decoration: BoxDecoration(
                                        color: Color(0xFFFFFFFF),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(30)),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.grey.withOpacity(
                                                0.9), //color of shadow
                                            spreadRadius: 2, //spread radius
                                            blurRadius: 2, // blur radius
                                            offset: Offset(0, 0),
                                          ),
                                        ],
                                      ),
                                      child: FloatingActionButton(
                                          onPressed: () {
                                            // loadData();
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        Algebra()));
                                          },
                                          child: Icon(
                                            Icons.keyboard_arrow_right,
                                            size: 30,
                                          )),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                            ],
                          ),
                        ),
                      ),
//=================================================================

//=================================================================
                    ],
                  )
                ],
              ),
            );
          });
        })),
      ),
    );
  }
}
