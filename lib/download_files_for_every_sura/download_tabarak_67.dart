import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:path_provider/path_provider.dart';
import 'dart:io';
import 'package:dio/dio.dart';

class DownloadTabarak67 {
  var progress = 0.0;

  DownloadTabarak67();

  // download file contain tabarak ayat from 1_3
  Future<bool?> download_tabarak_1_3() async {
    String url =
        'https://drive.google.com/uc?export=download&id=1lUZnggWrLTKzwXMQ6ftzqv3J5tBtjPL3';
    String filename = 'tabarak1_3.mp3';

    try {
      // download files in any folder you want
      //var dir = Directory('/storage/emulated/0/Download'); // Or any valid directory

      //know the path of app folder by directory
      Directory dir = await getApplicationDocumentsDirectory();

      if (!dir.existsSync()) {
        dir.createSync(recursive: true);
      }

      String fullPath = '${dir.path}/$filename';

      await Dio().download(url, fullPath, onReceiveProgress: (received, total) {
        if (total != -1) {
          progress = (received / total) * 100;
        }
      });

      // Check if the file exists
      File file = File(fullPath);
      if (await file.exists()) {
        return true;
      }

      print('File downloaded to $fullPath');

      // return true;
    } catch (e) {
      //globalfilepath = Error_Downloading_Message;
      print('Error downloading file: $e');
      return false;
    }
  }

  //_____________________________________________

  // download file contain tabarak ayat from 4-7
  Future<bool?> download_tabarak_4_7() async {
    String url =
        'https://drive.google.com/uc?export=download&id=1upi6HxoPruu1Kq7UuqJDw31XJ8ygFA6j';
    String filename = 'tabarak4_7.mp3';

    try {
      // download files in any folder you want
      //var dir = Directory('/storage/emulated/0/Download'); // Or any valid directory

      //know the path of app folder by directory
      Directory dir = await getApplicationDocumentsDirectory();

      if (!dir.existsSync()) {
        dir.createSync(recursive: true);
      }

      String fullPath = '${dir.path}/$filename';

      await Dio().download(url, fullPath, onReceiveProgress: (received, total) {
        if (total != -1) {
          progress = (received / total) * 100;
        }
      });

      // Check if the file exists
      File file = File(fullPath);
      if (await file.exists()) {
        return true;
      }

      print('File downloaded to $fullPath');

      // return true;
    } catch (e) {
      //globalfilepath = Error_Downloading_Message;
      print('Error downloading file: $e');
      return false;
    }
  }

//_____________________________________________

  // download file contain tabarak ayat from 1-7
  Future<bool?> download_tabarak_8_13() async {
    String url =
        'https://drive.google.com/uc?export=download&id=12TNnJfqxz23djghME_0pTPKUEfQ5xxlg';
    String filename = 'tabarak8_13.mp3';

    try {
      // download files in any folder you want
      //var dir = Directory('/storage/emulated/0/Download'); // Or any valid directory

      //know the path of app folder by directory
      Directory dir = await getApplicationDocumentsDirectory();

      if (!dir.existsSync()) {
        dir.createSync(recursive: true);
      }

      String fullPath = '${dir.path}/$filename';

      await Dio().download(url, fullPath, onReceiveProgress: (received, total) {
        if (total != -1) {
          progress = (received / total) * 100;
        }
      });

      // Check if the file exists
      File file = File(fullPath);
      if (await file.exists()) {
        return true;
      }

      print('File downloaded to $fullPath');

      // return true;
    } catch (e) {
      //globalfilepath = Error_Downloading_Message;
      print('Error downloading file: $e');
      return false;
    }
  }
//______________________________________________

//______________________________________________

