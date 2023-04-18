import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileTeacher extends StatefulWidget {
  const ProfileTeacher({super.key});

  @override
  State<ProfileTeacher> createState() => _ProfileTeacherState();
}

class _ProfileTeacherState extends State<ProfileTeacher> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        
        body: ListView(
          children: [
            Padding(padding: EdgeInsets.only(bottom: 40)),
            Row(
              children: [
                Spacer(
                  flex: 1,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: GestureDetector(
                    onTap: (){
                      Navigator.pop(context);
                    },
                    child: Icon(
                      Icons.arrow_back_ios,
                      color: Color.fromARGB(255, 14, 14, 14),
                      size: 30.0,
                      semanticLabel: 'Text to announce in accessibility modes',
                    ),
                  ),
                ),
                Spacer(
                  flex: 4,
                ),
                Text(
                  "Conselour",
                  style: GoogleFonts.nunito(
                      fontSize: 40, fontWeight: FontWeight.w700),
                ),
                Spacer(
                  flex: 7,
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Find Counselors that's best",
                  style: GoogleFonts.nunito(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Color.fromARGB(158, 158, 158, 158)),
                ),
                Text(
                  "for you, Feel Safe!",
                  style: GoogleFonts.nunito(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Color.fromARGB(158, 158, 158, 158)),
                )
              ],
            ),
            Padding(padding: EdgeInsets.only(bottom: 40)),
            Stack(
              children: [
                Align(
                    alignment: Alignment(-0.5, 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Go Find Your Counselor Now",
                            style: GoogleFonts.nunito(
                                fontSize: 25,
                                fontWeight: FontWeight.w500,
                                color: Color.fromARGB(255, 44, 43, 78))),
                        Text("Your Counselur, it’s your choice ",
                            style: GoogleFonts.nunito(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                                color: Color.fromARGB(158, 158, 158, 158)))
                      ],
                    )),
              ],
            ),
            Padding(padding: EdgeInsets.only(bottom: 30)),
            Align(
              alignment: Alignment(0, 1),
              child: SizedBox(
                width: 370,
                height: 55,
                child: Align(
                  alignment: Alignment.center,
                  child: TextField(
                    style: TextStyle(fontSize: 20),
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(top: 20),
                      prefixIcon: Icon(Icons.search, color: Color(0xFF4852A1)),
                      hintText: 'Find Counselor',
                      hintStyle: TextStyle(fontSize: 20),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                            width: 4, color: Color(0xff69A9D9)), //<-- SEE HERE
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 30, top: 25, bottom: 25),
              child: Text("Avaible Counselor",
                  style: GoogleFonts.nunito(
                      fontSize: 25, fontWeight: FontWeight.w700)),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 9.0),
              child: Card(
                child: Row(
                  children: [
                    Padding(
                        padding: EdgeInsets.only(
                      left: 25,
                    )),
                    Stack(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 10, bottom: 10),
                          child: Container(
                            width: 120,
                            height: 170,
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(9)),
                              color: Color(0xffE0F2FF),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment(0, 1),
                          child: Image.asset(
                            'images/dokter1.png',
                            width: 113,
                          ),
                        )
                      ],
                    ),
                    Padding(padding: EdgeInsets.only(left: 30)),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Mrs.Cassandra",
                            style: GoogleFonts.nunito(
                                fontSize: 25,
                                fontWeight: FontWeight.w700,
                                color: Color.fromARGB(255, 44, 43, 78))),
                        Row(
                          children: [
                            Icon(
                              Icons.star,
                              color: Color.fromARGB(255, 223, 99, 5),
                              size: 19.0,
                              semanticLabel:
                                  'Text to announce in accessibility modes',
                            ),
                            Icon(
                              Icons.star,
                              color: Color.fromARGB(255, 223, 99, 5),
                              size: 19.0,
                              semanticLabel:
                                  'Text to announce in accessibility modes',
                            ),
                            Icon(
                              Icons.star,
                              color: Color.fromARGB(255, 223, 99, 5),
                              size: 19.0,
                              semanticLabel:
                                  'Text to announce in accessibility modes',
                            ),
                            Icon(
                              Icons.star,
                              color: Color.fromARGB(255, 223, 99, 5),
                              size: 19.0,
                              semanticLabel:
                                  'Text to announce in accessibility modes',
                            ),
                            Icon(
                              Icons.star,
                              color: Color.fromARGB(255, 223, 99, 5),
                              size: 19.0,
                              semanticLabel:
                                  'Text to announce in accessibility modes',
                            ),
                            Text("5.00")
                          ],
                        ),
                        Text("Counselor",
                            style: GoogleFonts.nunito(
                                fontSize: 19,
                                fontWeight: FontWeight.w300,
                                color: Color.fromARGB(158, 82, 82, 82))),
                        Padding(padding: EdgeInsets.only(right: 90)),
                        Text("Hi, Ibu disini hadir untuk ",
                            style: GoogleFonts.nunito(
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                                color: Color.fromARGB(255, 44, 43, 78))),
                        Text("mendengarkan keluh",
                            style: GoogleFonts.nunito(
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                                color: Color.fromARGB(255, 44, 43, 78))),
                        Text("kesah kalian, jika kalian......",
                            style: GoogleFonts.nunito(
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                                color: Color.fromARGB(255, 44, 43, 78))),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 9.0),
              child: Card(
                child: Row(
                  children: [
                    Padding(
                        padding: EdgeInsets.only(
                      left: 25,
                    )),
                    Stack(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 10, bottom: 10),
                          child: Container(
                            width: 120,
                            height: 170,
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(9)),
                              color: Color(0xffE0F2FF),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment(0, 1),
                          child: Image.asset(
                            'images/dokter1.png',
                            width: 113,
                          ),
                        )
                      ],
                    ),
                    Padding(padding: EdgeInsets.only(left: 30)),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Mrs.Cassandra",
                            style: GoogleFonts.nunito(
                                fontSize: 25,
                                fontWeight: FontWeight.w700,
                                color: Color.fromARGB(255, 44, 43, 78))),
                        Row(
                          children: [
                            Icon(
                              Icons.star,
                              color: Color.fromARGB(255, 223, 99, 5),
                              size: 19.0,
                              semanticLabel:
                                  'Text to announce in accessibility modes',
                            ),
                            Icon(
                              Icons.star,
                              color: Color.fromARGB(255, 223, 99, 5),
                              size: 19.0,
                              semanticLabel:
                                  'Text to announce in accessibility modes',
                            ),
                            Icon(
                              Icons.star,
                              color: Color.fromARGB(255, 223, 99, 5),
                              size: 19.0,
                              semanticLabel:
                                  'Text to announce in accessibility modes',
                            ),
                            Icon(
                              Icons.star,
                              color: Color.fromARGB(255, 223, 99, 5),
                              size: 19.0,
                              semanticLabel:
                                  'Text to announce in accessibility modes',
                            ),
                            Icon(
                              Icons.star,
                              color: Color.fromARGB(255, 223, 99, 5),
                              size: 19.0,
                              semanticLabel:
                                  'Text to announce in accessibility modes',
                            ),
                            Text("5.00")
                          ],
                        ),
                        Text("Counselor",
                            style: GoogleFonts.nunito(
                                fontSize: 19,
                                fontWeight: FontWeight.w300,
                                color: Color.fromARGB(158, 82, 82, 82))),
                        Padding(padding: EdgeInsets.only(right: 90)),
                        Text("Hi, Ibu disini hadir untuk ",
                            style: GoogleFonts.nunito(
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                                color: Color.fromARGB(255, 44, 43, 78))),
                        Text("mendengarkan keluh",
                            style: GoogleFonts.nunito(
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                                color: Color.fromARGB(255, 44, 43, 78))),
                        Text("kesah kalian, jika kalian......",
                            style: GoogleFonts.nunito(
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                                color: Color.fromARGB(255, 44, 43, 78))),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 9.0),
              child: Card(
                child: Row(
                  children: [
                    Padding(
                        padding: EdgeInsets.only(
                      left: 25,
                    )),
                    Stack(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 10, bottom: 10),
                          child: Container(
                            width: 120,
                            height: 170,
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(9)),
                              color: Color(0xffE0F2FF),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment(0, 1),
                          child: Image.asset(
                            'images/dokter1.png',
                            width: 113,
                          ),
                        )
                      ],
                    ),
                    Padding(padding: EdgeInsets.only(left: 30)),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Mrs.Cassandra",
                            style: GoogleFonts.nunito(
                                fontSize: 25,
                                fontWeight: FontWeight.w700,
                                color: Color.fromARGB(255, 44, 43, 78))),
                        Row(
                          children: [
                            Icon(
                              Icons.star,
                              color: Color.fromARGB(255, 223, 99, 5),
                              size: 19.0,
                              semanticLabel:
                                  'Text to announce in accessibility modes',
                            ),
                            Icon(
                              Icons.star,
                              color: Color.fromARGB(255, 223, 99, 5),
                              size: 19.0,
                              semanticLabel:
                                  'Text to announce in accessibility modes',
                            ),
                            Icon(
                              Icons.star,
                              color: Color.fromARGB(255, 223, 99, 5),
                              size: 19.0,
                              semanticLabel:
                                  'Text to announce in accessibility modes',
                            ),
                            Icon(
                              Icons.star,
                              color: Color.fromARGB(255, 223, 99, 5),
                              size: 19.0,
                              semanticLabel:
                                  'Text to announce in accessibility modes',
                            ),
                            Icon(
                              Icons.star,
                              color: Color.fromARGB(255, 223, 99, 5),
                              size: 19.0,
                              semanticLabel:
                                  'Text to announce in accessibility modes',
                            ),
                            Text("5.00")
                          ],
                        ),
                        Text("Counselor",
                            style: GoogleFonts.nunito(
                                fontSize: 19,
                                fontWeight: FontWeight.w300,
                                color: Color.fromARGB(158, 82, 82, 82))),
                        Padding(padding: EdgeInsets.only(right: 90)),
                        Text("Hi, Ibu disini hadir untuk ",
                            style: GoogleFonts.nunito(
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                                color: Color.fromARGB(255, 44, 43, 78))),
                        Text("mendengarkan keluh",
                            style: GoogleFonts.nunito(
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                                color: Color.fromARGB(255, 44, 43, 78))),
                        Text("kesah kalian, jika kalian......",
                            style: GoogleFonts.nunito(
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                                color: Color.fromARGB(255, 44, 43, 78))),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
