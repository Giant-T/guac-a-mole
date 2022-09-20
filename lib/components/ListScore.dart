import 'package:flutter/material.dart';

class Score {
  final String time;
  final String name;
  final int score;

  Score(this.time, this.name, this.score);
}

class CardScore extends StatelessWidget {
  final Score score;
  final Color color;

  CardScore(this.score, this.color);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: color,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
            children: <Widget>[
              Expanded(child: Text(score.time)),
              Expanded(child: Text(score.name)),
              Expanded(child: Text(score.score.toString())),
            ]),
      ),
    );
  }
}


class ListScore extends StatelessWidget {
  const ListScore({
    Key? key,
    required this.entries,
  }) : super(key: key);

  final List<Score> entries;

  @override
  Widget build(BuildContext context) {
    return Scrollbar(
      child: Center(
        child: ListView.separated(
          padding: const EdgeInsets.all(1),
          itemCount: entries.length,
          itemBuilder: (BuildContext context, int index) {
            return Container(
                child: CardScore(entries[index], index%2==0? Color.fromRGBO(51, 51, 51, 1) : Color.fromRGBO(68, 68, 68, 1))
            );
          },
          separatorBuilder: (BuildContext context, int index) => const Divider(
            height: 2,
          ),
        ),
      ),
      //backgroundColor
    );
  }
}