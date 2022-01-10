import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:scryfall_app/globals/globals.dart';
import 'package:scryfall_app/globals/legalities.dart';

class CardLegal extends StatelessWidget {
  CardLegal({Key? key, @required this.data}) : super(key: key);

  final dynamic data;

  // Legalities legal = Legalities.fromJson(data);

  @override
  Widget build(BuildContext context) {
    Legalities legal = Legalities.fromJson(data);
    var legalList = legal.toJson();
    return Padding(
      padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
      child: Card(
        color: kgrey,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(8, 0, 8, 8),
          child: Column(
            children: [
              for (var format in formatList)
              Text("$format - ${legalList[format]}", style: ktextCard,)
            ],
          ),
        ),
      ),
    );
  }
}
