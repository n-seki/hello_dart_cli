import 'package:args/args.dart';
import 'package:hello_dart_cli/operator.dart';
import 'package:hello_dart_cli/define.dart';

class UpperCaseOperator extends Operator {

  UpperCaseOperator(ArgResults argResults) : super(argResults);

  @override
  bool isFlagOn() {
    return argResults[UPPER_CASE_FLG];
  }

  @override
  String operate(String value) {
    return value.toUpperCase();
  }
}