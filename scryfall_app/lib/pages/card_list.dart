import 'package:flutter/material.dart';
import 'package:scryfall_app/globals/globals.dart';
import 'package:scryfall_app/network/net_helper.dart';
import 'package:scryfall_app/pages/card_page.dart';
import 'package:scryfall_app/pages/double_face_page.dart';

class CardList extends StatelessWidget {
  CardList({Key? key, this.data, required this.searchValue}) : super(key: key);

  final dynamic data;
  final String searchValue;

  final NetworkHelper networkHelper = NetworkHelper();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kgrey,
        centerTitle: true,
        // name searched
        title: Text(searchValue),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Iterate Json for each card in list
            for (var card in data['data'])
              Padding(
                padding: const EdgeInsets.all(8.0),
                // Gesture to access card onTap
                child: GestureDetector(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Center(
                          child: SizedBox(
                              height: 350,
                              // Ternary to make through double face cards (only shows front face)
                              child: (card['card_faces'] == null)
                                  ? Image.network(card['image_uris']['png'])
                                  : Image.network(card['card_faces'][0]
                                      ['image_uris']['png'])),
                        ),
                      )
                    ],
                  ),
                  // Open card page if tap on it
                  onTap: () async {
                    var response = await networkHelper.getFuzzy(card['name']);
                    if (response != null) {
                      //verify if it is a double faced card
                      if (response['card_faces'] == null) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (BuildContext context) {
                            return CardPage(
                              data: response,
                            );
                          }),
                        );
                      }
                      // When the card has only one face 
                      else {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (BuildContext context) {
                            return DoubleFacePage(
                              data: response,
                            );
                          }),
                        );
                      }
                    }
                  },
                ),
              ),
          ],
        ),
      ),
    );
  }
}
