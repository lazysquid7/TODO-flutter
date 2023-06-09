import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';

class TodoDatabase {
  List todoList = [];
  //reference our box
  final _myBox = Hive.box('mybox');

  //run this method if this is the 1st time ever opening this app
  void createInitialData() {
    todoList = [
      ['Make bun', false],
      ['Do exercise', false],
    ];
  }

  //load the data in database
  void loadData() {
    todoList = _myBox.get("TODOLIST");
  }

  //update the database
  void updateDatabase() {
    _myBox.put("TODOLIST", todoList);
  }
}
