import 'package:flutter/material.dart';
import 'package:front_end_cop_mate/bottomnavgationbar.dart';
import 'package:front_end_cop_mate/screens/lung_cancer.dart';
import 'package:front_end_cop_mate/screens/one_breaking.dart';
import 'package:front_end_cop_mate/screens/search_vehicles.dart';
import 'package:front_end_cop_mate/screens/welcome_screen.dart';
import 'package:front_end_cop_mate/screens/day_summary_map.dart';
import 'package:front_end_cop_mate/screens/home.dart';
import 'package:front_end_cop_mate/screens/login_screen.dart';
import 'package:front_end_cop_mate/screens/one_breaking.dart';
import 'package:front_end_cop_mate/screens/register_user.dart';
import 'package:front_end_cop_mate/screens/register_vehicle.dart';
import 'package:front_end_cop_mate/screens/settings.dart';
import 'package:front_end_cop_mate/screens/vehicle_analyze.dart';
import 'package:front_end_cop_mate/screens/welcome_screen.dart';
import 'package:front_end_cop_mate/screens/heart.dart';
import 'package:front_end_cop_mate/screens/diabetes.dart';
import 'package:front_end_cop_mate/screens/brain_stroke.dart';
import 'package:front_end_cop_mate/bottomnavgationbar.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:front_end_cop_mate/screens/chatgpt.dart';
import 'package:front_end_cop_mate/models/User_2.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp((CopMate()));
}

class CopMate extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Lato',
        backgroundColor: Color(0xFF8008CA),
      ),
      initialRoute: bottomnavigationbar.id,
      routes: {
        welcome_screen.id: (context) => welcome_screen(),
        day_summary_graph.id: (context) => day_summary_graph(),
        day_summary_map.id: (context) => welcome_screen(),
        login_screen.id: (context) => login_screen(),
        register_user.id: (context) => register_user(),
        register_vehicle.id: (context) => register_vehicle(
            user_2: User_2(
                email: "tom1@gmail.com",
                name: "Tom Hanks",
                password: "tttttt",
                gender: "1",
                height: "182",
                weight: "83",
                description: "",
                age: "61")),
        settings.id: (context) => settings(),
        //vehicle_analyze.id: (context) => vehicle_analyze(),
        bottomnavigationbar.id: (context) => bottomnavigationbar(
            user_2: User_2(
                email: "tom1@gmail.com",
                name: "Tom Hanks",
                password: "tttttt",
                gender: "1",
                height: "182",
                weight: "83",
                description: "",
                age: "61")),
        // /search_vehciles.id: (context) => search_vehciles(),
        heart.id: (context) => heart(),
        lung_cancer.id: (context) => lung_cancer(),
        diabetes.id: (context) => diabetes(),
        brain_stroke.id: (context) => brain_stroke(),
        chatgpt.id: (context) => chatgpt(),
      },
    );
  }
}
