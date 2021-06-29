import 'package:flutter/material.dart';
import 'package:quiver/iterables.dart';

import 'package:cardstrick/src/model/trick_card.dart';
import 'package:cardstrick/src/view/theme/colors.dart';
import 'package:cardstrick/src/view/widgets/number_widget.dart';

class TrickCardWidget extends StatelessWidget {
  final TrickCard trickCard;

  const TrickCardWidget({Key key, this.trickCard}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Split numbers
    final splitedNumberList = partition(trickCard.numbers, 4);

    return Card(
      color: light50,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.0),
      ),
      elevation: 1.0,
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: AspectRatio(
            aspectRatio: 1 / 2,
            child: Table(
              children: splitedNumberList
                  .map<TableRow>(
                    (rowNumbers) => TableRow(
                      children: rowNumbers
                          .map<Widget>(
                            (number) => NumberWidget(number: number),
                          )
                          .toList(),
                    ),
                  )
                  .toList(),
            ),
          ),
        ),
      ),
    );
  }
}
