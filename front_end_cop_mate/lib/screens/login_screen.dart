import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:front_end_cop_mate/bottomnavgationbar.dart';
import 'package:front_end_cop_mate/elements/constants.dart';
import 'package:front_end_cop_mate/elements/heading.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:front_end_cop_mate/elements/constants.dart';
import 'package:front_end_cop_mate/elements/normalbutton.dart';
import 'package:front_end_cop_mate/elements/textfield.dart';
import 'package:front_end_cop_mate/elements/textfield.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:front_end_cop_mate/models/User_2.dart';
import "package:cloud_firestore/cloud_firestore.dart";

class login_screen extends StatefulWidget {
  static const String id = 'login_screen';

  @override
  State<login_screen> createState() => _login_screenState();
}

class _login_screenState extends State<login_screen> {
  CollectionReference users = FirebaseFirestore.instance.collection('user');
  final _auth = FirebaseAuth.instance;
  String email = "";
  String password = "";
  bool showSpinner = false;
  User_2 user_2 = User_2(
      email: "tom1@gmail.com",
      name: "Tom Hanks",
      password: "tttttt",
      gender: "1",
      height: "182",
      weight: "83",
      description: "",
      age: "61");

  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  void set_user(String email, String name, String password, String gender,
      String height, String weight, String description, String age) {
    user_2 = User_2(
        email: email,
        name: name,
        password: password,
        gender: gender,
        height: height,
        weight: weight,
        description: description,
        age: age);
  }

  Widget _buildemailField() {
    return TextFormField(
      validator: (value) {
        if (value!.isEmpty) {
          return 'Enter Email';
        }

        if (!RegExp(
                r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
            .hasMatch(value)) {
          return "Enter valid email";
        }
        return null;
      },
      onSaved: (value) {
        if (value != null && value.isNotEmpty) {
          email = value;
        }
      },
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        labelText: "Email",
        icon: Icon(
          FontAwesomeIcons.envelope,
          color: Colors.white,
        ),
        hintText: "Email",
        hintStyle: TextStyle(color: Colors.grey),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
        ),
      ),
    );
  }

  Widget _buildpasswordField() {
    return TextFormField(
      obscureText: true,
      validator: (value) {
        if (value!.isEmpty) {
          return 'Enter Password';
        }
        return null;
      },
      onSaved: (value) {
        if (value != null && value.isNotEmpty) {
          password = value;
        }
      },
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        labelText: "Password",
        icon: Icon(
          FontAwesomeIcons.key,
          color: Colors.white,
        ),
        hintText: "Password",
        hintStyle: TextStyle(color: Colors.grey),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text('Virtual Aid'),
        backgroundColor: Color(0xFFAC6EBB),
      ),
      body: ModalProgressHUD(
        inAsyncCall: showSpinner,
        child: SafeArea(
          child: Container(
            height: double.infinity,
            // decoration: BoxDecoration(
            //   gradient: LinearGradient(
            //     begin: Alignment.topRight,
            //     end: Alignment.bottomLeft,
            //     colors: [
            //       Colors.indigo.shade200,
            //       Colors.deepOrange.shade200,
            //     ],
            //   ),
            // ),
            color: Color(0xFF8008CA),

            child: Column(
              children: [
                heading(
                    string: "Login", icon: FontAwesomeIcons.user, space: 40),
                const Divider(
                  height: 10,
                  thickness: 2,
                  indent: 20,
                  endIndent: 20,
                  color: Colors.white,
                ),
                SizedBox(
                  height: 50,
                ),
                Container(
                  padding: EdgeInsets.all(20),
                  child: Form(
                    key: _formkey,
                    child: Column(
                      children: <Widget>[
                        _buildemailField(),
                        SizedBox(height: 20),
                        _buildpasswordField(),
                        SizedBox(height: 20),
                        ElevatedButton(
                          onPressed: () async {
                            setState(() {
                              showSpinner = true;
                            });
                            if (!_formkey.currentState!.validate()) {
                              return;
                            }
                            _formkey.currentState!.save();
                            try {
                              final user =
                                  await _auth.signInWithEmailAndPassword(
                                      email: email, password: password);
                              setState(() {
                                showSpinner = false;
                              });
                              if (user != null) {
                                FirebaseFirestore.instance
                                    .collection('user')
                                    .where('email', isEqualTo: email)
                                    .snapshots()
                                    .listen(
                                      (data) => set_user(
                                          data.docs[0]['email'],
                                          data.docs[0]['name'],
                                          data.docs[0]['password'],
                                          data.docs[0]['gender'],
                                          data.docs[0]['height'],
                                          data.docs[0]['weight'],
                                          data.docs[0]['description'],
                                          data.docs[0]['age']),
                                    );
                                Navigator.pushAndRemoveUntil(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            bottomnavigationbar(
                                              user_2: user_2,
                                            )),
                                    (r) => false);
                              }
                            } on FirebaseAuthException catch (e) {
                              setState(() {
                                showSpinner = false;
                              });
                              if (e.code == 'user-not-found') {
                                showDialog<void>(
                                  context: context,
                                  barrierDismissible:
                                      false, // user must tap button!
                                  builder: (BuildContext context) {
                                    return AlertDialog(
                                      title: const Text('Unsuccessful.'),
                                      content: SingleChildScrollView(
                                        child: ListBody(
                                          children: const <Widget>[
                                            Text('User not found.'),
                                          ],
                                        ),
                                      ),
                                      actions: <Widget>[
                                        TextButton(
                                          child: const Text('Okay'),
                                          onPressed: () {
                                            Navigator.pop(context);
                                          },
                                        ),
                                      ],
                                    );
                                  },
                                );
                              } else if (e.code == 'wrong-password') {
                                showDialog<void>(
                                  context: context,
                                  barrierDismissible:
                                      false, // user must tap button!
                                  builder: (BuildContext context) {
                                    return AlertDialog(
                                      title: const Text('Unsuccessful.'),
                                      content: SingleChildScrollView(
                                        child: ListBody(
                                          children: const <Widget>[
                                            Text('Incorrect password.'),
                                          ],
                                        ),
                                      ),
                                      actions: <Widget>[
                                        TextButton(
                                          child: const Text('Okay'),
                                          onPressed: () {
                                            Navigator.pop(context);
                                          },
                                        ),
                                      ],
                                    );
                                  },
                                );
                              }
                            }
                          },
                          child: Text(
                            "Login",
                            style: TextStyle(color: Colors.white),
                          ),
                          style: ButtonStyle(
                              backgroundColor: MaterialStatePropertyAll<Color>(
                                Color(0xFFAC6EBB),
                              ),
                              minimumSize: MaterialStatePropertyAll<Size>(
                                  Size(100, 40))),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
