import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:postsinprovider/model/posts.dart';
// import 'dart:convert';

class PostsProvider extends ChangeNotifier {
  List<Posts> _posts = [];

  List<Posts> get inComingposts => _posts;

  Future<void> fetchPosts() async {
    final response =
        await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));
    if (response.statusCode == 200) {
      final List<dynamic> responseData = jsonDecode(response.body);
      _posts =
          responseData.map((postsJson) => Posts.fromJosn(postsJson)).toList();
      notifyListeners();
    } else {
      throw Exception('Failed to load posts');
    }
  }
}
