import 'dart:io';

import 'package:args/args.dart';
import 'package:hello_dart_cli/src/operators/operators.dart';

import 'define.dart';

class HelloWorld {
  List<String> args;

  HelloWorld(this.args);

  void say() {
    exitCode = 0;
    final argParser = _helloWorldParser();
    final argResults = argParser.parse(args);
    if (argResults[HELP]) {
      print(argParser.usage);
      return;
    }
    _helloWorld(argResults);
  }

  ArgParser  _helloWorldParser() {
    return ArgParser()
      ..addFlag(UPPER_CASE_FLG, abbr: 'u', negatable: false, defaultsTo: false, help: 'to upper case')
      ..addFlag(REVERSE_FLG, abbr: 'r', negatable: false, defaultsTo: false, help: 'reverse string')
      ..addFlag(SPACE_FLG, abbr: 's', negatable: false, defaultsTo: false, help: 'add space between letters')
      ..addFlag(HELP, negatable: false, defaultsTo: false, help: 'show usage');
  }

  void _helloWorld(ArgResults argResults) {
    var result = 'helloworld';
    for (var operation in createOperators(argResults)) {
      result = operation.run(result);
    }
    print("${result}\n");
  }
}
