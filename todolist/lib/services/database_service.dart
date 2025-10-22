import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'package:todolist/model/todo_model.dart';

class DatabaseService{
  static final DatabaseService instance = DatabaseService._constructor();
  DatabaseService._constructor();

  static Database? _database;
  static const String _tableName = 'todos';

  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _initDatabase();
    return _database!;
  }

  Future<Database> _initDatabase() async {
    String path = join(await getDatabasesPath(), 'todo_database.db');

    return await openDatabase(
      path,
      version: 1,
      onCreate: _onCreate,
    );
  }

  Future<void> _onCreate(Database db, int version) async {
    await db.execute('''
      CREATE TABLE $_tableName(
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        title TEXT,
        isCompleted INTEGER
      )
    ''');
  }

// CRUD
  //create
  Future<int> insertTodo(TODOModel todo) async {
    Database db = await instance.database;
    return await db.insert(_tableName, todo.toMap());
  }
  //read
  Future<List<TODOModel>> getAllTodos() async {
    Database db = await instance.database;
    final List<Map<String, dynamic>> maps = await db.query(_tableName);

    return List.generate(maps.length, (i) {
      return TODOModel.fromMap(maps[i]);
    });
  }

  //update
  Future<int> updateTodo(TODOModel todo) async {
    Database db = await instance.database;
    return await db.update(
      _tableName,
      todo.toMap(),
      where: 'id = ?',
      whereArgs: [todo.id],
    );
  }

  //Delete
  Future<int> deleteTodo(int id) async {
    Database db = await instance.database;
    return await db.delete(
      _tableName,
      where: 'id = ?',
      whereArgs: [id],
    );
  }

}