import 'package:flutter/material.dart';
import 'package:todo_app/widgets/todo_tile.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // List of todo tasks
  List todoList = [
    ['Learn Flutter', false],
    ['Do More Projects', false]
  ];

  // checkbox was tapped
  void checkBoxChanged() {}

  @override
  Widget build(BuildContext context) {
    print(todoList);
    return Scaffold(
      backgroundColor: Colors.teal[200],
      appBar: AppBar(
        title: const Text(
          "Todo App",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.teal,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.only(top: 16.0),
        itemCount: todoList.length,
        itemBuilder: (context, index) {
          return ToDoTile(
            taskName: todoList[index][0],
            taskCompleted: todoList[index][1],
            onChanged: (value) => checkBoxChanged,
          );
        },
      ),
    );
  }
}