  Future<bool?> download_tabarak_13_17() async {
    String url =
        'https://drive.google.com/uc?export=download&id=1t6rXKWbXLmzXu5GZLNLf0enYTyiRwclk';
    String filename = 'tabarak13_17.mp3';

    try {
      // download files in any folder you want
      //var dir = Directory('/storage/emulated/0/Download'); // Or any valid directory

      //know the path of app folder by directory
      Directory dir = await getApplicationDocumentsDirectory();

      if (!dir.existsSync()) {
        dir.createSync(recursive: true);
      }

      String fullPath = '${dir.path}/$filename';

      await Dio().download(url, fullPath, onReceiveProgress: (received, total) {
        if (total != -1) {
          progress = (received / total) * 100;
        }
      });

      // Check if the file exists
      File file = File(fullPath);
      if (await file.exists()) {
        return true;
      }

      print('File downloaded to $fullPath');

      // return true;
    } catch (e) {
      //globalfilepath = Error_Downloading_Message;
      print('Error downloading file: $e');
      return false;
    }
  }
//______________________________________________

  Future<bool?> download_tabarak_18_21() async {
    String url =
        'https://drive.google.com/uc?export=download&id=1qq85fBMxqnbE91Gp3tNnhMbb9MYmadnR';
    String filename = 'tabarak18_21.mp3';

    try {
      // download files in any folder you want
      //var dir = Directory('/storage/emulated/0/Download'); // Or any valid directory

      //know the path of app folder by directory
      Directory dir = await getApplicationDocumentsDirectory();

      if (!dir.existsSync()) {
        dir.createSync(recursive: true);
      }

      String fullPath = '${dir.path}/$filename';

      await Dio().download(url, fullPath, onReceiveProgress: (received, total) {
        if (total != -1) {
          progress = (received / total) * 100;
        }
      });

      // Check if the file exists
      File file = File(fullPath);
      if (await file.exists()) {
        return true;
      }

      print('File downloaded to $fullPath');

      // return true;
    } catch (e) {
      //globalfilepath = Error_Downloading_Message;
      print('Error downloading file: $e');
      return false;
    }
  }
//______________________________________________

//______________________________________________

  Future<bool?> download_tabarak_22_27() async {
    String url =
        'https://drive.google.com/uc?export=download&id=1i8LSSDg5Af_-zUzPPVvqtlSWpoFJyGCt';
    String filename = 'tabarak22_27.mp3';

    try {
      // download files in any folder you want
      //var dir = Directory('/storage/emulated/0/Download'); // Or any valid directory

      //know the path of app folder by directory
      Directory dir = await getApplicationDocumentsDirectory();

      if (!dir.existsSync()) {
        dir.createSync(recursive: true);
      }

      String fullPath = '${dir.path}/$filename';

      await Dio().download(url, fullPath, onReceiveProgress: (received, total) {
        if (total != -1) {
          progress = (received / total) * 100;
        }
      });

      // Check if the file exists
      File file = File(fullPath);
      if (await file.exists()) {
        return true;
      }

      print('File downloaded to $fullPath');

      // return true;
    } catch (e) {
      //globalfilepath = Error_Downloading_Message;
      print('Error downloading file: $e');
      return false;
    }
  }
//______________________________________________

  Future<bool?> download_tabarak_27_30() async {
    String url =
        'https://drive.google.com/uc?export=download&id=1hmpTjByl5WdPlJoUgiuHGBWf3OAZ7TW_';
    String filename = 'tabarak27_30.mp3';

    try {
      // download files in any folder you want
      //var dir = Directory('/storage/emulated/0/Download'); // Or any valid directory

      //know the path of app folder by directory
      Directory dir = await getApplicationDocumentsDirectory();

      if (!dir.existsSync()) {
        dir.createSync(recursive: true);
      }

      String fullPath = '${dir.path}/$filename';

      await Dio().download(url, fullPath, onReceiveProgress: (received, total) {
        if (total != -1) {
          progress = (received / total) * 100;
        }
      });

      // Check if the file exists
      File file = File(fullPath);
      if (await file.exists()) {
        return true;
      }

      print('File downloaded to $fullPath');

      // return true;
    } catch (e) {
      //globalfilepath = Error_Downloading_Message;
      print('Error downloading file: $e');
      return false;
    }
  }
//______________________________________________
}
