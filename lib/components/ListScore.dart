import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:guac_a_mole/models/Score.dart';
import 'package:guac_a_mole/pages/EditScore.dart';

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
                Expanded(
                    flex: 4,
                    child: Text(score.date,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontFamily: "fa-solid-900",
                            color: Colors.white))),
                Expanded(
                    flex: 3,
                    child: Text(score.name.toUpperCase(),
                        style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontFamily: "fa-solid-900",
                            color: Colors.white))),
                Expanded(
                    flex: 1,
                    child: Text(score.score.toString(),
                        textAlign: TextAlign.right,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontFamily: "fa-solid-900",
                            color: Colors.white))),
              ]),
        ),
      ),
    );
  }
}

class ListScore extends StatefulWidget {
  final List<Score> data;
  AsyncValueSetter<int> deleteFromList;

  ListScore({Key? key, required this.data, required this.deleteFromList})
      : super(key: key);

  @override
  State<StatefulWidget> createState() => _ListScoreState();
}

class _ListScoreState extends State<ListScore> {
  @override
  Widget build(BuildContext context) {
    return Scrollbar(
      child: Center(
        child: ListView.separated(
          padding: const EdgeInsets.all(1),
          itemCount: widget.data.length,
          itemBuilder: (BuildContext context, int index) {
            return Dismissible(
                key: Key(index.toString()),
                onDismissed: (direction) async {
                  await widget.deleteFromList(index);
                  setState(() {
                    widget.data.removeAt(index);
                  });
                },
                child: GestureDetector(
                    onTap: () {
                      Navigator.of(context)
                          .push(
                        MaterialPageRoute(
                          builder: (context) =>
                              EditScore(score: widget.data[index]),
                        ),
                      )
                          .then((_) {
                        setState(() {});
                      });
                    },
                    child: CardScore(
                        widget.data[index],
                        index % 2 == 0
                            ? const Color.fromRGBO(51, 51, 51, 1)
                            : const Color.fromRGBO(68, 68, 68, 1))));
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
