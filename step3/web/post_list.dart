import 'package:polymer/polymer.dart';
import 'dart:html';

@CustomTag('post-list')
class PostList extends PolymerElement {
  
  @observable List<List> allPosts = toObservable([]);

  @published String show;
  
  PostList.created() : super.created() {
    var list = document.querySelector('post-list');
    var tabs = document.querySelector('paper-tabs');

    tabs.addEventListener('core-select', (e) {
      list.show = tabs.selected;
    });
  }
  
}