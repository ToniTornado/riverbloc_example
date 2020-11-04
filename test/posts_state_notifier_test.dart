import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:riverbloc_example/models/post.dart';
import 'package:riverbloc_example/state_notifiers/posts_state_notifier.dart';

import 'mocks.dart';

class Listener extends Mock {
  void call(int value);
}

void main() {
  group('PostsStateNotifier', () {
    final posts = [
      const Post(id: 1, userId: 1, title: 'Title 1', body: 'Body 1'),
      const Post(id: 1, userId: 1, title: 'Title 2', body: 'Body 2'),
    ];

    final mockService = MockPostsService();
    when(mockService.fetchAll()).thenAnswer(
      (_) async => posts,
    );

    test('Given a PostsStateNotifier When fetchPosts is called Then load all posts', () {
      final postsStateNotifier = PostsStateNotifier(mockService);
      expect(postsStateNotifier.debugState, PostsState.initial());
      var i = 0;
      postsStateNotifier
        ..addListener(
          expectAsync1((state) {
            if (i == 0) expect(state, PostsState.loading());
            if (i == 1) expect(state, PostsState.loaded(posts));
            i++;
          }, count: 2),
          fireImmediately: false,
        )
        ..fetchPosts();
    });

    test('Given a PostsStateNotifier When reload is called Then reload posts in background', () async {
      final postsStateNotifier = PostsStateNotifier(mockService);
      await postsStateNotifier.fetchPosts();
      expect(postsStateNotifier.debugState, PostsState.loaded(posts));
      postsStateNotifier.addListener(
        expectAsync1((state) {
          expect(state, PostsState.loaded(posts));
        }),
        fireImmediately: false,
      );
      await postsStateNotifier.reload();
    });
  });
}
