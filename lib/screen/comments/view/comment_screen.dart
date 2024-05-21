import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled/screen/comments/provider/comment_provider.dart';

class CommentScreen extends StatefulWidget {
  const CommentScreen({super.key});

  @override
  State<CommentScreen> createState() => _CommentScreenState();
}

class _CommentScreenState extends State<CommentScreen> {
  CommentProvider? providerR;
  CommentProvider? providerW;

  @override
  void initState() {
    super.initState();
    context.read<CommentProvider>().getJson();
  }

  @override
  Widget build(BuildContext context) {
    providerR = context.read<CommentProvider>();
    providerW = context.watch<CommentProvider>();
    return Scaffold(
      appBar: AppBar(
        title: const Text("Comments"),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: providerR!.commentList.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text("${providerR!.commentList[index].body}"),
            leading: Text("${providerR!.commentList[index].id}"),
          );
        },
      ),
    );
  }
}
