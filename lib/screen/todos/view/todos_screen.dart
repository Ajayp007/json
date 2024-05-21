import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled/screen/todos/provider/todos_provider.dart';

class TodosScreen extends StatefulWidget {
  const TodosScreen({super.key});

  @override
  State<TodosScreen> createState() => _TodosScreenState();
}

class _TodosScreenState extends State<TodosScreen> {
  TodosProvider? providerR;
  TodosProvider? providerW;

  @override
  void initState() {
    super.initState();
    context.read<TodosProvider>().getJson();
  }

  @override
  Widget build(BuildContext context) {
    providerR = context.read<TodosProvider>();
    providerW = context.watch<TodosProvider>();
    return Scaffold(
      appBar: AppBar(
        title: const Text("Todos"),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: providerW!.todosList.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text("${providerW!.todosList[index].title}",style: const TextStyle(fontWeight: FontWeight.bold),),
            leading: Text("${providerW!.todosList[index].id}"),
            subtitle: Text("${providerW!.todosList[index].completed}"),
          );
        },
      ),
    );
  }
}
