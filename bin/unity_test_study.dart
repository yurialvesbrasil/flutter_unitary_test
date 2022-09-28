import 'package:flutter_unitary_test/person.dart';

void main(List<String> arguments) {
  final person = Person(name: 'Yuri Brasil', age: 40, height: 1.82, weight: 77);

  print("Yuri's IMC: ${person.imc}");
  print("Classificação IMC é: ${person.classificacao}");
}
