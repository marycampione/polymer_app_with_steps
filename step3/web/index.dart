import 'dart:html';
import 'package:polymer/polymer.dart';

main() => initPolymer().run(() {
  Polymer.onReady.then((_) {
    var tabs = document.querySelector('paper-tabs');

    tabs.addEventListener('core-select', (e) {
      print("Selected: " + tabs.selected);
    });
  });
});
