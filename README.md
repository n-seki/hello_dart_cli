# hello_dart_cli
This is trivial Dart cli-app (Hello World).

Run `dart bin/main.dart` on terminal, you can see output string `helloworld`.

This command have some options.

```
-u, --upper      to upper case
-r, --reverse    reverse string
-s, --space      add space between letters
    --help       show usage
```

For example, run `dart bin/main.dart -us`, then output is `H E L L O W O R L D`.

If you want standalone executable, see https://dart.dev/tools/dart2native . 

## packages
This cli depends on those packages.
- https://pub.dev/packages/args

## License
MIT
