import "dart:convert";
import "package:http/http.dart" as http;
import "package:flutter_riverpod/flutter_riverpod.dart";
import "package:postsinriverpodprovider/model_posts.dart";

final postsProvider = FutureProvider.autoDispose<List<Posts>>((ref) async {
  final response =
      await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));
  if (response.statusCode == 200) {
    Iterable data = jsonDecode(response.body);
    return List<Posts>.from(data.map((model) => Posts.fromJson(model)));
  } else {
    throw Exception('Failed to load posts');
  }
});
