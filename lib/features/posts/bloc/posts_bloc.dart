import 'dart:async';
import 'dart:convert';
import 'dart:developer';

import 'package:api_request_bloc/features/posts/models/post_data_ui_model.dart';
import 'package:api_request_bloc/features/posts/repos/posts_repo.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';


part 'posts_event.dart';
part 'posts_state.dart';

class PostsBloc extends Bloc<PostsEvent, PostsState> {
  PostsBloc() : super(PostsInitial()) {
   on<PostsInitialFetchEvent>(postsInitialFetchEvent);
   on<PostAddEvent>(postAddEvent);
  }

  FutureOr<void> postsInitialFetchEvent(
    PostsInitialFetchEvent event, 
  Emitter<PostsState> emit) async {

    emit(PostFetchingLoadingState());
List<PostDataUiModel> posts = await PostRepo.fetchPosts();
    
emit(PostFetchingSuccessfulState(posts: posts));
}

  
  FutureOr<void> postAddEvent(
    PostAddEvent event, 
    Emitter<PostsState> emit) async {
      bool success = await PostRepo.addPost();
      print(success);
      if(success){
    emit(PostAdditionSuccessState());
      }else{
     emit(PostAdditionErrorState());
      }
  }
  }

