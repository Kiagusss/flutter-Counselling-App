import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_kel_bumira/pages/BottomBar.dart';

import 'ProfileTeacher.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    User? user = FirebaseAuth.instance.currentUser;
    String displayName = user!.displayName ?? '';

    return Scaffold(
      key: _scaffoldKey,
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.only(left: 20, top: 30),
            child: Row(
              children: [
                Text(
                  'Hi, $displayName!',
                  style: GoogleFonts.nunito(
                      fontSize: 22, fontWeight: FontWeight.w600),
                ),
                GestureDetector(
                  onTap: () {
                    _scaffoldKey.currentState!.openEndDrawer();
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(left: 140),
                    child: CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage("images/Sapiens1.png"),
                    ),
                  ),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 20, top: 5),
            child: Text(
              "What Do You Feel?",
              style: GoogleFonts.nunito(
                  fontSize: 27,
                  fontWeight: FontWeight.w700,
                  color: Color(0xff4852A1)),
            ),
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextField(
                autocorrect: false,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                    hintText: "Search Anything Here",
                    prefixIcon: Icon(
                      Icons.search,
                      size: 30,
                      color: Color(0xff4852A1),
                    )),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 22, top: 10),
            child: Text(
              "Mind Scape Services",
              style: GoogleFonts.nunito(
                fontSize: 27,
                fontWeight: FontWeight.w700,
                color: Color(0xffF85C3D),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 22, top: 20),
            child: Row(
              children: [
                Column(
                  children: [
                    Container(
                      width: 70,
                      height: 70,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(20),
                          ),
                          border: Border.all(color: Colors.blue, width: 2.0)),
                      child: Image(image: AssetImage("images/Icon.png")),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 5),
                      child: Text(
                        "Consulting",
                        style: GoogleFonts.nunito(
                            color: Colors.blue,
                            fontWeight: FontWeight.w600,
                            fontSize: 15),
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Column(
                    children: [
                      Container(
                        width: 70,
                        height: 70,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(20),
                            ),
                            border: Border.all(color: Colors.blue, width: 2.0)),
                        child: Image(image: AssetImage("images/Icon2.png")),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 5),
                        child: Text(
                          "Journal",
                          style: GoogleFonts.nunito(
                              color: Colors.blue,
                              fontWeight: FontWeight.w600,
                              fontSize: 15),
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Column(
                    children: [
                      Container(
                        width: 70,
                        height: 70,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(20),
                            ),
                            border: Border.all(color: Colors.blue, width: 2.0)),
                        child: Image(image: AssetImage("images/Icon3.png")),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 5),
                        child: Text(
                          "Content",
                          style: GoogleFonts.nunito(
                              color: Colors.blue,
                              fontWeight: FontWeight.w600,
                              fontSize: 15),
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Column(
                    children: [
                      Container(
                        width: 70,
                        height: 70,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(20),
                            ),
                            border: Border.all(color: Colors.blue, width: 2.0)),
                        child: Image(image: AssetImage("images/Icon4.png")),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 5),
                        child: Text(
                          "Other",
                          style: GoogleFonts.nunito(
                              color: Colors.blue,
                              fontWeight: FontWeight.w600,
                              fontSize: 15),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 22, top: 20),
            child: Row(
              children: [
                Text(
                  "Our Conselor",
                  style: GoogleFonts.nunito(
                    fontSize: 27,
                    fontWeight: FontWeight.w700,
                    color: Color(0xffF85C3D),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 110),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => ProfileTeacher(),));
                    },
                    child: Text(
                      "See All",
                      style: GoogleFonts.nunito(
                        fontSize: 17,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff4852A1),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Container(
              margin: EdgeInsets.only(left: 22),
              child: Row(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(right: 20),
                    child: Column(
                      children: [
                        Container(
                          width: 220,
                          height: 300,
                          child: Image(
                            image: AssetImage("images/dokter1.png"),
                            width: 100,
                            height: 100,
                          ),
                          decoration: BoxDecoration(
                              color: Color(0xffE1EEF7),
                              borderRadius: BorderRadius.circular(10)),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 30),
                          child: Text(
                            "Mrs. Cassandra",
                            style: GoogleFonts.nunito(
                                fontSize: 25, fontWeight: FontWeight.w700),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 120),
                          child: Text(
                            "Counselor",
                            style: GoogleFonts.nunito(
                                fontSize: 17,
                                fontWeight: FontWeight.w700,
                                color: Color(0xff9E9E9E)),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 20),
                    child: Column(
                      children: [
                        Container(
                          width: 220,
                          height: 300,
                          child: Image(
                            image: AssetImage("images/dokter2.png"),
                            width: 120,
                            height: 120,
                          ),
                          decoration: BoxDecoration(
                              color: Color(0xffE1EEF7),
                              borderRadius: BorderRadius.circular(10)),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 100),
                          child: Text(
                            "Mr. Ricky",
                            style: GoogleFonts.nunito(
                                fontSize: 25, fontWeight: FontWeight.w700),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 125),
                          child: Text(
                            "Counselor",
                            style: GoogleFonts.nunito(
                                fontSize: 17,
                                fontWeight: FontWeight.w700,
                                color: Color(0xff9E9E9E)),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      children: [
                        Container(
                          width: 220,
                          height: 300,
                          child: Image(
                            image: AssetImage("images/dokter3.png"),
                            width: 100,
                            height: 100,
                          ),
                          decoration: BoxDecoration(
                              color: Color(0xffE1EEF7),
                              borderRadius: BorderRadius.circular(10)),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 30),
                          child: Text(
                            "Mrs. Gunawan",
                            style: GoogleFonts.nunito(
                                fontSize: 25, fontWeight: FontWeight.w700),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 120),
                          child: Text(
                            "Counselor",
                            style: GoogleFonts.nunito(
                                fontSize: 17,
                                fontWeight: FontWeight.w700,
                                color: Color(0xff9E9E9E)),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
      endDrawer: Drawer(
        width: 250,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              child: Text("Ini Judul Drawer"),
              margin: EdgeInsets.only(left: 20),
            )
          ],
        ),
      ),
    );
  }
}
