import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';


class Iconss extends StatelessWidget {
  const Iconss({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
           bottom: PreferredSize(
    preferredSize: Size.fromHeight(10),
    child: Container(
      color: Colors.white,
    ),
  ),
          
          
          actions: [
            Icon(Icons.add_a_photo, size: 30),
            Container(
              width: 10,
            ),
             Icon(Icons.favorite_border_outlined, size: 30),
               Container(
              width: 10,
            ),
          
          ],
          title: Text("Instagram", style: GoogleFonts.quicksand(
            fontSize: 23,
          ),
          
          ),
          backgroundColor: Colors.black,
          
        ),
        body: 
        ListView(
        
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 4),
              child: Container(
                color: Color(0xff181818),
                height: 100,
                child: SingleChildScrollView(
                  
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [ 
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: CircleAvatar(
                          backgroundColor: Colors.white,
                foregroundColor: Colors.purple,
                          radius: 40,
                          child: CircleAvatar(
                            radius: 36,
                            backgroundImage: AssetImage("images/udin.jpg"),
                          ),
                         
                         
                        ),
                      ),
                      
                        Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: CircleAvatar(
                          backgroundColor: Colors.purple,
                foregroundColor: Colors.purple,
                          radius: 40,
                          child: CircleAvatar(
                            radius: 36,
                            backgroundImage: AssetImage("images/udin.jpg"),
                          ),
                        ),
                      ),
                        Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: CircleAvatar(
                          backgroundColor: Colors.purple,
                foregroundColor: Colors.purple,
                          radius: 40,
                          child: CircleAvatar(
                            radius: 36,
                            backgroundImage: AssetImage("images/udin.jpg"),
                          ),
                        ),
                      ),
                        Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: CircleAvatar(
                          backgroundColor: Colors.purple,
                foregroundColor: Colors.purple,
                          radius: 40,
                          child: CircleAvatar(
                            radius: 36,
                            backgroundImage: AssetImage("images/udin.jpg"),
                          ),
                        ),
                      ),
                        Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: CircleAvatar(
                          backgroundColor: Colors.purple,
                foregroundColor: Colors.purple,
                          radius: 40,
                          child: CircleAvatar(
                            radius: 36,
                            backgroundImage: AssetImage("images/udin.jpg"),
                          ),
                        ),
                      ),
                        Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: CircleAvatar(
                          backgroundColor: Colors.purple,
                foregroundColor: Colors.purple,
                          radius: 40,
                          child: CircleAvatar(
                            radius: 36,
                            backgroundImage: AssetImage("images/udin.jpg"),
                          ),
                        ),
                      ),
                      
                    ],
                  ),
                ),
              ),
            ),
            Column(
              children: [
                 Column(
                   children: [
                     Container(
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 20, left: 20),
                            child: CircleAvatar(
                                backgroundColor: Colors.purple,
                                          foregroundColor: Colors.purple,
                                radius: 36,
                                child: CircleAvatar(
                                  radius: 30,
                                  backgroundImage: AssetImage("images/udin.jpg"),
                                ),
                              ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10,top: 10),
                            child: Text("Raisa Pacar agus", style: GoogleFonts.nunito(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w300
                            ),),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10,left: 90),
                            child: Icon(Icons.list, color: Colors.white, size: 30),
                          ),
                        ],
                      ),
                      
                     ),
                     Padding(
                       padding: const EdgeInsets.only(top: 20, ),
                       child: Image.asset("images/buat-ig.jpg", width: 250,),
                     ),
                     Padding(
                       padding: const EdgeInsets.only(top: 20, left: 20),
                       child: Row(
                        children: [
                          Icon(Icons.favorite_border_outlined, color: Colors.white,size: 40,),
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Icon(Icons.comment, color: Colors.white,size: 40,),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Icon(Icons.send, color: Colors.white,size: 40,),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 160),
                            child: Icon(Icons.bookmark_border_outlined, color: Colors.white,size: 40,),
                          ),
                        ],
                       ),
                     ) 
                   ],
                   
                 ),
                Container(
                  
                  padding: EdgeInsets.only(top: 0),
                  child: Stack(
                    children: [
                      Container(
                        width: double.infinity,
                        height: 50,
                        color: Colors.black,
                      ),
                      Row(
                        children: [
                          IconButton(onPressed: (){}, icon: Icon(Icons.home,size: 40,color: Colors.white,)),
                          Spacer(),
                          IconButton(onPressed: (){}, icon: Icon(Icons.explore,size: 40,color: Colors.white,)),
                          Spacer(),
                          IconButton(onPressed: (){}, icon: Icon(Icons.video_camera_back_sharp,size: 40,color: Colors.white,)),
                          Spacer(),
                          IconButton(onPressed: (){}, icon: Icon(Icons.message_outlined,size: 40,color: Colors.white,)),
                          Spacer(),
                          IconButton(onPressed: (){}, icon: Icon(Icons.people,size: 40,color: Colors.white,)),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}