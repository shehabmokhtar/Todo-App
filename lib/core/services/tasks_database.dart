import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'package:todo_app/core/models/task_model.dart';
import 'package:todo_app/core/services/helpers.dart';

class TasksDatabase {

static init() async{
  // Get a location using getDatabasesPath
var databasesPath = await getDatabasesPath();
String path = join(databasesPath, 'todo_app_database.db');
  try {
    print('Database Initialization');
    await openDatabase(path,version: 1,onCreate: (Database db, int version) async {
    await db.execute('''
      CREATE TABLE tasks (
        id INTEGER PRIMARY KEY,
        title TEXT,
        description TEXT,
        status INTEGER,
        created_at TEXT,
        updated_at TEXT
      )
    ''');
    print('Done');
  });
  } catch (e) {
    printError(e.toString());
  }
}

static  getTasks() async{
  var databasesPath = await getDatabasesPath();
  String path = join(databasesPath, 'todo_app_database.db');
  Database database = await openDatabase(path);
  final List<Map> tasks = await database.rawQuery('SELECT * FROM tasks');
List<TaskModel> tasksList = [];
for (var task in tasks) {
  tasksList.add(TaskModel.fromJson(task as Map<String, dynamic>));
}
  return tasksList;
}

addTask(TaskModel task) async{
  var databasesPath = await getDatabasesPath();
  String path = join(databasesPath, 'todo_app_database.db');
  Database database = await openDatabase(path);
  await database.transaction((txn) async {
    int id = await txn.rawInsert('INSERT INTO tasks(title, description, status, created_at, updated_at) VALUES("${task.title}","${task.description}", 1,"${task.createdAt}","sss")');
    print('Inserted: $id');
  });

}}