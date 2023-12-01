import 'package:aprendendo_flutter/src/models/todo_model.dart';
import 'package:aprendendo_flutter/src/repositories/todo_repository.dart';
import 'package:flutter/material.dart';

class HomeController {
  List<TodoModel> todos = [];

  final TodoRepository _repository = TodoRepository();

  ValueNotifier<HomeState> state = ValueNotifier<HomeState>(HomeState.start);

  Future start() async {
    state.value = HomeState.loading;
    try {
      todos = await _repository.getTodos();
      state.value = HomeState.success;
    } catch (e) {
      state.value = HomeState.error;
    }
  }
}

enum HomeState {
  start,
  loading,
  success,
  error;
}
