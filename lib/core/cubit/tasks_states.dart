import 'package:equatable/equatable.dart';
import 'package:todo_app/core/models/task_model.dart';

abstract class TasksState extends Equatable {
  const TasksState();

  @override
  List<Object> get props => [];
}

class TasksInitial extends TasksState {}

class GetTasksSucess extends TasksState {
  final List<TaskModel> tasks;

  const GetTasksSucess(this.tasks);

  @override
  List<Object> get props => [tasks];
}

class GetTasksError extends TasksState {
  final String error;

  const GetTasksError(this.error);

  @override
  List<Object> get props => [error];
}

