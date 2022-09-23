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
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 12),
      child: Card(
        color: color,
        shape: RoundedRectangleBorder(),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Expanded(flex: 4, child: Text(score.time, style: const TextStyle(fontWeight: FontWeight.bold, fontFamily: "fa-solid-900", color: Colors.white))),
                Expanded(flex: 3, child: Text(score.name.toUpperCase(), style: const TextStyle(fontWeight: FontWeight.bold, fontFamily: "fa-solid-900", color: Colors.white))),
                Expanded(flex: 1, child: Text(score.score.toString(), textAlign: TextAlign.right, style: const TextStyle(fontWeight: FontWeight.bold, fontFamily: "fa-solid-900", color: Colors.white))),
              ]),
        ),
      ),
    );
  }
}



class ListScore extends StatelessWidget {
  const ListScore({
    Key? key,
    required this.data,
  }) : super(key: key);

  final List<Score> data;

  @override
  Widget build(BuildContext context) {
    return Scrollbar(
      child: Center(
        child: ListView.separated(
          padding: const EdgeInsets.all(1),
          itemCount: data.length,
          itemBuilder: (BuildContext context, int index) {
            return Container(
                child: CardScore(data[index], index%2==0? Color.fromRGBO(51, 51, 51, 1) : Color.fromRGBO(68, 68, 68, 1))
            );
          },
          separatorBuilder: (BuildContext context, int index) => const Divider(
            height: 0.1,
          ),
        ),
      ),
      //backgroundColor
    );
  }
}