import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_unitary_test/person.dart';

void main() {
  /*setUpAll(() {
    print("É chamado no inicio da suite de testes");
  });

  tearDownAll(() {
    print("É chamado no fim da suite de testes");
  });

  setUp(() {
    print("É chamado no inicio da cada teste");
  });

  tearDown(() {
    print("É chamado no fim da cada teste");
  });*/

  test('Teste calculo de Imc', () {
    final person =
        Person(name: 'Yuri Brasil', age: 40, height: 1.82, weight: 77);

    expect(person.imc, isA<double>());
    expect(person.imc, 23.25);
  });

  group('Teste de classificação do ICM', () {
    test('Teste de classificação para Magreza', () {
      final person =
          Person(name: 'Yuri Brasil', age: 40, height: 1.82, weight: 40);

      expect(person.classificacao, isA<String>());
      expect(person.classificacao, "MAGREZA");
    });

    test('Teste de classificação para Normal', () {
      final person =
          Person(name: 'Yuri Brasil', age: 40, height: 1.82, weight: 77);

      expect(person.classificacao, isA<String>());
      expect(person.classificacao, "NORMAL");
    });

    test('Teste de classificação para Sobre-peso', () {
      final person =
          Person(name: 'Yuri Brasil', age: 40, height: 1.82, weight: 84);

      expect(person.classificacao, isA<String>());
      expect(person.classificacao, "SOBREPESO");
    });

    test('Teste de classificação para Obesidade', () {
      final person =
          Person(name: 'Yuri Brasil', age: 40, height: 1.82, weight: 100);

      expect(person.classificacao, isA<String>());
      expect(person.classificacao, "OBESIDADE");
    });

    test('Teste de classificação para Obesidade grave', () {
      final person =
          Person(name: 'Yuri Brasil', age: 40, height: 1.82, weight: 140);

      expect(person.classificacao, isA<String>());
      expect(person.classificacao, "OBESIDADE GRAVE");
    });
  });
}
