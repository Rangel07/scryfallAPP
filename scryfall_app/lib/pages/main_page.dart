import 'package:flutter/material.dart';
import 'package:scryfall_app/globals/globals.dart';
import 'package:scryfall_app/network/net_helper.dart';
import 'package:scryfall_app/pages/card_page.dart';

class MainPage extends StatelessWidget {
  MainPage({Key? key}) : super(key: key);

  NetworkHelper networkHelper = NetworkHelper(url);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kgrey,
        centerTitle: true,
        title: const Text("Scryfall"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.search, color: kwhite),
                labelText: "Input card name to search...",
                labelStyle: ktextSearch,
              ),
              style: ktextWhite,
              onSubmitted: (value) async {
                var response = await networkHelper.getData(value);
                if (response != null) {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (BuildContext context) {
                    return CardPage(
                      data: response,
                    );
                  }));
                }
                showDialog(
                    context: context,
                    builder: (BuildContext context) => AlertDialog(
                          title: const Text("Couldn't find anything"),
                          actions: [
                            TextButton(
                                onPressed: () => Navigator.of(context).pop(),
                                child: const Text("OK"))
                          ],
                        ));
              },
            ),
          ),
        ],
      ),
    );
  }
}
