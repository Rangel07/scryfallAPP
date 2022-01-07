import 'package:flutter/material.dart';
import 'package:scryfall_app/globals/styles.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey.shade800,
        centerTitle: true,
        title: const Text("Scryfall"),
      ),
      body: const Center(
        child: Text("Teste", style: ktextWhite,),
      ),
    );
  }
}
