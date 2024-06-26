import 'package:flutter/material.dart';
import 'package:todo_app/models/todo.dart';
import 'package:todo_app/widgets/dialog_box.dart';
import 'package:todo_app/widgets/todo_tile.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // constroller
  final _controller = TextEditingController();

  // List of todo tasks
  List<ToDo> todoList = [
    ToDo(taskName: "Learn Flutter", taskCompleted: false),
    ToDo(taskName: 'Do More Flutter Coding', taskCompleted: false)
  ];

  // checkbox was tapped
  void checkBoxChanged(bool? value, int index) {
    setState(() {
      todoList[index].taskCompleted = !todoList[index].taskCompleted;
    });
  }

  void onSave() {
    setState(() {
      todoList.add(ToDo(taskName: _controller.text, taskCompleted: false));
      _controller.clear();
    });
    Navigator.of(context).pop();
  }

  // create a new Task
  void createNewTask() {
    showDialog(
      context: context,
      builder: (context) {
        return DialogBox(
          controller: _controller,
          onCancel: () => Navigator.of(context).pop(),
          onSave: onSave,
        );
      },
    );
  }

  // delete a task
  void deleteTask(BuildContext context, int index) {
    setState(() {
      // todoList.
    });
  }

  @override
  Widget build(BuildContext context) {
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
            taskName: todoList[index].taskName,
            taskCompleted: todoList[index].taskCompleted,
            onChanged: (value) => checkBoxChanged(value, index),
            deleteFunction: (context) => deleteTask(context, index),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: createNewTask,
        child: const Icon(Icons.add),
      ),
    );
  }
}
