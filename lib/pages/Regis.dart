import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Login.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final _formKey = GlobalKey<FormState>();
  final _auth = FirebaseAuth.instance;
  late String _email, _password, _username;
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
        return Colors.blue;
      }
      return Colors.blue;
    }

    return MaterialApp(
      debugShowCheckedModeBanner: false,
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
                        "Register",
                        style: GoogleFonts.nunito(
                            fontSize: 45,
                            fontWeight: FontWeight.w700,
                            color: Color(0xff4852A1)),
                      ),
                      Text(
                          "Hi Welcome to MindScape, Register For Your Best Experience",
                          style: GoogleFonts.nunito(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: Color.fromARGB(255, 166, 166, 166))),
                    ],
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Column(
                    children: [
                      Align(
                        child: SizedBox(
                          width: 1000,
                          child: Align(
                            alignment: Alignment.center,
                            child: TextFormField(
                              validator: (input) {
                                if (input == null || input.isEmpty) {
                                  return 'Please type a username';
                                }
                              },
                              onSaved: (input) => _username = input!,
                              style: GoogleFonts.nunito(fontSize: 18),
                              decoration: InputDecoration(
                                  hintText: 'Username',
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        width: 4,
                                        color: Color.fromARGB(
                                            255, 69, 92, 153)), //<-- SEE HERE
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
                              validator: (input) {
                                if (input == null || input.isEmpty) {
                                  return 'Please type an email';
                                } else if (!input.contains('@')) {
                                  return 'Please enter a valid email';
                                }
                              },
                              onSaved: (input) => _email = input!,
                              style: GoogleFonts.nunito(fontSize: 18),
                              decoration: InputDecoration(
                                  hintText: 'Email',
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        width: 4,
                                        color:
                                            Color.fromARGB(255, 89, 111, 173)),
                                    borderRadius: BorderRadius.circular(15.0),
                                  ),
                                  contentPadding: EdgeInsets.symmetric(
                                      vertical: 20, horizontal: 32)),
                              autocorrect: false,
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
                              validator: (input) {
                                if (input == null || input.isEmpty) {
                                  return 'Please type a password';
                                }
                                if (input.length < 6) {
                                  return 'Password must be at least 6 characters long';
                                }
                              },
                              onSaved: (input) => _password = input!,
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
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text(
                      "*Password Must Contain 8 Letters",
                      style: GoogleFonts.nunito(
                          color: Color.fromARGB(255, 110, 110, 110),
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                    onPressed: _submit,
                    child: const Text(
                      'Register',
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
                          MaterialStateProperty.all(const Size(380, 60)),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Already Have An Account?",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w400),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LoginPage()));
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(left: 8),
                          child: Text("Sign In",
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
    );
  }

  void _submit() async {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      try {
        await _auth.createUserWithEmailAndPassword(
            email: _email, password: _password);
        User? user = _auth.currentUser;
        await user!.updateDisplayName(_username);
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text('Registration successful')));
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => LoginPage()));
      } catch (e) {
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text('Error registering: $e')));
      }
    }
  }
}
