import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_app/core/cubit/tasks_states.dart';
import 'package:todo_app/core/models/task_model.dart';
import 'package:todo_app/core/services/tasks_database.dart';

class TasksCubit extends Cubit<TasksState> {
  TasksCubit() : super(TasksInitial());

  static TasksCubit get(context) => BlocProvider.of(context);


/*
Task Type = 1 => Undone Tasks
Task Type = 2 => Done Tasks
Task Type = 3 => Archived Tasks
*/
  getTasks({int tasksType = 0}){
    try {
      final List<TaskModel> tasks = TasksDatabase.getTasks();
    emit(GetTasksSucess(tasks));
    } catch (e) {
      emit(GetTasksError(e.toString()));
    }
  }

}