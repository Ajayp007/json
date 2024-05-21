import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled/screen/post/provider/post_provider.dart';

class PostScreen extends StatefulWidget {
  const PostScreen({super.key});

  @override
  State<PostScreen> createState() => _PostScreenState();
}

class _PostScreenState extends State<PostScreen> {
  PostProvider? providerR;
  PostProvider? providerW;

  @override
  void initState() {
    super.initState();
    context.read<PostProvider>().getJson();
  }

  @override
  Widget build(BuildContext context) {
    providerR = context.read<PostProvider>();
    providerW = context.watch<PostProvider>();
    return Scaffold(
      appBar: AppBar(
        title: const Text("Post"),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: providerW!.postList.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text("${providerW!.postList[index].body}"),
            leading: Text("${providerW!.postList[index].id}"),
          );
        },
      ),
    );
  }
}
