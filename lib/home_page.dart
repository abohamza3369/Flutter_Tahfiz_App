import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:path_provider/path_provider.dart';
import 'dart:io';
import 'package:dio/dio.dart';
import 'package:testapp/change_icon_if_files_every_sura_exist/change_icon_if_files_tabarak_67_exist.dart';
import '/download_files_for_every_sura/download_tabarak_67.dart';
import 'package:testapp/design_for_every_sura/design_tabarak_67.dart';
import 'package:provider/provider.dart';
import 'package:testapp/design_for_every_sura/design_tabarak_67.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

//_________
class _MyHomePageState extends State<MyHomePage> {
  final AudioPlayer _audioPlayer = AudioPlayer();

  // start with initial values
  String url = '';
  String filename = '';
  var progress = 0.0;

  // we create a variables to be true if files exist after downloading using dio
  // then use them in if condition to show Scaffoldmassenger it's contain the download is completed successfully
  // do this for all files

  //______________________________

// create object for Download files of tabarak
// to call all methods in this class

  DownloadTabarak67 download_tabarak_67 = DownloadTabarak67();

  //______________________________

  @override
  void initState() {
    super.initState();
  }

  //________________________________

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.amber,
      appBar: AppBar(
        backgroundColor: Colors.amber,
        centerTitle: true,
        title: const Text('اختر سورة لتحفظها'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(8),
        children: [
          SizedBox(
            height: 10,
          ),

          // every Row ( button for navigate to sura's screen
          //and button for download sura's file)
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                height: 65,
                child: ConstrainedBox(
                  constraints: BoxConstraints(
                      //  minWidth: screenWidth * 0.3, // Minimum width
                      //  maxWidth: screenWidth * 0.2, // Maximum width
                      ), // Set the width you want here
                  child: ElevatedButton.icon(
                    label: Text(''),
                    onPressed: () async {
                      download_tabarak_67.download_tabarak_1_3();
                      download_tabarak_67.download_tabarak_4_7();
                      download_tabarak_67.download_tabarak_8_13();

                      download_tabarak_67.download_tabarak_13_17();
                      download_tabarak_67.download_tabarak_18_21();
                      download_tabarak_67.download_tabarak_22_27();
                      download_tabarak_67.download_tabarak_27_30();

                      //______________________________________
                      bool? _tabarak_1_3_exist =
                          await download_tabarak_67.download_tabarak_1_3();

                      bool? _tabarak_4_7_exist =
                          await download_tabarak_67.download_tabarak_4_7();

                      bool? _tabarak_8_13_exist =
                          await download_tabarak_67.download_tabarak_8_13();

                      bool? _tabarak_13_17_exist =
                          await download_tabarak_67.download_tabarak_13_17();

                      bool? _tabarak_18_21_exist =
                          await download_tabarak_67.download_tabarak_18_21();

                      bool? _tabarak_22_27_exist =
                          await download_tabarak_67.download_tabarak_22_27();

                      bool? _tabarak_27_30_exist =
                          await download_tabarak_67.download_tabarak_27_30();
                      // in this if cindition we check all files are existed( with &)
                      // when all files are existed we will show the message completed
                      // to change the icon of download button to check
                      // create boolean variable that we change to true
                      // if all files are existed

                      if (_tabarak_1_3_exist == true &&
                          _tabarak_4_7_exist == true &&
                          _tabarak_8_13_exist == true &&
                          _tabarak_13_17_exist == true &&
                          _tabarak_18_21_exist == true &&
                          _tabarak_22_27_exist == true &&
                          _tabarak_27_30_exist == true) {
                        // change the change_icon_of_button value to true
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text(
                              '  تم تحميل الملفات بحمد الله تعالى  ',
                            ),
                          ),
                        );
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      // Set dynamic width as a percentage of screen width
                      // 80% of screen width
                      backgroundColor: const Color.fromARGB(255, 255, 255, 255),

                      padding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                      // Text color
                      elevation: 8,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      shadowColor: Colors.blue.withOpacity(0.5),
                    ),
                    icon: Icon(
                      Icons.download,
                      size: 30,
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              //__________________________________-
              // button for play sound
              Expanded(
                child: SizedBox(
                  height: 65,
                  child: ConstrainedBox(
                    constraints: BoxConstraints(
                        //minWidth: screenWidth * 0.6, // Minimum width
                        // maxWidth: screenWidth * 0.7, // Maximum width
                        ), // Set the width you want here
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Design_Tabarak_67()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        // Set dynamic width as a percentage of screen width
                        // 80% of screen width
                        backgroundColor:
                            const Color.fromARGB(255, 255, 255, 255),

                        padding:
                            EdgeInsets.symmetric(vertical: 18, horizontal: 50),
                        // Text color
                        elevation: 8,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        shadowColor: Colors.blue.withOpacity(0.5),
                      ),
                      child: Text(
                        '   67 -تبارك ',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          //letterSpacing: 1,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              // create a check box
            ],
          ),
          //___________for card

          // test show and hide the page

//________________________________________________-
        ],
      ),
    );
  }
}
