import 'package:flutter/material.dart';
import 'package:scryfall_app/resources/globals.dart';
import 'package:scryfall_app/resources/legalities.dart';

class CardLegal extends StatelessWidget {
  const CardLegal({Key? key, @required this.data}) : super(key: key);

  final dynamic data;

  @override
  Widget build(BuildContext context) {
    // Transforming legalities _JsonMap to Map<String, dynamic>
    Legalities legal = Legalities.fromJson(data);
    Map<String, dynamic> legalList = legal.toJson();
    
    return Padding(
      padding: const EdgeInsets.fromLTRB(8, 0, 8, 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          for (var format in formatList)
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 157,
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Center(
                        child: Text(
                          "$format ",
                          style: ktextCard,
                        ),
                      ),
                    ),
                    color: kgrey,
                  ),
                ),
                SizedBox(
                  width: 90,
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Center(
                        child: Text(
                          legalList[format] ?? 'N/A',
                          style: ktextCard,
                        ),
                      ),
                    ),
                    color: (legalList[format] == 'legal')
                        ? Colors.green
                        : Colors.red,
                  ),
                )
              ],
            ),
        ],
      ),
    );
  }
}
