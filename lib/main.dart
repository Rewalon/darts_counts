import 'package:flutter/material.dart';
import 'package:darts_counts/constants.dart';

void main() {
  runApp(DartsCountsApp());
}

class DartsCountsApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Darts Counter',
      theme: ThemeData.dark(),
      home: InputPage(title: 'Darts Counter'),
    );
  }
}

class InputPage extends StatefulWidget {
  InputPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _InputPageState createState() => _InputPageState();
}

class GridViewBuilderWidget extends StatefulWidget {
  GridViewBuilderWidget({Key key}) : super(key: key);

//  final String title;

  @override
  _GridViewBuilderWidget createState() => _GridViewBuilderWidget();
}

class _InputPageState extends State<InputPage> {
  Player player;
  var score1 = 0;
  var score2 = 0;
  var round = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: acBGColour,
      appBar: AppBar(
        backgroundColor: acBGColour,
        title: Text(
          "Darts Game Counter",
          style: acLabelTextStyle,
        ),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                    child: ReusableCard(
                  onTap: () {
                    setState(() {
                      player = Player.First;
                    });
                  },
                  color: player == Player.First
                      ? acActiveCardColor
                      : acInactiveCardColor,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'Player 1',
                        style: acTitleTextStyle,
                      )
                    ],
                  ),
                )),
                Expanded(
                    child: ReusableCard(
                  onTap: () {
                    setState(() {
                      player = Player.Second;
                    });
                  },
                  color: player == Player.Second
                      ? acActiveCardColor
                      : acInactiveCardColor,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'Player 2',
                        style: acTitleTextStyle,
                      )
                    ],
                  ),
                ))
              ],
            ),
          ),
          Expanded(child: GridViewBuilderWidget()),
          /*   Expanded(
            child: Row(
              children: <Widget>[
                Expanded(child: ReusableCard()),
                Expanded(child: ReusableCard()),
                Expanded(child: ReusableCard())
              ],
            ),
          ), */
        ],
      ),
    );
  }
}

enum Player { First, Second }

class ReusableCard extends StatelessWidget {
  final Color color;
  final Widget child;
  final Function onTap;
  ReusableCard({
    Key key,
    this.color = acInactiveCardColor,
    this.child,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onTap,
        child: Container(
          child: child,
          margin: EdgeInsets.all(10),
          decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.all(Radius.circular(10))),
        ));
  }
}

class _GridViewBuilderWidget extends State<GridViewBuilderWidget> {
  @override
  Widget build(BuildContext context) {
    return GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 5,
        ),
        //reverse: true,
        children: <Widget>[
          TextWidget(
            text: "20",
            onTap: () {
              setState(() {});
            },
          ),
          TextWidget(
            text: "19",
          ),
          TextWidget(
            text: "18",
          ),
          TextWidget(
            text: "17",
          ),
          TextWidget(
            text: "16",
          ),
          TextWidget(
            text: "15",
          ),
          TextWidget(
            text: "14",
          ),
          TextWidget(
            text: "13",
          ),
          TextWidget(
            text: "12",
          ),
          TextWidget(
            text: "11",
          ),
          TextWidget(
            text: "10",
          ),
          TextWidget(
            text: "9",
          ),
          TextWidget(
            text: "8",
          ),
          TextWidget(
            text: "7",
          ),
          TextWidget(
            text: "6",
          ),
          TextWidget(
            text: "5",
          ),
          TextWidget(
            text: "4",
          ),
          TextWidget(
            text: "3",
          ),
          TextWidget(
            text: "2",
          ),
          TextWidget(
            text: "1",
          ),
        ]);
  }
}

class TextWidget extends StatelessWidget {
  const TextWidget({Key key, this.text, this.onTap, this.color})
      : super(key: key);
  final Function onTap;
  final String text;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        padding: EdgeInsets.all(20),
        margin: EdgeInsets.all(5),
        decoration:
            BoxDecoration(border: Border.all(color: Colors.black, width: 1)),
        child: Text(
          text,
          style: acNumericTextStyle,
        ));
  }
}
