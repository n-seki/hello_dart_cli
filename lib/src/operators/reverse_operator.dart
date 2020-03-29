import 'package:args/args.dart';
import 'package:hello_dart_cli/operator.dart';
import 'package:hello_dart_cli/define.dart';

class ReverseOperator extends Operator {

  ReverseOperator(ArgResults argResults) : super(argResults);

  @override
  bool isFlagOn() {
    return argResults[REVERSE_FLG];
  }

  @override
  String operate(String value) {
    final buffer = StringBuffer();
    for (var i = value.length - 1; i >= 0; i--) {
      buffer.write(value[i]);
    }
    return buffer.toString();
  }
}