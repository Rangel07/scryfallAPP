import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Scryfall"),
      ),
      body: Container(
        child: const Center(
          child: const Text("Teste"),
        ),
      ),
    );
  }
}
