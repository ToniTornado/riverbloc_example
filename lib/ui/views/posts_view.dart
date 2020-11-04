import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverbloc/riverbloc.dart';

import '../../cubits/posts_cubit.dart';
import '../../models/post.dart';

class PostsView extends ConsumerWidget {
  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final posts = watch(postsCubitProvider.state);

    return posts.when(
      initial: () => const Center(child: Text('Push the button to load posts.')),
      loaded: (posts) => _PostsList(posts: posts),
      loading: () => const Center(child: CircularProgressIndicator(strokeWidth: 2)),
      error: () => const Center(child: Text('An error occured.')),
    );
  }
}

class _PostsList extends StatelessWidget {
  final List<Post> posts;

  const _PostsList({Key key, this.posts}) : super(key: key);

  @override
  Widget build(BuildContext context) => RefreshIndicator(
        onRefresh: context.read(postsCubitProvider).reload,
        child: ListView.builder(
          itemCount: posts.length,
          itemBuilder: (context, index) => ListTile(
            title: Text(posts[index].title),
            subtitle: Text(
              posts[index].body,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ),
      );
}
