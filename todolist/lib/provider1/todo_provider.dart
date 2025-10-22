import 'package:flutter/foundation.dart';
import 'package:todolist/model/todo_model.dart';
import 'package:todolist/services/database_service.dart';

class TODOProvider extends ChangeNotifier {

  final DatabaseService _dbService = DatabaseService.instance;

  final List<TODOModel> _todoList = [];
  List<TODOModel> get allTODOList => _todoList;

  //initial fetch
  Future<void> fetchTodos() async {
    final todos = await _dbService.getAllTodos();
    _todoList.clear();
    _todoList.addAll(todos);
    notifyListeners();
  }

  void addTODO(TODOModel todoModel) async{
    final id = await _dbService.insertTodo(todoModel);

    todoModel.id = id;

    _todoList.add(todoModel);
    notifyListeners();
  }
  void removeTODO(TODOModel todoModel) async{
    if (todoModel.id == null) return;

    await _dbService.deleteTodo(todoModel.id!);
    _todoList.remove(todoModel);
    notifyListeners();
  }
  void todoStatusChange(TODOModel todoModel) async{
    todoModel.toggleCompleted();
    await _dbService.updateTodo(todoModel);
    notifyListeners();
  }
}
