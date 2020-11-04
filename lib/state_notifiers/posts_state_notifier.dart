import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../models/post.dart';
import '../services/posts_service.dart';

part 'posts_state_notifier.freezed.dart';

@freezed
abstract class PostsState with _$PostsState {
  factory PostsState.initial() = _PostsStateInitial;
  factory PostsState.loaded(List<Post> posts) = _PostsStateLoaded;
  factory PostsState.loading() = _PostsStateLoading;
  factory PostsState.error() = _PostsStateError;
}

class PostsStateNotifier extends StateNotifier<PostsState> {
  final PostsService postsService;

  PostsStateNotifier(this.postsService) : super(PostsState.initial());

  Future<void> fetchPosts() async {
    state = PostsState.loading();
    await Future.delayed(const Duration(seconds: 2));
    final posts = await postsService.fetchAll();
    state = PostsState.loaded(posts);
  }

  Future<void> reload() async {
    final posts = await postsService.fetchAll();
    state = PostsState.loaded(posts);
  }
}

final postsStateNotifierProvider = StateNotifierProvider(
  (ref) => PostsStateNotifier(
    ref.read(postsServiceProvider),
  ),
);
