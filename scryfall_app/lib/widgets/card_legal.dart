import 'package:flutter/material.dart';
import 'package:scryfall_app/globals/globals.dart';
import 'package:scryfall_app/globals/legalities.dart';

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
                  width: 155,
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
                          legalList[format],
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


// Row(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Column(
//             crossAxisAlignment: CrossAxisAlignment.end,
//             children: [
//               for (var format in formatList)
//               Card(child: Padding(
//                 padding: const EdgeInsets.all(5.0),
//                 child: Text("$format ", style: ktextCard,),
//               ), color: kgrey,),
//             ],
//           ),
//           Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//             for (var format in formatList)
//             Card(child: Padding(
//                 padding: const EdgeInsets.all(5.0),
//                 child: Text(legalList[format], style: ktextCard,),
//               ),color: (legalList[format]=='legal')? Colors.green : Colors.red,)
//           ],)
//         ],
//       ),