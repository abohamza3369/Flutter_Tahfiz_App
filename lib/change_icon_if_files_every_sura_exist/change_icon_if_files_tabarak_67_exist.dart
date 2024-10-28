import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:path_provider/path_provider.dart';
import 'dart:io';
import 'package:dio/dio.dart';
import '/download_files_for_every_sura/download_tabarak_67.dart';
import 'package:testapp/design_for_every_sura/design_tabarak_67.dart';
import 'package:provider/provider.dart';

class Change_Icon_Tabarak_If_Files_Exist {
  bool all_files_exist = false;
  bool _tabarak_1_3 = false;
  bool _tabarak_4_7 = false;
//_______________________________
// function to check if all files exist
  Future<void> check_If_All_Files_Exist() async {
    if (_tabarak_1_3 && _tabarak_4_7) {
      all_files_exist = true;
    }
  }

//_____________________________________________
// function to check if tabarak_1_3 exist
  Future<void> _check_tabarak_1_3() async {
    // Get the app's directory
    final directory = await getApplicationDocumentsDirectory();
    final filePath =
        '${directory.path}/ali.mp3'; // Specify your file name and path
    final file = File(filePath);

    // Check if the file exists

    _tabarak_1_3 = file.existsSync();
  }

//_____________________________________________
// function to check if tabarak_1_3 exist
  Future<void> _check_tabarak_4_7() async {
    // Get the app's directory
    final directory = await getApplicationDocumentsDirectory();
    final filePath =
        '${directory.path}/tabarak_4_7.mp3'; // Specify your file name and path
    final file = File(filePath);

    // Check if the file exists

    _tabarak_4_7 = file.existsSync();
  }
}
