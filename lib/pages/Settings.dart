import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_kel_bumira/pages/Login.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    final FirebaseAuth _auth = FirebaseAuth.instance;
    User? user = FirebaseAuth.instance.currentUser;
    String displayName = user!.displayName ?? '';

    return Scaffold(
      body: ListView(
        children: <Widget>[
          Padding(
              padding: EdgeInsets.only(
            top: 50,
          )),
          Stack(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(left: 30),
                      child: Icon(
                        Icons.arrow_back_ios,
                        size: 30,
                      ),
                    ),
                  ),
                  Align(
                    child: Text(
                      "Settings",
                      style: GoogleFonts.nunito(
                        fontSize: 27,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment(-1, 0),
                    child: Icon(
                      Icons.arrow_back_ios,
                      size: 50,
                      color: Colors.transparent,
                    ),
                  )
                ],
              ),
            ],
          ),
          Padding(padding: EdgeInsets.only(top: 30)),
          Container(
            child: Align(
              alignment: Alignment(0, 0),
              child: CircleAvatar(
                radius: 60,
                backgroundColor: Colors.grey,
                backgroundImage: AssetImage('images/udin.jpg'),
              ),
            ),
          ),

          Padding(padding: EdgeInsets.only(top: 20)),
          Container(
            alignment: Alignment(0, 0),
            child: Text(
              "$displayName",
              style: GoogleFonts.nunito(
                fontSize: 25,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),

          Padding(padding: EdgeInsets.only(top: 5)),
          Container(
            alignment: Alignment(0, 0),
            child: Text(
              "Student",
              style: GoogleFonts.nunito(
                fontSize: 21,
                fontWeight: FontWeight.w600,
                color: Color(0xffCACACA),
              ),
            ),
          ),

          Container(
            margin: EdgeInsets.only(top: 30),
            padding: EdgeInsets.only(top: 20, left: 20),
            width: 90,
            height: 90,
            alignment: Alignment(-1, 0),
            color: Color.fromRGBO(237, 247, 255, 100),
            child: Text(
              "Personal Settings",
              style: GoogleFonts.nunito(
                fontSize: 27,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),

          //Profile

          Container(
            height: 80,
            margin: EdgeInsets.only(
              top: 10,
            ),
            child: ListTile(
              leading: Icon(
                Icons.person_2_outlined,
                size: 40,
                color: Color(0xff4852A1),
              ),
              title: Text(
                'Profile',
                style: GoogleFonts.nunito(
                  fontSize: 25,
                  fontWeight: FontWeight.w600,
                ),
              ),
              subtitle: Text(
                'Set Your Profile Account',
                style: GoogleFonts.nunito(
                  fontSize: 20,
                ),
              ),
              trailing: Icon(Icons.keyboard_arrow_right),
              onTap: () {},
            ),
          ),
          Divider(),

          //Personal Information

          Container(
            height: 80,
            margin: EdgeInsets.only(
              top: 10,
            ),
            child: ListTile(
              leading: Icon(
                Icons.info_outline,
                size: 40,
                color: Color(0xff4852A1),
              ),
              title: Text(
                'Personal Information',
                style: GoogleFonts.nunito(
                  fontSize: 25,
                  fontWeight: FontWeight.w600,
                ),
              ),
              subtitle: Text(
                'Email And Password Information',
                style: GoogleFonts.nunito(
                  fontSize: 20,
                ),
              ),
              trailing: Icon(Icons.keyboard_arrow_right),
              onTap: () {},
            ),
          ),
          Divider(),

          //Bookmark

          Container(
            height: 80,
            margin: EdgeInsets.only(
              top: 10,
            ),
            child: ListTile(
              leading: Icon(
                Icons.bookmark_outline_rounded,
                size: 40,
                color: Color(0xff4852A1),
              ),
              title: Text(
                'Bookmark',
                style: GoogleFonts.nunito(
                  fontSize: 25,
                  fontWeight: FontWeight.w600,
                ),
              ),
              subtitle: Text(
                'Your Bookmark, can read in here',
                style: GoogleFonts.nunito(
                  fontSize: 20,
                ),
              ),
              trailing: Icon(Icons.keyboard_arrow_right),
              onTap: () {},
            ),
          ),
          Divider(),

          //More

          Container(
            margin: EdgeInsets.only(top: 0),
            padding: EdgeInsets.only(top: 10, left: 20),
            width: double.infinity,
            height: 70,
            alignment: Alignment(-1, 0),
            color: Color.fromRGBO(237, 247, 255, 100),
            child: Text(
              "More",
              style: GoogleFonts.nunito(
                fontSize: 27,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),

          //Help

          Container(
            height: 80,
            margin: EdgeInsets.only(
              top: 10,
            ),
            child: ListTile(
              leading: Icon(
                Icons.help_outline,
                size: 40,
                color: Color(0xff4852A1),
              ),
              title: Text(
                'Help',
                style: GoogleFonts.nunito(
                  fontSize: 25,
                  fontWeight: FontWeight.w600,
                ),
              ),
              subtitle: Text(
                'Did You have Some Questions?',
                style: GoogleFonts.nunito(
                  fontSize: 20,
                ),
              ),
              trailing: Icon(Icons.keyboard_arrow_right),
              onTap: () {},
            ),
          ),
          Divider(),

          //FAQ`s

          Container(
            height: 80,
            margin: EdgeInsets.only(
              top: 10,
            ),
            child: ListTile(
              leading: Icon(
                Icons.star_outline,
                size: 40,
                color: Color(0xff4852A1),
              ),
              title: Text(
                'FAQ`s',
                style: GoogleFonts.nunito(
                  fontSize: 25,
                  fontWeight: FontWeight.w600,
                ),
              ),
              subtitle: Text(
                'Frequently Ask Questions',
                style: GoogleFonts.nunito(
                  fontSize: 20,
                ),
              ),
              trailing: Icon(
                Icons.keyboard_arrow_right,
              ),
              onTap: () {},
            ),
          ),
          Divider(),

          //Log Out

          Container(
            margin: EdgeInsets.only(top: 30, left: 20, bottom: 20),
            child: Row(
              children: [
                TextButton(
                  onPressed: () {
                    _auth.signOut();
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => LoginPage()));
                  },
                  child: Text(
                    "Log out",
                    style: GoogleFonts.nunito(
                        fontSize: 26,
                        color: Colors.black,
                        fontWeight: FontWeight.w700),
                  ),
                ),
                Icon(
                  Icons.logout_outlined,
                  color: Color.fromARGB(255, 182, 180, 180),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
