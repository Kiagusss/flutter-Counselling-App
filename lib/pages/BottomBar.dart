import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_kel_bumira/pages/Chat.dart';
import 'package:project_kel_bumira/pages/Profile.dart';
import 'package:stylish_bottom_bar/model/bar_items.dart';
import 'package:stylish_bottom_bar/stylish_bottom_bar.dart';
import 'Explore.dart';
import 'Journal.dart';
import 'HomePage.dart';
import 'icon.dart';

void main() {
  runApp(const BottomBar());
}

class BottomBar extends StatelessWidget {
  const BottomBar({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Stylish Bottom Navigation Bar Example',
      theme: ThemeData(
        // useMaterial3: true,
        primarySwatch: Colors.blue,
      ),
      home: const AnimatedBarExample(),
      // home: const AnimatedBarExample(),
    );
  }
}

class AnimatedBarExample extends StatefulWidget {
  const AnimatedBarExample({
    Key? key,
  }) : super(key: key);

  @override
  State<AnimatedBarExample> createState() => _AnimatedBarExampleState();
}

class _AnimatedBarExampleState extends State<AnimatedBarExample> {
  dynamic selected;
  var heart = false;
  PageController controller = PageController();

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: false, //to make floating action button notch transparent
      //to avoid the floating action button overlapping behavior,
      // when a soft keyboard is displayed
      // resizeToAvoidBottomInset: false,

      bottomNavigationBar: StylishBottomBar(
        items: [
          BottomBarItem(
            icon: const Icon(
              Icons.home,
              size: 33,
            ),
            selectedIcon: const Icon(
              Icons.home,
              size: 40,
            ),
            selectedColor: Color(0xff4852A1),
            backgroundColor: Colors.tealAccent,
            unSelectedColor: Colors.grey,
            title: Text(
              'Home',
              style: GoogleFonts.nunito(fontSize: 16),
            ),
            showBadge: true,
          ),
          BottomBarItem(
            icon: const Icon(
              Icons.explore,
              size: 33,
            ),
            selectedColor: Color(0xff4852A1),
            backgroundColor: Colors.lightGreenAccent,
            title: Text(
              'Explore',
              style: GoogleFonts.nunito(fontSize: 16),
            ),
          ),
          BottomBarItem(
            icon: const Icon(
              Icons.chat_rounded,
              size: 29,
            ),
            selectedIcon: const Icon(
              Icons.style,
            ),
            backgroundColor: Colors.amber,
            selectedColor: Color(0xff4852A1),
            title: Text(
              'Chat',
              style: GoogleFonts.nunito(fontSize: 16),
            ),
          ),
          BottomBarItem(
            icon: const Icon(
              Icons.person,
              size: 33,
            ),
            selectedIcon: const Icon(
              Icons.person,
            ),
            backgroundColor: Colors.purpleAccent,
            selectedColor: Color(0xff4852A1),
            title: Text(
              'Profile',
              style: GoogleFonts.nunito(fontSize: 16),
            ),
          ),
        ],
        hasNotch: true,
        fabLocation: StylishBarFabLocation.center,
        currentIndex: selected ?? 0,
        onTap: (index) {
          controller.jumpToPage(index);
          setState(() {
            selected = index;
          });
        },
        option: AnimatedBarOptions(
          // iconSize: 32,
          barAnimation: BarAnimation.transform3D,
          iconStyle: IconStyle.animated,
          // opacity: 0.3,
        ),
      ),

      floatingActionButton: Container(
        constraints: BoxConstraints.tight(
            Size(70, 70)),
        child: FloatingActionButton(
          elevation: 200,
          onPressed: () {
            setState(() {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HomePage()),
              );
            });
          },
          backgroundColor: Color(0xff4852A1),
          child: Icon(
            Icons.calendar_month_outlined,
            size: 35,
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: SafeArea(
        child: PageView(
          controller: controller,
          children: [
            HomePage(),
            Explore(),
            Chat(),
            Profile(),
          ],
          physics: NeverScrollableScrollPhysics(),
        ),
      ),
    );
  }
}

//
//Example to setup Bubble Bottom Bar with PageView
class BubbelBarExample extends StatefulWidget {
  const BubbelBarExample({Key? key}) : super(key: key);

  @override
  State<BubbelBarExample> createState() => _BubbelBarExampleState();
}

class _BubbelBarExampleState extends State<BubbelBarExample> {
  PageController controller = PageController(initialPage: 0);
  var selected = 0;

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: controller,
        children: const [
          // Home(),
          // Add(),
          // Profile(),
        ],
      ),
      bottomNavigationBar: StylishBottomBar(
        option: BubbleBarOptions(
          barStyle: BubbleBarStyle.horizotnal,
          // barStyle: BubbleBarStyle.vertical,
          bubbleFillStyle: BubbleFillStyle.fill,
          // bubbleFillStyle: BubbleFillStyle.outlined,
          opacity: 0.3,
        ),
        items: [
          BottomBarItem(
            icon: const Icon(Icons.abc),
            title: const Text('Abc'),
            backgroundColor: Colors.red,
            selectedIcon: const Icon(Icons.read_more),
          ),
          BottomBarItem(
            icon: const Icon(Icons.safety_divider),
            title: const Text('Safety'),
            backgroundColor: Colors.orange,
          ),
          BottomBarItem(
            icon: const Icon(Icons.cabin),
            title: const Text('Cabin'),
            backgroundColor: Colors.purple,
          ),
        ],
        fabLocation: StylishBarFabLocation.end,
        hasNotch: true,
        currentIndex: selected,
        onTap: (index) {
          setState(() {
            selected = index;
            controller.jumpToPage(index);
          });
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.emoji_emotions),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
    );
  }
}
