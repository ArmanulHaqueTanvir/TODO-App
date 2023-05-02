import 'package:flutter/material.dart';
import 'screens/Task_Screen.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/screens/Task_data.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) => TaskData(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: TaskScreen(),
      ),
    );
  }
}
