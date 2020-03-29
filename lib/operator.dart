import 'package:args/args.dart';

abstract class Operator {
  ArgResults argResults;

  Operator(this.argResults);

  String run(String value) {
    if (isFlagOn()) {
      return operate(value);
    }
    return value;
  }

  bool isFlagOn();

  String operate(String value);
}