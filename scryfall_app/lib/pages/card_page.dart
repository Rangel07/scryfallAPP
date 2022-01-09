import 'package:flutter/material.dart';
import 'package:scryfall_app/globals/globals.dart';

class CardPage extends StatelessWidget {
  const CardPage({this.data});

  final data;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kgrey,
        centerTitle: true,
        title: const Text("Teste"),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Text(data.toString(), style: ktextWhite,),
            ),
          ],
        ),
      ),
    );
  }
}
