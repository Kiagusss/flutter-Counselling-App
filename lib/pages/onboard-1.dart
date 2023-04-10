import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_kel_bumira/main.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:project_kel_bumira/pages/HomePage.dart';
import 'package:project_kel_bumira/pages/Login.dart';
import 'package:project_kel_bumira/pages/BottomBar.dart';

class OnBoard1 extends StatefulWidget {
  const OnBoard1({super.key});

  @override
  State<OnBoard1> createState() => _OnBoard1State();
}

class _OnBoard1State extends State<OnBoard1> {
   final introKey = GlobalKey<IntroductionScreenState>();
   final Color warna = Color(0xff4852A1);

  void _onIntroEnd(context) {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (_) =>  BottomBar()),
    );
  }
  

  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      showSkipButton: true,
      skip: const Text("Skip", style: TextStyle(fontSize: 18)),
      next: const Text("Next", style: TextStyle(fontSize: 18)),
      done: const Text("Get Started", style: TextStyle(fontSize: 18, color: Colors.white)),
      doneStyle: TextButton.styleFrom(backgroundColor: Colors.blue,minimumSize: Size(100, 50)),
       onDone: () {
        
        _onIntroEnd(context); 
  },
   dotsDecorator: DotsDecorator(
    size: const Size.square(10.0),
    activeSize: const Size(25.0, 10.0),
    activeColor: Theme.of(context).colorScheme.secondary,
    color: Colors.black26,
    spacing: const EdgeInsets.symmetric(horizontal: 3.0),
    activeShape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(25.0) 
    ),
  ),
      key: introKey,
      pages: [
        PageViewModel(
          title: '',
           bodyWidget: Container(
             child: Padding(
               padding: const EdgeInsets.only(top: 10, left: 10),
               child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Image.asset("images/Sapiens1.png"),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Text("Welcome To MindScape", style: GoogleFonts.nunito(
                        fontSize: 31,
                        fontWeight: FontWeight.w700
                      ), maxLines: 2,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Text("Embark on a journey of self-discovery with MindScape", style: GoogleFonts.nunito(
                        fontSize: 28,
                        fontWeight: FontWeight.w600,
                        color: Colors.grey
                      ), maxLines: 3,
                      textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
             ),
           )
        ),
      PageViewModel(
          title: '',
           bodyWidget: Container(
             child: Padding(
               padding: const EdgeInsets.only(top: 10, left: 10),
               child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: Image.asset("images/Sapiens2.png"),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Text("Safe Your Privacy", style: GoogleFonts.nunito(
                        fontSize: 31,
                        fontWeight: FontWeight.w700
                      ), maxLines: 2,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Text("We prioritize your privacy and confidentiality during counseling sessions.", style: GoogleFonts.nunito(
                        fontSize: 28,
                        fontWeight: FontWeight.w600,
                        color: Colors.grey
                      ), maxLines: 3,
                      textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
             ),
           )
        ),
        PageViewModel(
          title: '',
           bodyWidget: Container(
             child: Padding(
               padding: const EdgeInsets.only(top: 10, left: 10),
               child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 40),
                      child: Image.asset("images/Sapiens3.png"),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Text("Getting Started", style: GoogleFonts.nunito(
                        fontSize: 31,
                        fontWeight: FontWeight.w700
                      ), maxLines: 2,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Text("Find guidance and support on your path to success with Mind Scape.", style: GoogleFonts.nunito(
                        fontSize: 28,
                        fontWeight: FontWeight.w600,
                        color: Colors.grey
                      ), maxLines: 3,
                      textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
             ),
           )
        ),
      
      ],
       showNextButton: true,
      showDoneButton: true,
    );
  }
}