import 'dart:io';
import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:path_provider/path_provider.dart';
import 'package:flutter_tutorials/const/constant.dart';
import 'package:flutter_tutorials/vars/global_vars.dart';

// Get a file from App Folder into memory
Future<File> getFile(String filename) async{
  // Check file existings
  Directory dir = await getApplicationDocumentsDirectory();
  String filePath = dir.path + "/$filename";
  File file = new File(filePath);
  return file;
}

// Get a file path from App Folder
Future<String> getFilePath(filename) async{
  Directory dir = await getApplicationDocumentsDirectory();
  String filePath = dir.path + "/$filename";
  return filePath;
}

// Read the default setting file
Future<String> loadAssetStringFile(String file) async{
  return await rootBundle.loadString(file);
}

// Load login file
Future<Map> loadLoginFile() async{
  Map loginFileContent;
  String filePath = await getFilePath(LOGIN_FILENAME);
  File jsonFile = new File(filePath);
  bool fileExists = await jsonFile.exists();
  String content;
  if(fileExists){
    content = await jsonFile.readAsString();
  }
  else{
    content = "";//await loadAssetStringFile(DEFAULT_LOGIN_FILE);
  }
  loginFileContent = json.decode(content);

  return loginFileContent;
}

// Save the Login status to file, if user is logged in, then include the loginInfo
Future<void>? saveLoginStatus(String loginStatus, Map? info) async{
  /*Map fileContent = {};

  fileContent.addAll({LOGIN_STATUS: loginStatus});
  if(loginStatus == STATUS_LOGIN){
    fileContent.addAll({LOGIN_INFO: info!}); // save the login infomation to the key "info"
  }
  String filePath = await getFilePath(LOGIN_FILENAME);
  File jsonFile = new File(filePath);

  bool fileExists = await jsonFile.exists();
  if (!fileExists) {
    await jsonFile.create();
  }

  jsonFile.writeAsString(json.encode(fileContent));*/
}

Future<void> deleteLoginFile() async{
  String filePath = await getFilePath(LOGIN_FILENAME);
  File jsonFile = new File(filePath);

  bool fileExists = await jsonFile.exists();
  if(fileExists){
    jsonFile.delete(recursive: true);
  }
}
