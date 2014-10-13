import 'package:polymer/polymer.dart';
import 'dart:html';
import 'package:template_binding/template_binding.dart';
import 'packages/step4/post_service.dart';

@CustomTag('post-list')
class PostList extends PolymerElement {
  
  @observable List<List> allPosts = toObservable([]);

  @published String show;
  
  PostService get _service => $['service'];

  PostList.created() : super.created() {
    var list = document.querySelector('post-list');
    var tabs = document.querySelector('paper-tabs');

    tabs.addEventListener('core-select', (e) {
      list.show = tabs.selected;
    });
  }
  handleFavorite(event, detail, sender) {
    var post = nodeBind(sender).templateInstance.model['post'];
    
    //_service.setFavorite(post.uid, post.favorite); //XX doesn't work
    $['service'].setFavorite(post.uid, post.favorite);
  }
  
}

