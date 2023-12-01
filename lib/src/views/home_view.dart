import 'package:aprendendo_flutter/src/controllers/home_controller.dart';
import 'package:aprendendo_flutter/src/models/todo_model.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final HomeController controller = HomeController();

  _success() {
    return ListView.builder(
        itemCount: controller.todos.length,
        itemBuilder: (context, index) {
          TodoModel todo = controller.todos[index];

          return ListTile(
            title: Text(todo.title!),
            leading: Checkbox(
              value: todo.completed,
              onChanged: null,
            ),
          );
        });
  }

  _error() {
    return Center(
      child: ElevatedButton(
          onPressed: () async => controller.start(),
          child: const Text('Tentar novamente')),
    );
  }

  _start() {
    return Container();
  }

  _loading() {
    return const Center(child: CircularProgressIndicator());
  }

  stateManagement(HomeState state) {
    switch (state) {
      case HomeState.loading:
        return _loading();
      case HomeState.success:
        return _success();
      case HomeState.error:
        return _error();
      default:
        return _start();
    }
  }

  @override
  void initState() {
    super.initState();
    controller.start();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Lista'),
          actions: [
            IconButton(
                onPressed: () async => controller.start(),
                icon: const Icon(Icons.refresh_outlined))
          ],
        ),
        body: AnimatedBuilder(
            animation: controller.state,
            builder: (context, child) {
              return stateManagement(controller.state.value);
            }));
  }
}
