import 'package:postsinblocprovider/data_model.dart';

abstract class PostsStates {
  const PostsStates();

  List<Object> get props => [];
}

class PostsInitial extends PostsStates {}

class PostsLoading extends PostsStates {}

class PostsLoaded extends PostsStates {
  final List<Posts> posts;

  const PostsLoaded(this.posts);

  @override
  List<Object> get props => [posts];
}

class PostsError extends PostsStates {
  final String message;

  const PostsError(this.message);

  @override
  List<Object> get props => [message];
}
