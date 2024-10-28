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
  AudioPlayer Player8_13 = AudioPlayer();

  AudioPlayer Player13_17 = AudioPlayer();
  AudioPlayer Player18_21 = AudioPlayer();
  AudioPlayer Player22_27 = AudioPlayer();

  AudioPlayer Player27_30 = AudioPlayer();

  Future<void> stopAudio() async {
    await Player1_3.stop();
    await Player4_7.stop();
    await Player8_13.stop();

    await Player13_17.stop();
    await Player18_21.stop();
    await Player22_27.stop();

    await Player27_30.stop();
  }

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

  Future<void> play_tabarak_8_13() async {
    try {
      //Get the local file directory
      Directory diroctory_path_of_app =
          await getApplicationDocumentsDirectory();
      String filePath =
          '${diroctory_path_of_app.path}/tabarak8_13.mp3'; // Path to your local file

      // Play the audio file in loop
      await Player8_13.setSource(DeviceFileSource(filePath));
      await Player8_13.setReleaseMode(ReleaseMode.loop);
      await Player8_13.play(DeviceFileSource(filePath));
    } catch (e) {
      print("Error: $e");
    }
  }

//_________________________________________

  Future<void> play_tabarak_13_17() async {
    try {
      //Get the local file directory
      Directory diroctory_path_of_app =
          await getApplicationDocumentsDirectory();
      String filePath =
          '${diroctory_path_of_app.path}/tabarak13_17.mp3'; // Path to your local file

      // Play the audio file in loop
      await Player13_17.setSource(DeviceFileSource(filePath));
      await Player13_17.setReleaseMode(ReleaseMode.loop);
      await Player13_17.play(DeviceFileSource(filePath));
    } catch (e) {
      print("Error: $e");
    }
  }

//_________________________________________
  Future<void> play_tabarak_18_21() async {
    try {
      //Get the local file directory
      Directory diroctory_path_of_app =
          await getApplicationDocumentsDirectory();
      String filePath =
          '${diroctory_path_of_app.path}/tabarak18_21.mp3'; // Path to your local file

      // Play the audio file in loop
      await Player18_21.setSource(DeviceFileSource(filePath));
      await Player18_21.setReleaseMode(ReleaseMode.loop);
      await Player18_21.play(DeviceFileSource(filePath));
    } catch (e) {
      print("Error: $e");
    }
  }

//_________________________________________
  Future<void> play_tabarak_22_27() async {
    try {
      //Get the local file directory
      Directory diroctory_path_of_app =
          await getApplicationDocumentsDirectory();
      String filePath =
          '${diroctory_path_of_app.path}/tabarak22_27.mp3'; // Path to your local file

      // Play the audio file in loop
      await Player22_27.setSource(DeviceFileSource(filePath));
      await Player22_27.setReleaseMode(ReleaseMode.loop);
      await Player22_27.play(DeviceFileSource(filePath));
    } catch (e) {
      print("Error: $e");
    }
  }

//_________________________________________
  Future<void> play_tabarak_27_30() async {
    try {
      //Get the local file directory
      Directory diroctory_path_of_app =
          await getApplicationDocumentsDirectory();
      String filePath =
          '${diroctory_path_of_app.path}/tabarak27_30.mp3'; // Path to your local file

      // Play the audio file in loop
      await Player27_30.setSource(DeviceFileSource(filePath));
      await Player27_30.setReleaseMode(ReleaseMode.loop);
      await Player27_30.play(DeviceFileSource(filePath));
    } catch (e) {
      print("Error: $e");
    }
  }

//_________________________________________
}
