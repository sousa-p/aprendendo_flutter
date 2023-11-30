void main() {
  print(stringToInt('d'));
}

int stringToInt(String text) {
  int parsedValue;

  try {
    parsedValue = int.parse(text);
  } catch (e) {
    throw Exception('Convertion error');
  }
  return parsedValue;
}
