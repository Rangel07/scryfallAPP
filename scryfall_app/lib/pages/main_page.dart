import 'package:flutter/material.dart';
import 'package:scryfall_app/globals/globals.dart';
import 'package:scryfall_app/network/net_helper.dart';
import 'package:scryfall_app/pages/card_page.dart';

class MainPage extends StatelessWidget {
  MainPage({Key? key}) : super(key: key);

  NetworkHelper networkHelper = NetworkHelper(urlFuzzy);

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
            // Field Search card when submited ("ENTER")
            child: TextField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.search, color: kwhite),
                labelText: "Input card name to search...",
                labelStyle: ktextSearch,
              ),
              style: ktextWhite,
              onSubmitted: (value) async {
                // Making search with input text
                var response = await networkHelper.getData(value);
                if (response != null) {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (BuildContext context) {
                    return CardPage(
                      data: response,
                    );
                  }));
                } else {
                  // Dialog if search failed to find card
                  showDialog(
                    context: context,
                    builder: (BuildContext context) => AlertDialog(
                      title: const Text(
                        "Couldn't find anything",
                        style: ktextWhite,
                      ),
                      actions: [
                        TextButton(
                          onPressed: () => Navigator.of(context).pop(),
                          child: const Text(
                            "OK",
                            style: ktextWhite,
                          ),
                        )
                      ],
                      backgroundColor: kcardColor,
                    ),
                  );
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
