import 'package:flutter/material.dart';
import 'package:scryfall_app/globals/globals.dart';
import 'package:scryfall_app/widgets/card_legal.dart';

class CardPage extends StatelessWidget {
  const CardPage({Key? key, this.data}) : super(key: key);

  final dynamic data;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kgrey,
        centerTitle: true,
        // Name of the card searched
        title: Text(data['name']),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Card image in normal size
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.network(data['image_uris']['normal']),
            ),
            // Box with card type
            Padding(
              padding: const EdgeInsets.fromLTRB(8,0,8,0),
              child: Card(
                color: kgrey,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(8,0,8,8),
                  child: Text(data['type_line'], style: ktextCard,),
                ),
              ),
            ),
            // Box with the name of this card artist
            Padding(
              padding: const EdgeInsets.fromLTRB(8,0,8,0),
              child: Card(
                color: kgrey,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(8,0,8,0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(Icons.brush_sharp, color: kwhite,),
                      Container(width: 8,),
                      Text("Artist ${data['artist']}", style: ktextCard,),
                    ],
                  ),
                ),
              ),
            ),
            // List with Play Formats and its legalities
            CardLegal(data: data['legalities'])
            
          ],
        ),
      ),
    );
  }
}
