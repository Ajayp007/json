import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Json"),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, 'post');
                },
                child: const Text("Post"),
              ),
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, 'comment');
                },
                child: const Text("Comments"),
              ),
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, 'album');
                },
                child: const Text("Albums"),
              ),
            ],
          ),
          const SizedBox(width: 20),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, 'todos');
                },
                child: const Text("Todos"),
              ),
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, 'photos');
                },
                child: const Text("Photos"),
              ),
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, 'user');
                },
                child: const Text("User"),
              ),
            ],
          )
        ],
      ),
    );
  }
}
