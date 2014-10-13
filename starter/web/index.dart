import 'package:polymer/polymer.dart';

main() => initPolymer().run(() {
  Polymer.onReady.then((_) {
    print("hello world");
  });
});
