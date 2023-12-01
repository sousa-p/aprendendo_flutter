import 'package:aprendendo_flutter/src/controllers/home_controller.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final HomeController homeController = HomeController();

  test('Deve resgatar todos os ToDos', () async {
    expect(homeController.state.value, HomeState.start);
    await homeController.start();
    expect(homeController.state.value, HomeState.success);
  });
}
