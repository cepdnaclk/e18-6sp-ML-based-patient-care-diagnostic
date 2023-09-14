import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:front_end_cop_mate/bottomnavgationbar.dart';
import 'package:front_end_cop_mate/models/Vehicle.dart';
import 'package:front_end_cop_mate/screens/settings.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:front_end_cop_mate/elements/heading.dart';
import 'package:http/http.dart' as http;
import 'package:toggle_switch/toggle_switch.dart';
import 'package:flutter/services.dart';
import 'package:front_end_cop_mate/models/User_2.dart';

class register_vehicle extends StatefulWidget {
  static const String id = 'register_vehicle';
  final User_2 user_2;

  const register_vehicle({
    required this.user_2,
  });

  @override
  State<register_vehicle> createState() => _register_vehicleState();
}

class _register_vehicleState extends State<register_vehicle> {
  @override
  String email = "";
  String vehiclenumber = "";
  String name = "";
  String telephone = "";
  bool showSpinner = false;
  String Gender = "";
  String weight = "";
  String height = "";
  String age = "";

  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();

  Widget _buildgender() {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white54,
      ),
      height: 40,
      child: Row(
        children: [
          SizedBox(
            width: 10,
          ),
          Text("Gender:", style: TextStyle(fontSize: 15)),
          SizedBox(
            width: 20,
          ),
          ToggleSwitch(
              minWidth: 70.0,
              cornerRadius: 20.0,
              activeBgColors: [
                [Colors.pink[800]!],
                [Colors.purple[800]!]
              ],
              activeFgColor: Colors.white,
              inactiveBgColor: Colors.grey,
              inactiveFgColor: Colors.white,
              initialLabelIndex: 1,
              totalSwitches: 2,
              labels: ['Male', 'Female'],
              radiusStyle: true,
              onToggle: (index) {
                if (index == 1) {
                  index = 0;
                } else {
                  index = 1;
                }
                Gender = (index.toString());
                print('switched to: $index');
              }),
        ],
      ),
    );
  }

  Widget _buildage() {
    return TextFormField(
      validator: (value) {
        if (value!.isEmpty) {
          return 'Enter age';
        }

        return null;
      },
      onSaved: (value) {
        if (value != null && value.isNotEmpty) {
          age = (value);
        }
      },
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        labelText: "Age",
        icon: Icon(
          FontAwesomeIcons.child,
          color: Colors.black,
        ),
        hintText: "Age",
        hintStyle: TextStyle(color: Colors.grey),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
        ),
      ),
      keyboardType: TextInputType.number,
      inputFormatters: <TextInputFormatter>[
        FilteringTextInputFormatter.digitsOnly
      ],
    );
  }

  Widget _buildheight() {
    return TextFormField(
      validator: (value) {
        if (value!.isEmpty) {
          return 'Enter Height';
        }
        return null;
      },
      onSaved: (value) {
        if (value != null && value.isNotEmpty) {
          height = (value);
        }
      },
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        labelText: "Height",
        icon: Icon(
          FontAwesomeIcons.ruler,
          color: Colors.black,
        ),
        hintText: "Height",
        hintStyle: TextStyle(color: Colors.grey),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
        ),
      ),
      keyboardType: TextInputType.number,
      inputFormatters: <TextInputFormatter>[
        FilteringTextInputFormatter.digitsOnly
      ],
    );
  }

  Widget _buildweight() {
    return TextFormField(
      validator: (value) {
        if (value!.isEmpty) {
          return 'Enter Weight';
        }
        return null;
      },
      onSaved: (value) {
        if (value != null && value.isNotEmpty) {
          weight = (value);
        }
      },
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        labelText: "weight",
        icon: Icon(
          FontAwesomeIcons.ruler,
          color: Colors.black,
        ),
        hintText: "weight",
        hintStyle: TextStyle(color: Colors.grey),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
        ),
      ),
      keyboardType: TextInputType.number,
      inputFormatters: <TextInputFormatter>[
        FilteringTextInputFormatter.digitsOnly
      ],
    );
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
          color: Colors.black,
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

  Widget _buildvehiclenumber() {
    return TextFormField(
      validator: (value) {
        if (value!.isEmpty) {
          return 'Enter Vehicle Number';
        }

        return null;
      },
      onSaved: (value) {
        if (value != null && value.isNotEmpty) {
          vehiclenumber = value;
        }
      },
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        labelText: "Id",
        icon: Icon(
          FontAwesomeIcons.car,
          color: Colors.black,
        ),
        hintText: "Vehicle Number",
        hintStyle: TextStyle(color: Colors.grey),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
        ),
      ),
    );
  }

  Widget _buildname() {
    return TextFormField(
      validator: (value) {
        if (value!.isEmpty) {
          return 'Enter Name';
        }
        return null;
      },
      onSaved: (value) {
        if (value != null && value.isNotEmpty) {
          name = value;
        }
      },
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        labelText: "Name",
        icon: Icon(
          FontAwesomeIcons.user,
          color: Colors.black,
        ),
        hintText: "Name",
        hintStyle: TextStyle(color: Colors.grey),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
        ),
      ),
    );
  }

  Widget _buildtelephonenumber() {
    return TextFormField(
      obscureText: true,
      validator: (value) {
        if (value!.isEmpty) {
          return 'Enter Telephone';
        }

        return null;
      },
      onSaved: (value) {
        if (value != null && value.isNotEmpty) {
          telephone = value;
        }
      },
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        labelText: "Telephone Number",
        icon: Icon(
          FontAwesomeIcons.key,
          color: Colors.black,
        ),
        hintText: "Telephone Number",
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
      body: SingleChildScrollView(
        child: ModalProgressHUD(
          inAsyncCall: showSpinner,
          child: SafeArea(
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [
                    Color(0xFF8008CA),
                    Colors.white,
                  ],
                ),
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  heading(
                      string: "Change Details",
                      icon: FontAwesomeIcons.user,
                      space: 40),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    padding: EdgeInsets.all(30),
                    child: Form(
                      key: _formkey,
                      child: Column(
                        children: <Widget>[
                          _buildage(),
                          SizedBox(height: 20),
                          _buildgender(),
                          SizedBox(height: 20),
                          _buildheight(),
                          SizedBox(height: 20),
                          _buildweight(),
                          SizedBox(height: 20),
                          SizedBox(height: 20),
                          ElevatedButton(
                            onPressed: () async {
                              if (!_formkey.currentState!.validate()) {
                                return;
                              }
                              _formkey.currentState!.save();
                              print("vehcle" + vehiclenumber);
                              final response = await http.post(
                                Uri.parse(
                                    'https://us-central1-cop-mate.cloudfunctions.net/addVehicle'),
                                body: {
                                  "email": email,
                                  "licenseplatenumber": vehiclenumber,
                                  "nic": "9928",
                                  "owner": name,
                                  "telephone": telephone
                                },
                              );

                              if (response.statusCode == 200) {
                                showDialog<void>(
                                  context: context,
                                  barrierDismissible:
                                      false, // user must tap button!
                                  builder: (BuildContext context) {
                                    return AlertDialog(
                                      title: const Text('Successful!'),
                                      content: SingleChildScrollView(
                                        child: ListBody(
                                          children: const <Widget>[
                                            Text(
                                                'Vehicle Registered Successfully!'),
                                          ],
                                        ),
                                      ),
                                      actions: <Widget>[
                                        TextButton(
                                          child: const Text('Okay'),
                                          onPressed: () {
                                            Navigator.pushAndRemoveUntil(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        bottomnavigationbar(
                                                          user_2: User_2(
                                                              email:
                                                                  "tom1@gmail.com",
                                                              name: "Tom Hanks",
                                                              password:
                                                                  "tttttt",
                                                              gender: "1",
                                                              height: "182",
                                                              weight: "83",
                                                              description: "",
                                                              age: "61"),
                                                        )),
                                                (r) => false);
                                          },
                                        ),
                                      ],
                                    );
                                  },
                                );
                              } else {
                                showDialog<void>(
                                  context: context,
                                  barrierDismissible:
                                      false, // user must tap button!
                                  builder: (BuildContext context) {
                                    return AlertDialog(
                                      title: const Text('Unsuccessful'),
                                      content: SingleChildScrollView(
                                        child: ListBody(
                                          children: const <Widget>[
                                            Text('Please try again!'),
                                          ],
                                        ),
                                      ),
                                      actions: <Widget>[
                                        TextButton(
                                          child: const Text('Okay'),
                                          onPressed: () {
                                            Navigator.of(context).pop();
                                          },
                                        ),
                                      ],
                                    );
                                  },
                                );
                              }
                            },
                            child: Text("Change",
                                style: TextStyle(color: Colors.black)),
                            style: ButtonStyle(
                                backgroundColor:
                                    MaterialStatePropertyAll<Color>(
                                        Color(0xFFFBF8BE)),
                                minimumSize: MaterialStatePropertyAll<Size>(
                                    Size(100, 40))),
                          ),
                          SizedBox(
                            height: 300,
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
      ),
    );
  }
}
