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
      padding: const EdgeInsets.fromLTRB(8, 0, 8, 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              for (var format in formatList)
              Card(child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Text("$format ", style: ktextCard,),
              ), color: kgrey,),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            for (var format in formatList)
            Card(child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Text(legalList[format], style: ktextCard,),
              ),color: (legalList[format]=='legal')? Colors.green : Colors.red,)
          ],)
        ],
      ),
    );
  }
}
