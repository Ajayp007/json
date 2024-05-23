import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled/screen/country/provider/country_provider.dart';

class CountryScreen extends StatefulWidget {
  const CountryScreen({super.key});

  @override
  State<CountryScreen> createState() => _CountryScreenState();
}

class _CountryScreenState extends State<CountryScreen> {
  CountryProvider? providerR;
  CountryProvider? providerW;
  @override
  void initState() {
    super.initState();
    context.read<CountryProvider>().getJson();
  }
  @override
  Widget build(BuildContext context) {
    providerR = context.read<CountryProvider>();
    providerW = context.watch<CountryProvider>();
    return Scaffold(
      appBar: AppBar(
        title: const Text("Country"),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: providerW!.countryList.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text("${providerW!.countryList[index].nameModel!.common}"),
            leading: CircleAvatar(
              backgroundImage:
              NetworkImage("${providerW!.countryList[index].flagsModel!.png}"),
            ),
          );
        },
      ),
    );
  }
}
