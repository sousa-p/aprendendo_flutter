import 'package:aprendendo_flutter/src/models/todo_model.dart';
import 'package:aprendendo_flutter/src/repositories/todo_repository.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final TodoRepository repository = TodoRepository();
  test('Trazer uma lista de Todos', () async {
    final List<TodoModel> todos = await repository.getTodos();

    repository.getTodos().then((value) {
      expect(todos[0].id, 1);
    });
  });
}
