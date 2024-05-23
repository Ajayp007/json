import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List names = [
    'Post',
    'Comments',
    'Photos',
    'Album',
    'Todos',
    'User',
    'Country'
  ];

  List routes = [
    'post',
    'comment',
    'photos',
    'album',
    'todos',
    'user',
    'country'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Json",
          style: TextStyle(color: Colors.green),
        ),
        centerTitle: true,
      ),
      body: GridView.builder(
        itemCount: names.length,
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              Navigator.pushNamed(context, "${routes[index]}");
            },
            child: Container(
              height: 50,
              width: 50,
              margin: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.grey.shade300,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.green.shade700,
                    blurRadius: 5,
                    offset: const Offset(5, 5),
                  ),
                ],
              ),
              child: Center(
                child: Text(
                  "${names[index]}",
                  style: const TextStyle(fontSize: 20, color: Colors.green),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
