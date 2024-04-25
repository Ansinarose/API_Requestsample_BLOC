part of 'posts_bloc.dart';

@immutable
abstract class PostsState {}

abstract class PostActionState extends PostsState {}

 class PostsInitial extends PostsState {}

 class PostFetchingLoadingState extends PostsState{
  
 }



class PostFetchingSuccessfulState  extends PostsState{
  final List<PostDataUiModel> posts;

  PostFetchingSuccessfulState({
    required this.posts});
}

class PostAdditionSuccessState extends  PostActionState {

}
class PostAdditionErrorState extends  PostActionState{
  
}
