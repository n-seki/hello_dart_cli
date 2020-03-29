import 'package:args/args.dart';
import 'package:hello_dart_cli/operator.dart';
import 'package:hello_dart_cli/define.dart';

class SpaceOperator extends Operator {

  SpaceOperator(ArgResults argResults) : super(argResults);

  @override
  bool isFlagOn() {
    return argResults[SPACE_FLG];
  }

  @override
  String operate(String value) {
    final buffer = StringBuffer();
    for (var i = 0; i <= value.length - 2; i++) {
      buffer.write(value[i]);
      buffer.write(" ");
    }
    buffer.write(value[value.length - 1]);
    return buffer.toString();
  }
}