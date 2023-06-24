import 'package:flutter/material.dart';
import 'package:front_end_cop_mate/elements/normalbutton.dart';
import 'package:front_end_cop_mate/screens/login_screen.dart';
import 'package:front_end_cop_mate/screens/register_user.dart';

class welcome_screen extends StatefulWidget {
  static const String id = 'welcome_screen';

  @override
  State<welcome_screen> createState() => _welcome_screenState();
}

class _welcome_screenState extends State<welcome_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue[100],
      body: Center(
        child: SafeArea(
          child: Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
                // gradient: LinearGradient(
                //   begin: Alignment.topRight,
                //   end: Alignment.bottomLeft,
                //   colors: [
                //     Colors.indigo.shade400,
                //     Colors.deepOrange.shade200,
                //   ],
                // ),
                color: Colors.white),
            child: Column(
              children: [
                SizedBox(
                  height: 50,
                ),
                CircleAvatar(
                  radius: 100,
                  backgroundColor: Colors.indigo.shade100,
                  backgroundImage: AssetImage('images/heart.jpeg'),
                ),
                SizedBox(
                  height: 40,
                ),
                Text("Virtual Aid",
                    style: TextStyle(
                        fontFamily: "Lobster",
                        fontSize: 60,
                        color: Colors.black)),
                SizedBox(
                  height: 50,
                ),
                Text("Welcome to Virtual Aid",
                    style: TextStyle(
                        fontFamily: "Calibri",
                        fontSize: 30,
                        color: Colors.black)),
                SizedBox(
                  height: 10,
                ),
                Text("Empowering early diagnosis",
                    style: TextStyle(
                        fontFamily: "Calibri",
                        fontSize: 20,
                        color: Colors.grey)),
                SizedBox(
                  height: 10,
                ),Text("Saving lives",
                    style: TextStyle(
                        fontFamily: "Calibri",
                        fontSize: 20,
                        color: Colors.grey)),
                SizedBox(
                  height: 50,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, login_screen.id);
                  },
                  child: Text(
                    "Login",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStatePropertyAll<Color>(Color(0xFF8008CA)),
                    minimumSize: MaterialStatePropertyAll<Size>(Size(100, 30)),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                          side: BorderSide(color: Colors.white)),

                    ),
                  ),
                ),
                SizedBox(
                  height: 0,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, register_user.id);
                  },
                  child: Text(
                    "Register",
                    style: TextStyle(fontSize: 20, color: Colors.blueAccent),
                  ),
                  style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll<Color>(
                      Color(0xFFFFFFFF),
                    ),
                    minimumSize: MaterialStatePropertyAll<Size>(Size(100, 30)),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                          side: BorderSide(color: Colors.white)),

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
