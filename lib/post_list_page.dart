import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mockapp/post_body.dart';
import 'package:mockapp/post_list_body.dart';
import 'package:mockapp/post_list_page_vm.dart';

class PostListPage extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: PostListBody(),
      floatingActionButton: FloatingActionButton(
        child: Text("삭제"),
        onPressed: () {
          ref.read(postListProvider.notifier).deleteById(3);
        },
      ),
    );
  }
}
