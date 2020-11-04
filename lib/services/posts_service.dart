import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../models/post.dart';

class PostsService {
  // TODO: Error handling
  Future<List<Post>> fetchAll() async {
    try {
      final response = await Dio().get('https://jsonplaceholder.typicode.com/posts');
      return (response.data as List).map((rawPost) => Post.fromJson(rawPost as Map<String, dynamic>)).toList();
    } catch (e) {
      print(e);
      return [];
    }
  }
}

final postsServiceProvider = Provider((ref) => PostsService());
