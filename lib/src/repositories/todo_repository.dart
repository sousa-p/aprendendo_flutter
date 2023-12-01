import 'package:dio/dio.dart';
import 'package:aprendendo_flutter/src/models/todo_model.dart';

class TodoRepository {
  late Dio dio;
  final url = 'https://jsonplaceholder.typicode.com';

  TodoRepository([Dio? client]) : dio = client ?? Dio();

  Future getTodos() async {
    final reponse = await dio.get('$url/todos');
    final list = reponse.data as List;

    return list.map((e) => TodoModel.fromJson(e)).toList();
  }
}
