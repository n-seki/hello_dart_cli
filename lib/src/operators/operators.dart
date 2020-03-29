import 'package:args/args.dart';
import 'package:hello_world_dart_cli/operator.dart';
import 'package:hello_world_dart_cli/src/operators/reverse_operator.dart';
import 'package:hello_world_dart_cli/src/operators/space_operator.dart';
import 'package:hello_world_dart_cli/src/operators/upper_case_operator.dart';

Set<Operator> createOperators(ArgResults argResults) => {
  ReverseOperator(argResults),
  SpaceOperator(argResults),
  UpperCaseOperator(argResults)
};