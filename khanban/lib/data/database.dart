import 'package:hive/hive.dart';

class khanbanDatabase {

  List khanbanBoard = [

  ];

  //reference the box
  final _myBox =  Hive.box('myBox');

  //add a new board
  void InitialData() {
    khanbanBoard = [
      ["CALENDAR", "PRESS", "BUTTON"]
    ];
  }

  //load data
  void loadData() {
    khanbanBoard = _myBox.get('myBox');
  }

  //update data
  void updateData() {
    
  }

}