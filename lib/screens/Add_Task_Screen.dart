import 'package:flutter/material.dart';
import 'Task_Screen.dart';
import 'task.dart';
import 'package:provider/provider.dart';
import 'Task_data.dart';
import 'Task_Toast.dart';

final ButtonStyle style = ElevatedButton.styleFrom(
  backgroundColor: Colors.lightBlueAccent,
  textStyle: const TextStyle(
    fontSize: 30,
    color: Colors.white,
  ),
);

class AddTaskScreen extends StatelessWidget {
  late String newTaskTitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: Column(
          children: [
            const Text(
              'Add  Task',
              style: TextStyle(
                fontSize: 30.0,
                color: Colors.lightBlueAccent,
                fontWeight: FontWeight.bold,
              ),
            ),
            TextField(
              autocorrect: true,
              onChanged: (newText) {
                newTaskTitle = newText;
              },
              autofocus: true,
              textAlign: TextAlign.center,
              style: TextStyle(),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              style: style,
              onPressed: () {
                try {
                  Provider.of<TaskData>(context).addTask(newTaskTitle);
                } catch (e) {
                  print(e);
                }
                Navigator.pop(context);
              },
              child: const Text(
                'Add one',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}



















// import 'package:flutter/material.dart';
// import 'package:todo_app/screens/task.dart';

// class AddTaskScreen extends StatefulWidget {
//   const AddTaskScreen({super.key});

//   @override
//   State<AddTaskScreen> createState() => _AddTaskScreenState();
// }

// class _AddTaskScreenState extends State<AddTaskScreen> {
//   List<Task> tasks = [
//     Task(name: 'Buy Milk'),
//     Task(name: 'Buy eggs'),
//     Task(name: 'Buy Car'),
//   ];
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: const Color(0xff757575),
//       child: Container(
//         padding: EdgeInsets.all(20),
//         decoration: const BoxDecoration(
//           color: Colors.white,
//           borderRadius: BorderRadius.only(
//             topLeft: Radius.circular(20),
//             topRight: Radius.circular(20),
//           ),
//         ),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.stretch,
//           children: [
//             Text(
//               'Add Task',
//               textAlign: TextAlign.center,
//               style: TextStyle(
//                 fontSize: 30.0,
//                 color: Colors.lightBlueAccent,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//             TextField(
//               autofocus: true,
//               textAlign: TextAlign.center,
//               style: TextStyle(),
//             ),
//             SizedBox(
//               height: 10,
//             ),
//             TextButton(
//               onPressed: () {
                 // implement some functionality here...
//               },
//               child: Text(
//                 'Add One ',
//                 style: TextStyle(
//                     color: Colors.black,
//                     fontSize: 20.0,
//                     fontWeight: FontWeight.bold,
//                     height: 2.0),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
