import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:project_kel_bumira/pages/Regis.dart';
import 'BottomBar.dart';
import 'HomePage.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  
  final _formKey = GlobalKey<FormState>();
  final _auth = FirebaseAuth.instance;
  final _googleSignIn = GoogleSignIn();
  late String _email;
  late String _password;
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return Color(0xff4852A1);
      }
      return Color(0xff4852A1);
    }

    return MaterialApp(
      home: Scaffold(
        body: Form(
          key: _formKey,
          child: Container(
              color: Color.fromARGB(255, 255, 255, 255),
              padding: EdgeInsets.only(left: 20, right: 20),
              child: ListView(
                children: [
                  Container(
                    alignment: Alignment.center,
                    child: Image.asset(
                      "images/Logo.png",
                      width: 135,
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Login",
                        style: GoogleFonts.nunito(
                            fontSize: 45,
                            fontWeight: FontWeight.w700,
                            color: Color(0xff4852A1)),
                      ),
                      Text(
                          "We're excited to have you back. Can't wait to see what ",
                          style: GoogleFonts.nunito(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: Color.fromARGB(255, 166, 166, 166))),
                      Text("you've been up to sice you last logged in ",
                          style: GoogleFonts.nunito(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: Color.fromARGB(255, 166, 166, 166))),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Column(
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        child: Container(
                          width: 1000,
                          child: Align(
                            alignment: Alignment.center,
                            child: TextFormField(
                              validator: (value) =>
                                  value == null || value.isEmpty
                                      ? 'Email can\'t be empty'
                                      : null,
                              onSaved: (value) => _email = value!,
                              style: GoogleFonts.nunito(fontSize: 18),
                              decoration: InputDecoration(
                                  hintText: 'Email',
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        width: 4,
                                        color: Color.fromARGB(
                                            255, 89, 111, 173)), //<-- SEE HERE
                                    borderRadius: BorderRadius.circular(15.0),
                                  ),
                                  contentPadding: EdgeInsets.symmetric(
                                      vertical: 20, horizontal: 32)),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        child: Container(
                          width: 1000,
                          child: Align(
                            alignment: Alignment.center,
                            child: TextFormField(
                              validator: (value) =>
                                  value == null || value.isEmpty
                                      ? 'Password can\'t be empty'
                                      : null,
                              onSaved: (value) => _password = value!,
                              obscureText: true,
                              obscuringCharacter: "*",
                              style: GoogleFonts.nunito(fontSize: 18),
                              decoration: InputDecoration(
                                  hintText: 'Password',
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        width: 4,
                                        color: Color.fromARGB(
                                            255, 89, 111, 173)), //<-- SEE HERE
                                    borderRadius: BorderRadius.circular(15.0),
                                  ),
                                  contentPadding: EdgeInsets.symmetric(
                                      vertical: 20, horizontal: 32)),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Checkbox(
                            checkColor: Colors.white,
                            fillColor:
                                MaterialStateProperty.resolveWith(getColor),
                            value: isChecked,
                            onChanged: (bool? value) {
                              setState(() {
                                isChecked = value!;
                              });
                            },
                          ),
                          Text(
                            "Remember me",
                            style: GoogleFonts.nunito(fontSize: 16),
                          )
                        ],
                      ),
                      Text(
                        "Forgot Password?",
                        style: GoogleFonts.nunito(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: Color(0xff4852A1),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                    onPressed:  _signInWithEmail,
                    child: const Text(
                      'Login',
                      style: TextStyle(fontSize: 25),
                    ),
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      backgroundColor:
                          MaterialStateProperty.all(Color(0xff4852A1)),
                      minimumSize:
                          MaterialStateProperty.all(const Size(380, 70)),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25.0)),
                  Row(
                    children: [
                      Expanded(
                        child: Divider(
                          thickness: 3,
                          color: Color(0xffE7E7E7),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Text(
                          'Or continue with',
                          style: TextStyle(color: Color(0xffBABABA)),
                        ),
                      ),
                      Expanded(
                        child: Divider(
                          thickness: 3,
                          color: Color(0xffE7E7E7),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  ElevatedButton(
                    onPressed: _signInWithGoogle,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.network(
                          "https://upload.wikimedia.org/wikipedia/commons/thumb/5/53/Google_%22G%22_Logo.svg/2008px-Google_%22G%22_Logo.svg.png",
                          width: 30,
                        ),
                        Padding(padding: EdgeInsets.only(left: 10)),
                        Text('Login With Google',
                            style: TextStyle(
                                fontSize: 25,
                                color: Colors.black,
                                fontWeight: FontWeight.w400))
                      ],
                    ),
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          side: BorderSide(
                              width: 1,
                              color: Color.fromARGB(255, 190, 190, 190)),
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      backgroundColor: MaterialStateProperty.all(
                          Color.fromARGB(255, 255, 255, 255)),
                      minimumSize:
                          MaterialStateProperty.all(const Size(380, 70)),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Didn't have an Account Yet?",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w400),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => RegisterPage()));
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(left: 8),
                          child: Text("Sign Up",
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xff4852A1))),
                        ),
                      ),
                      Padding(padding: EdgeInsets.only(bottom: 90))
                    ],
                  )
                ],
              )),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
   void _signInWithEmail() async {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      try {
        await _auth.signInWithEmailAndPassword(
            email: _email, password: _password);
        Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(builder: (context) => AnimatedBarExample()),
            (_) => false);
      } on FirebaseAuthException catch (e) {
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text('Error: ${e.message}')));
      } catch (e) {
        print(e);
      }
    }
  }

  void _signInWithGoogle() async {
    try {
      final googleUser = await _googleSignIn.signIn();
      final googleAuth = await googleUser!.authentication;
      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );
      await _auth.signInWithCredential(credential);
      Navigator.pushAndRemoveUntil(context,
          MaterialPageRoute(builder: (context) => BottomBar()), (_) => false);
    } on FirebaseAuthException catch (e) {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text('Error: ${e.message}')));
    } catch (e) {
      print(e);
    }
  }
}


