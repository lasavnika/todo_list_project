import 'package:hive_flutter/hive_flutter.dart';

class ToDoDatabase{
  List toDoList = [];
  final _myBox = Hive.box('mybox');

  void createInitialData(){
    toDoList = [
      ["Урок по Flutter ", false],
      ["Чтение", false],
      ["Тренировка", false],
    ];
  }

  // load the data from the database
  void loadData(){
    toDoList = _myBox.get("TODOLIST");
  }
  //update the database
  void updateDatabase(){
    _myBox.put("TODOLIST", toDoList);
  }
}
