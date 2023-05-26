import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:todo_list_project/pages/home_page.dart';


void main () async {
  // init Hive
  await Hive.initFlutter();
  Hive.initFlutter();

  var box = await Hive.openBox('myBox');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  const HomePage(),
      theme: ThemeData( primarySwatch: Colors.green,),
    );
  }
}
