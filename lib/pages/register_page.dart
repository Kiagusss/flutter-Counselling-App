import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'HomePage.dart';
import 'login_page.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final _formKey = GlobalKey<FormState>();
  final _auth = FirebaseAuth.instance;
  late String _email, _password, _username;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Register'),
      ),
      body: Form(
        key: _formKey,
        child: Column(
          children: <Widget>[
            TextFormField(
              validator: (input) {
                if (input == null || input.isEmpty) {
                  return 'Please type an email';
                }
              },
              onSaved: (input) => _email = input!,
              decoration: InputDecoration(
                labelText: 'Email',
              ),
            ),
            TextFormField(
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
              decoration: InputDecoration(
                labelText: 'Password',
              ),
            ),
            TextFormField(
              validator: (input) {
                if (input == null || input.isEmpty) {
                  return 'Please type a username';
                }
              },
              onSaved: (input) => _username = input!,
              decoration: InputDecoration(
                labelText: 'Username',
              ),
            ),
            ElevatedButton(
              onPressed: _submit,
              child: Text('Register'),
            ),
          ],
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
        ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text('Registration successful')));
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginPage()));
      } catch (e) {
        ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text('Error registering: $e')));
      }
    }
  }
}
