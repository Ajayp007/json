import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled/screen/user/provider/user_provider.dart';

class UserScreen extends StatefulWidget {
  const UserScreen({super.key});

  @override
  State<UserScreen> createState() => _UserScreenState();
}

class _UserScreenState extends State<UserScreen> {
  UserProvider? providerR;
  UserProvider? providerW;

  @override
  void initState() {
    super.initState();
    context.read<UserProvider>().getJson();
  }

  @override
  Widget build(BuildContext context) {
    providerR = context.read<UserProvider>();
    providerW = context.watch<UserProvider>();
    return Scaffold(
      appBar: AppBar(
        title: const Text("User"),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: providerW!.userList.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(
              "${providerW!.userList[index].addressModel!.geoModel!.lat}",
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            leading: Text("${providerW!.userList[index].id}"),
            subtitle: Text("${providerW!.userList[index].name}"),
          );
        },
      ),
    );
  }
}
