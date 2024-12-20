import 'package:flutter/material.dart';
import 'package:scryfall_app/resources/globals.dart';
import 'package:scryfall_app/widgets/card_legal.dart';

class DoubleFacePage extends StatefulWidget {
  const DoubleFacePage({Key? key, this.data}) : super(key: key);

  final dynamic data;

  @override
  _DoubleFacePageState createState() => _DoubleFacePageState();
}

class _DoubleFacePageState extends State<DoubleFacePage> {
  int cardFace = 0;

  // Funtion to change the face of searched card
  void changeFace() {
    if (cardFace == 0) {
      cardFace = 1;
    } else {
      cardFace = 0;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kgrey,
        centerTitle: true,
        // Name of the card searched
        title: Text(widget.data['name']),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Button to flip card
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.4,
                child: ElevatedButton(
                  style: ButtonStyle(
                        backgroundColor:
                            WidgetStateProperty.all<Color>(kgrey),
                        foregroundColor: WidgetStateProperty.all<Color>(klightPurple)
                        ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(Icons.refresh),
                      Text('Flip Card'),
                    ],
                  ),
                  onPressed: () {
                    setState(() {
                      changeFace();
                    });
                  },
                ),
              ),
            ),
            // Card image in normal size
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.network(
                  widget.data['card_faces'][cardFace]['image_uris']['png']),
            ),
            // Box with card type
            Padding(
              padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
              child: Card(
                color: kgrey,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(8, 0, 8, 8),
                  child: Text(
                    widget.data['card_faces'][cardFace]['type_line'],
                    style: ktextCard,
                  ),
                ),
              ),
            ),
            // Box with the name of this card artist
            Padding(
              padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
              child: Card(
                color: kgrey,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.brush_sharp,
                        color: kwhite,
                      ),
                      Container(
                        width: 8,
                      ),
                      Text(
                        "Artist ${widget.data['card_faces'][cardFace]['artist']}",
                        style: ktextCard,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            // List with Play Formats and its legalities
            CardLegal(data: widget.data['legalities'])
          ],
        ),
      ),
    );
  }
}
