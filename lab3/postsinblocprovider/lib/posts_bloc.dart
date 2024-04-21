import 'dart:convert';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart' as http;
import 'package:postsinblocprovider/data_model.dart';
import 'package:postsinblocprovider/post_event_and_state.dart';
import 'package:postsinblocprovider/posts_state.dart';

class PostsBloc extends Bloc<PostsEvent, PostsStates> {
  PostsBloc() : super(PostsInitial()) {
    on<PostsEvent>(
      (event, emit) async {
        if (event is LoadingEvent) {
          emit(PostsLoading());
        } else if (event is InitialEvent) {
          emit(PostsInitial());
        } else if (event is FetchPostsEvent) {
          // Handle the FetchPostsEvent
          final response = await http
              .get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));
          if (response.statusCode == 200) {
            final List<dynamic> responseBody = jsonDecode(response.body);
            final List<Posts> posts =
                responseBody.map((post) => Posts.fromJson(post)).toList();
            emit(PostsLoaded(posts));
          } else {
            emit(const PostsError('Failed to load posts'));
          }
        }
      },
    );
  }
}
