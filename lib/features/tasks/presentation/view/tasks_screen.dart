import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:todo_app/core/constants/layout_variables.dart';
import 'package:todo_app/core/models/task_model.dart';
import 'package:todo_app/core/services/tasks_database.dart';
import 'package:todo_app/core/widgets/tasks_item_widget.dart';

class TasksScreen extends StatefulWidget {
  const TasksScreen({super.key});

  @override
  State<TasksScreen> createState() => _TasksScreenState();
}

class _TasksScreenState extends State<TasksScreen> {
  @override
  void initState() {
    // TODO: implement initState
TasksDatabase.getTasks();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {  
    return Scaffold(
      body: BlocBuilder(
        builder: (context, state) =>  isLoading? CircularProgressIndicator():ListView.separated(
          padding: const EdgeInsets.all(15),
          itemBuilder:(context, index) => TaskItemWidget(task: TaskModel(
            id: 1,
            title: 'Task $index',
            description: 'Description $index',
            status: 1,
            createdAt: DateFormat('dd/MM/yyyy HH:mm').format(DateTime.now()),
            updatedAt: DateTime.now().toString(),
          ),),
          separatorBuilder:(context, index) => SizedBox(height: 15), itemCount: 10),
      ), 
    );
  }
}
