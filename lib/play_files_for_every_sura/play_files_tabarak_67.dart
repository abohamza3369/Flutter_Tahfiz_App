import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:path_provider/path_provider.dart';
import 'dart:io';
import 'package:dio/dio.dart';
import '/download_files_for_every_sura/download_tabarak_67.dart';

class Play_Files_Of_Tabarak {
  void dispose() {
    //_audioPlayer.dispose();
    // super.dispose();
  }

  // Singleton pattern
  static final Play_Files_Of_Tabarak _instance =
      Play_Files_Of_Tabarak._internal();

  factory Play_Files_Of_Tabarak() => _instance;
  Play_Files_Of_Tabarak._internal();

  AudioPlayer Player1_3 = AudioPlayer();
  AudioPlayer Player4_7 = AudioPlayer();
  Future<void> stopAudio() async {
    await Player1_3.stop();
    await Player4_7.stop();
  }

  //Play_Files_Of_Tabarak();

  Future<void> play_tabarak_1_3() async {
    try {
      //Get the local file directory
      Directory diroctory_path_of_app =
          await getApplicationDocumentsDirectory();
      String filePath =
          '${diroctory_path_of_app.path}/tabarak1_3.mp3'; // Path to your local file

      // Play the audio file in loop
      await Player1_3.setSource(DeviceFileSource(filePath));
      await Player1_3.setReleaseMode(ReleaseMode.loop);
      await Player1_3.play(DeviceFileSource(filePath));
    } catch (e) {
      print("Error:in play tabarak 1- 3 $e");
    }
  }

//______________________________________

  Future<void> play_tabarak_4_7() async {
    try {
      //Get the local file directory
      Directory diroctory_path_of_app =
          await getApplicationDocumentsDirectory();
      String filePath =
          '${diroctory_path_of_app.path}/tabarak4_7.mp3'; // Path to your local file

      // Play the audio file in loop
      await Player4_7.setSource(DeviceFileSource(filePath));
      await Player4_7.setReleaseMode(ReleaseMode.loop);
      await Player4_7.play(DeviceFileSource(filePath));
    } catch (e) {
      print("Error: $e");
    }
  }

//_________________________________________
}
