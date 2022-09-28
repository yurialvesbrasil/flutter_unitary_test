import 'dart:math' as math;

class Person {
  final String name;
  final int age;
  final double height;
  final double weight;

  Person(
      {required this.name,
      required this.age,
      required this.height,
      required this.weight});

  double get imc {
    return (((weight / math.pow(height, 2)) * 100).roundToDouble()) / 100;
  }

  String get classificacao {
    double _imc = imc;
    if (_imc < 18.5) {
      return 'MAGREZA';
    } else if (_imc >= 18.5 && _imc <= 24.9) {
      return 'NORMAL';
    } else if (_imc >= 25.0 && _imc <= 29.9) {
      return 'SOBREPESO';
    } else if (_imc >= 30.0 && _imc <= 39.9) {
      return 'OBESIDADE';
    } else {
      return 'OBESIDADE GRAVE';
    }
  }
}
