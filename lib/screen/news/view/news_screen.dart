import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled/screen/news/provider/news_provider.dart';

class NewsScreen  extends StatefulWidget {
  const NewsScreen({super.key});

  @override
  State<NewsScreen> createState() => _NewsScreenState();
}

class _NewsScreenState extends State<NewsScreen> {
  NewsProvider? providerR;
  NewsProvider? providerW;

  @override
  void initState() {
    super.initState();
    context.read<NewsProvider>().getNewsJson();
  }

  @override
  Widget build(BuildContext context) {

    providerW = context.watch<NewsProvider>();
    providerR = context.read<NewsProvider>();
    return Scaffold(
      appBar: AppBar(
        title: const Text("Photos"),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: providerW!.newsList!.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text("${providerW!.newsList![index].description}"),
            leading: CircleAvatar(
              backgroundImage:
              NetworkImage("${providerW!.newsList![index].urlToImage}"),
            ),
          );
        },
      ),
    );
  }
}
