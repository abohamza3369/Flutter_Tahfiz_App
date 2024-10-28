import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:path_provider/path_provider.dart';
import 'dart:io';
import 'package:dio/dio.dart';
import 'package:testapp/play_files_for_every_sura/play_files_tabarak_67.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Design_Tabarak_67 extends StatefulWidget {
  const Design_Tabarak_67({super.key});

  @override
  State<Design_Tabarak_67> createState() => _Design_Tabarak_67State();
}

class _Design_Tabarak_67State extends State<Design_Tabarak_67> {
  Play_Files_Of_Tabarak play_files_of_tabarak = Play_Files_Of_Tabarak();

// for select the check box for the al ayat the saved by user

// for responsive screen

  void dispose() {
    super.dispose();
  }

//________________________
// for save check box value by user
  void initState() {
    super.initState();
    _loadCheckboxState_p1_1();
    _loadCheckboxState_p1_2();
    _loadCheckboxState_p1_3(); // Load saved checkbox state on startup
  }

  bool _Check_p1_1 = false;
  bool _Check_p1_2 = false;
  bool _Check_p1_3 = false;

  // Load checkbox state from shared preferences
  Future<void> _loadCheckboxState_p1_1() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      _Check_p1_1 = prefs.getBool('_Check_p1_1') ??
          false; // Default to false if no value found
    });
  }

  //__________________________
  Future<void> _loadCheckboxState_p1_2() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      _Check_p1_2 = prefs.getBool('_Check_p1_2') ??
          false; // Default to false if no value found
    });
  }

//__________________________________________
  Future<void> _loadCheckboxState_p1_3() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      _Check_p1_3 = prefs.getBool('_Check_p1_3') ??
          false; // Default to false if no value found
    });
  }

//________________________________________________________
  // Save checkbox state to shared preferences
  Future<void> _saveCheckboxState_p1_1(bool value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool('_Check_p1_1', value);
  }

  Future<void> _saveCheckboxState_p1_2(bool value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool('_Check_p1_2', value);
  }

  Future<void> _saveCheckboxState_p1_3(bool value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool('_Check_p1_3', value);
  }

//____________________________________________________
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return WillPopScope(
        onWillPop: () async {
          Navigator.pop(context);

          return false;
        },
        child: Scaffold(
          backgroundColor: Colors.amber,
          appBar: AppBar(
            backgroundColor: Colors.amber,
            centerTitle: true,
            title: const Text('ترسيخ سورة تبارك في الصدر كالجبال ',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                )),
          ),
          body: ListView(
            padding: const EdgeInsets.all(20),
            children: [
              SizedBox(
                height: 20,
              ),

              //________
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Text('الصفحة الأولى',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    )),
              ]),

              //___________________
              SizedBox(
                height: 20,
              ),

              //  every Card contain one file  from page
              //  Row ( button for play sound + check box )

              Row(
                children: [
                  SizedBox(
                    height: 65,
                    child: ConstrainedBox(
                      constraints: BoxConstraints(
                        minWidth: screenWidth * 0.8, // Minimum width
                        maxWidth: screenWidth * 0.8, // Maximum width
                      ), // Set the width you want here
                      child: ElevatedButton(
                        onPressed: () {
                          // first Stop all audio thay playing before
                          play_files_of_tabarak.Player4_7.stop();

                          // them play this audio only
                          play_files_of_tabarak.play_tabarak_1_3();
                        },
                        style: ElevatedButton.styleFrom(
                          // Set dynamic width as a percentage of screen width
                          // 80% of screen width
                          backgroundColor:
                              const Color.fromARGB(255, 255, 255, 255),

                          padding: EdgeInsets.symmetric(
                              vertical: 18, horizontal: 50),
                          // Text color
                          elevation: 8,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          shadowColor: Colors.blue.withOpacity(0.5),
                        ),
                        child: Text(
                          ' الاستماع للآيات من 1 -3 ',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            //letterSpacing: 1,
                          ),
                        ),
                      ),
                    ),
                    // create a check box
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  SizedBox(
                    width: 25,
                    child: Checkbox(
                      value: _Check_p1_1,
                      onChanged: (bool? newValue) {
                        setState(() {
                          _Check_p1_1 = newValue ?? false;
                        });

                        _saveCheckboxState_p1_1(
                            _Check_p1_1); // Save the new state
                      },
                    ),
                  )
                ],
              ),
//________________________________________________
              // test show and hide the page
//  Row ( button for play sound + check box )
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  SizedBox(
                    height: 65,
                    child: ConstrainedBox(
                      constraints: BoxConstraints(
                        minWidth: screenWidth * 0.8, // Minimum width
                        maxWidth: screenWidth * 0.8, // Maximum width
                      ), // Set the width you want here
                      child: ElevatedButton(
                        onPressed: () {
                          // he will repeat not listen
                        },
                        style: ElevatedButton.styleFrom(
                          // Set dynamic width as a percentage of screen width
                          // 80% of screen width
                          backgroundColor:
                              const Color.fromARGB(255, 255, 255, 255),

                          padding: EdgeInsets.symmetric(
                              vertical: 18, horizontal: 50),
                          // Text color
                          elevation: 8,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          shadowColor: Colors.blue.withOpacity(0.5),
                        ),
                        child: Text(
                          '   كرر الآيات غيبا 20 مرة ',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            //letterSpacing: 1,
                          ),
                        ),
                      ),
                    ),
                    // create a check box
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  SizedBox(
                    width: 25,
                    child: Checkbox(
                      value: _Check_p1_2,
                      onChanged: (bool? newValue) {
                        setState(() {
                          _Check_p1_2 = newValue ?? false;
                        });

                        _saveCheckboxState_p1_2(
                            _Check_p1_2); // Save the new state
                      },
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
//________________________________________________
// stop all audio else 4-7
//  listen to ayat 4-7

              Row(
                children: [
                  SizedBox(
                    height: 65,
                    child: ConstrainedBox(
                      constraints: BoxConstraints(
                        minWidth: screenWidth * 0.8, // Minimum width
                        maxWidth: screenWidth * 0.8, // Maximum width
                      ), // Set the width you want here
                      child: ElevatedButton(
                        onPressed: () {
                          // first Stop all audio thay playing before
                          play_files_of_tabarak.Player1_3.stop();

                          // then play this audio
                          play_files_of_tabarak.play_tabarak_4_7();
                        },
                        style: ElevatedButton.styleFrom(
                          // Set dynamic width as a percentage of screen width
                          // 80% of screen width
                          backgroundColor:
                              const Color.fromARGB(255, 255, 255, 255),

                          padding: EdgeInsets.symmetric(
                              vertical: 18, horizontal: 50),
                          // Text color
                          elevation: 8,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          shadowColor: Colors.blue.withOpacity(0.5),
                        ),
                        child: Text(
                          ' الاستماع للآيات من 4 -7 ',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            //letterSpacing: 1,
                          ),
                        ),
                      ),
                    ),
                    // create a check box
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  SizedBox(
                    width: 25,
                    child: Checkbox(
                      value: _Check_p1_3,
                      onChanged: (bool? newValue) {
                        setState(() {
                          _Check_p1_3 = newValue ?? false;
                        });

                        _saveCheckboxState_p1_3(
                            _Check_p1_3); // Save the new state
                      },
                    ),
                  )
                ],
              ),
//________________________________________________

//________________________________________________-
            ],
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              play_files_of_tabarak.stopAudio();
            },
            child: const Icon(Icons.stop),
          ),
        ));
  }
}
