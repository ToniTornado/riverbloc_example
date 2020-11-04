import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverbloc/riverbloc.dart';

import '../models/post.dart';
import '../services/posts_service.dart';

part 'posts_cubit.freezed.dart';

@freezed
abstract class PostsState with _$PostsState {
  factory PostsState.initial() = _PostsStateInitial;
  factory PostsState.loaded(List<Post> posts) = _PostsStateLoaded;
  factory PostsState.loading() = _PostsStateLoading;
  factory PostsState.error() = _PostsStateError;
}

class PostsCubit extends Cubit<PostsState> {
  final PostsService postsService;

  PostsCubit(this.postsService) : super(PostsState.initial());

  Future<void> fetchPosts() async {
    emit(PostsState.loading());
    await Future.delayed(const Duration(seconds: 2));
    final posts = await postsService.fetchAll();
    emit(PostsState.loaded(posts));
  }

  Future<void> reload() async {
    final posts = await PostsService().fetchAll();
    emit(PostsState.loaded(posts));
  }
}

final postsCubitProvider = BlocProvider(
  (ref) => PostsCubit(
    ref.read(postsServiceProvider),
  ),
);
