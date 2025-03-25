import 'package:flutter/material.dart';
import 'package:todo_app/core/models/task_model.dart';
import 'package:todo_app/core/services/tasks_database.dart';

class TasksScreen extends StatefulWidget {
  const TasksScreen({super.key});

  @override
  State<TasksScreen> createState() => _TasksScreenState();
}

class _TasksScreenState extends State<TasksScreen> {
dynamic tasks;
@override
  void initState() {
    setState(() {
          tasks = _getTasks();

    });
    super.initState();
  }

  _getTasks() async{
    final tasksDatabase = TasksDatabase();
    await tasksDatabase.addTask(TaskModel(id: 1, title: 'Task 1', description: 'Welcome to task one', status: 1, createdAt: DateTime.now().toString(), updatedAt: DateTime.now().toString()));
    return tasks = await TasksDatabase.getTasks();
  }

  @override
  Widget build(BuildContext context) {  
    return Scaffold(
      body: Center(
        child: Text(tasks.toString()), 
      ),  
    );
  }
}