import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled/screen/photos/provider/photos_provider.dart';

class PhotosScreen extends StatefulWidget {
  const PhotosScreen({super.key});

  @override
  State<PhotosScreen> createState() => _PhotosScreenState();
}

class _PhotosScreenState extends State<PhotosScreen> {
  PhotosProvider? providerR;
  PhotosProvider? providerW;

  @override
  void initState() {
    super.initState();
    context.read<PhotosProvider>().getJson();
  }

  @override
  Widget build(BuildContext context) {
    providerR = context.read<PhotosProvider>();
    providerW = context.watch<PhotosProvider>();
    return Scaffold(
      appBar: AppBar(
        title: const Text("Photos"),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: providerW!.photosList.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text("${providerW!.photosList[index].title}"),
            leading: CircleAvatar(
              backgroundImage:
                  NetworkImage("${providerW!.photosList[index].url}"),
            ),
          );
        },
      ),
    );
  }
}
