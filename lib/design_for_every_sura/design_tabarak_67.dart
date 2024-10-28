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

    // Load saved checkbox state on startup
  }

  bool _page_1_isvisible = false;
  bool _page_2_isvisible = false;
  bool _page_3_isvisible = false;
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
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _page_1_isvisible =
                          !_page_1_isvisible; // Toggle visibility
                    });
                  },
                  child: Text(
                      _page_1_isvisible
                          ? "اخف الصفحة الأولى"
                          : "اظهر الصفحة الأولى",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      )),
                ),
              ]),

              //___________________
              SizedBox(
                height: 30,
              ),

              //  every Card contain one file  from page
              //  Row ( button for play sound + check box )
              // the page 1 start
              if (_page_1_isvisible)
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
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
                            ' الاستماع  من 1 -3 ',
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

//________________________________________________
                    // test show and hide the page
//  Row ( button for play sound + check box )
                    SizedBox(
                      height: 10,
                    ),

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
                            '   كررهم  غيبا 20 مرة ',
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
                      height: 30,
                    ),
//________________________________________________
// stop all audio else 4-7
//  listen to ayat 4-7

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
                            ' الاستماع  من 4 -7 ',
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

//________________________________________________

                    SizedBox(
                      height: 10,
                    ),

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
                            '   كررهم  غيبا 20 مرة ',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      // create a check box
                    ),
//________________________________________________
                    SizedBox(
                      height: 30,
                    ),

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
                            '   كرر من 1 -7  غيبا 20 مرة ',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      // create a check box
                    ),

//________________________________________________
// stop all audio
//  but listen to ayat 8- 13
                    SizedBox(
                      height: 30,
                    ),
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
                            play_files_of_tabarak.Player4_7.stop();

                            // then play this audio
                            play_files_of_tabarak.play_tabarak_8_13();
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
                            ' الاستماع  من 8 - 13 ',
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

//________________________________________________

                    SizedBox(
                      height: 10,
                    ),

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
                            '   كررهم  غيبا 20 مرة ',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      // create a check box
                    ),
                    SizedBox(
                      height: 30,
                    ),

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
                            '   كرر من 1 - 13  غيبا 20 مرة ',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      // create a check box
                    ),
                    SizedBox(
                      height: 30,
                    ),
                  ],
                ),

              //________________________________________________
              //_____________________________________________
              // Srart page 2

              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _page_2_isvisible =
                          !_page_2_isvisible; // Toggle visibility
                    });
                  },
                  child: Text(
                      _page_2_isvisible
                          ? "اخف الصفحة الثانية"
                          : "اظهر الصفحة الثانية",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      )),
                ),
              ]),

              //___________________
              SizedBox(
                height: 30,
              ),

              //  every Card contain one file  from page
              //  Row ( button for play sound + check box )
              // the page 1 start
              if (_page_2_isvisible)
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
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
                            play_files_of_tabarak.Player4_7.stop();
                            play_files_of_tabarak.Player8_13.stop();

                            play_files_of_tabarak.Player18_21.stop();
                            play_files_of_tabarak.Player22_27.stop();

                            play_files_of_tabarak.Player27_30.stop();

                            // them play this audio only
                            play_files_of_tabarak.play_tabarak_13_17();
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
                            ' الاستماع  من   13 - 17 ',
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

//________________________________________________
                    // test show and hide the page
//  Row ( button for play sound + check box )
                    SizedBox(
                      height: 10,
                    ),

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
                            '   كررهم  غيبا 20 مرة ',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      // create a check box
                    ),

                    SizedBox(
                      height: 30,
                    ),
//________________________________________________
// stop all audio else 4-7
//  listen to ayat 4-7

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
                            play_files_of_tabarak.Player4_7.stop();
                            play_files_of_tabarak.Player8_13.stop();

                            play_files_of_tabarak.Player13_17.stop();
                            play_files_of_tabarak.Player22_27.stop();

                            play_files_of_tabarak.Player27_30.stop();

                            // them play this audio only
                            play_files_of_tabarak.play_tabarak_18_21();
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
                            ' الاستماع  من    18 - 21 ',
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

//________________________________________________

                    SizedBox(
                      height: 10,
                    ),

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
                            '   كررهم  غيبا 20 مرة ',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      // create a check box
                    ),
//________________________________________________
                    SizedBox(
                      height: 30,
                    ),

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
                            '   كرر من 13 - 21 غيبا 20 مرة ',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      // create a check box
                    ),

//________________________________________________
// stop all audio
//  but listen to ayat 8- 13
                    SizedBox(
                      height: 30,
                    ),
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
                            play_files_of_tabarak.Player4_7.stop();
                            play_files_of_tabarak.Player8_13.stop();

                            play_files_of_tabarak.Player18_21.stop();
                            play_files_of_tabarak.Player13_17.stop();

                            play_files_of_tabarak.Player27_30.stop();

                            // them play this audio only
                            play_files_of_tabarak.play_tabarak_22_27();
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
                            ' الاستماع  من 22 - 27 ',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      // create a check box
                    ),

//________________________________________________

                    SizedBox(
                      height: 10,
                    ),

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
                            '   كررهم  غيبا 20 مرة ',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      // create a check box
                    ),
                    SizedBox(
                      height: 30,
                    ),

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
                            '   كرر من 13 - 27  غيبا 20 مرة ',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      // create a check box
                    ),
                    SizedBox(
                      height: 30,
                    ),
                  ],
                ),
//________________________________________________
//_______________________________________________
// start page 3

              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _page_3_isvisible =
                          !_page_3_isvisible; // Toggle visibility
                    });
                  },
                  child: Text(
                      _page_3_isvisible
                          ? "اخف الصفحة الثالثة"
                          : "اظهر الصفحة الثالثة",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      )),
                ),
              ]),

              //___________________
              SizedBox(
                height: 30,
              ),

              //  every Card contain one file  from page
              //  Row ( button for play sound + check box )
              // the page 1 start
              if (_page_3_isvisible)
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
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
                            play_files_of_tabarak.Player4_7.stop();
                            play_files_of_tabarak.Player8_13.stop();

                            play_files_of_tabarak.Player18_21.stop();
                            play_files_of_tabarak.Player22_27.stop();

                            play_files_of_tabarak.Player13_17.stop();

                            // them play this audio only
                            play_files_of_tabarak.play_tabarak_27_30();
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
                            ' الاستماع  من   27 - 30 ',
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

//________________________________________________
                    // test show and hide the page
//  Row ( button for play sound + check box )
                    SizedBox(
                      height: 10,
                    ),

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
                            '   كررهم  غيبا 20 مرة ',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      // create a check box
                    ),

                    SizedBox(
                      height: 30,
                    ),
//________________________________________________
// stop all audio else 4-7
//  listen to ayat 4-7

                    SizedBox(
                      height: 65,
                      child: ConstrainedBox(
                        constraints: BoxConstraints(
                          minWidth: screenWidth * 0.8, // Minimum width
                          maxWidth: screenWidth * 0.8, // Maximum width
                        ), // Set the width you want here
                        child: ElevatedButton(
                          onPressed: () {
                            // repeate all the sura
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
                            '   كرر السورة كلها 50 مرة ',
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                              //letterSpacing: 1,
                            ),
                          ),
                        ),
                      ),
                      // create a check box
                    ),

//________________________________________________

                    SizedBox(
                      height: 10,
                    ),

//________________________________________________
                  ],
                ),

//________________________________________________
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
