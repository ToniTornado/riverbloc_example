import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'cubits/posts_cubit.dart';
import 'ui/views/posts_view.dart';

void main() {
  runApp(
    ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) => MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: MyHomePage(),
      );
}

class MyHomePage extends ConsumerWidget {
  @override
  Widget build(BuildContext context, ScopedReader watch) => Scaffold(
      appBar: AppBar(
        title: const Text('Welcome'),
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh),
            onPressed: () => context.refresh(postsCubitProvider),
          ),
        ],
      ),
      body: PostsView(),
      floatingActionButton: FloatingActionButton(
        onPressed: () => context.read(postsCubitProvider).fetchPosts(),
        tooltip: 'Load Data',
        child: const Icon(Icons.cloud_download),
      ),
    );
}
