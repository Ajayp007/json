import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled/screen/albums/provider/album_provider.dart';

class AlbumScreen extends StatefulWidget {
  const AlbumScreen({super.key});

  @override
  State<AlbumScreen> createState() => _AlbumScreenState();
}

class _AlbumScreenState extends State<AlbumScreen> {
  AlbumProvider? providerR;
  AlbumProvider? providerW;

  @override
  void initState() {
    super.initState();
    context.read<AlbumProvider>().getJson();
  }
  @override
  Widget build(BuildContext context) {
    providerR =context.read<AlbumProvider>();
    providerW =context.watch<AlbumProvider>();
    return Scaffold(
      appBar: AppBar(
        title: const Text("Albums"),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: providerW!.albumList.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text("${providerW!.albumList[index].title}"),
            leading: Text("${providerW!.albumList[index].id}"),
          );
        },
      ),
    );
  }
}
