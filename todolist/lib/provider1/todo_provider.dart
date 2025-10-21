import 'package:flutter/foundation.dart';
import 'package:todolist/model/todo_model.dart'; // Import foundation.dart for ChangeNotifier

class TODOProvider extends ChangeNotifier {
  final List<TODOModel> _todoList = [];

  List<TODOModel> get allTODOList => _todoList;

  void addTODO(TODOModel todoModel){
    _todoList.add(todoModel);
    notifyListeners();
  }
  void removeTODO(TODOModel todoModel){
    final index = _todoList.indexOf(todoModel);
    _todoList.removeAt(index);
    notifyListeners();
  }
  void todoStatusChange(TODOModel todoModel){
    final index = _todoList.indexOf(todoModel);
    _todoList[index].toggleCompleted();
    notifyListeners();
  }
}
