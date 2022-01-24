import 'package:flutter/material.dart';

class CardCard extends StatelessWidget {
  const CardCard({
    Key? key,
    required this.card,
  }) : super(key: key);

  final dynamic card;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(8,0,8,8),
      child: SizedBox(
          height: (card['card_faces'] == null)
              ? 330 : 228,
          // Ternary to make through double face cards (only shows front face)
          child: (card['card_faces'] == null)
              ? Center(child: Image.network(card['image_uris']['png']))
              : Center(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.network(card['card_faces'][0]
                        ['image_uris']['png']),
                    Image.network(card['card_faces'][1]
                        ['image_uris']['png']),
                  ],
                ),
              )),
    );
  }
}
