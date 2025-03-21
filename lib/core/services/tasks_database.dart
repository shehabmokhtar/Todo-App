import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'package:todo_app/core/services/helpers.dart';

class TasksDatabase {

static init() async{
  // Get a location using getDatabasesPath
var databasesPath = await getDatabasesPath();
String path = join(databasesPath, 'todo_app_database.db');
  try {
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
}