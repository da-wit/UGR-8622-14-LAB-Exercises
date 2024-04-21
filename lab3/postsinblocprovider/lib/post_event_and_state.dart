import 'package:postsinblocprovider/data_model.dart';

abstract class PostsEvent {}

class InitialEvent extends PostsEvent {}

class LoadingEvent extends PostsEvent {}

class FetchPostsEvent extends PostsEvent {} // Add this line

class PostsLoadedEvent extends PostsEvent {
  final List<Posts> posts;

  PostsLoadedEvent(this.posts);
}
