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

class _InputPageState extends State<InputPage> {
  Player player = Player.First;
  var selectIndex = 0;
  var multiple = 1;
  var score1 = 301;
  var score2 = 301;
  var hit1 = 0;
  var hit2 = 0;
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
                      ),
                      Text(
                        '$score1',
                        style: acLabelTextStyle,
                      ),
                      Text(
                        'hits: $hit1',
                        style: acLabelTextStyle,
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
                      ),
                      Text(
                        '$score2',
                        style: acLabelTextStyle,
                      ),
                      Text(
                        'hits: $hit2',
                        style: acLabelTextStyle,
                      )
                    ],
                  ),
                ))
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                    child: ReusableCard(
                  onTap: () {
                    setState(() {
                      selectIndex = 20;
                    });
                  },
                  color: selectIndex == 20
                      ? acActiveCardColor
                      : acInactiveCardColor,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        '20',
                        style: acTitleTextStyle,
                      )
                    ],
                  ),
                )),
                Expanded(
                    child: ReusableCard(
                  onTap: () {
                    setState(() {
                      selectIndex = 19;
                    });
                  },
                  color: selectIndex == 19
                      ? acActiveCardColor
                      : acInactiveCardColor,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        '19',
                        style: acTitleTextStyle,
                      )
                    ],
                  ),
                )),
                Expanded(
                    child: ReusableCard(
                  onTap: () {
                    setState(() {
                      selectIndex = 18;
                    });
                  },
                  color: selectIndex == 18
                      ? acActiveCardColor
                      : acInactiveCardColor,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        '18',
                        style: acTitleTextStyle,
                      )
                    ],
                  ),
                )),
                Expanded(
                    child: ReusableCard(
                  onTap: () {
                    setState(() {
                      selectIndex = 17;
                    });
                  },
                  color: selectIndex == 17
                      ? acActiveCardColor
                      : acInactiveCardColor,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        '17',
                        style: acTitleTextStyle,
                      )
                    ],
                  ),
                )),
                Expanded(
                    child: ReusableCard(
                  onTap: () {
                    setState(() {
                      selectIndex = 16;
                    });
                  },
                  color: selectIndex == 16
                      ? acActiveCardColor
                      : acInactiveCardColor,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        '16',
                        style: acTitleTextStyle,
                      )
                    ],
                  ),
                )),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                    child: ReusableCard(
                  onTap: () {
                    setState(() {
                      selectIndex = 15;
                    });
                  },
                  color: selectIndex == 15
                      ? acActiveCardColor
                      : acInactiveCardColor,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        '15',
                        style: acTitleTextStyle,
                      )
                    ],
                  ),
                )),
                Expanded(
                    child: ReusableCard(
                  onTap: () {
                    setState(() {
                      selectIndex = 14;
                    });
                  },
                  color: selectIndex == 14
                      ? acActiveCardColor
                      : acInactiveCardColor,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        '14',
                        style: acTitleTextStyle,
                      )
                    ],
                  ),
                )),
                Expanded(
                    child: ReusableCard(
                  onTap: () {
                    setState(() {
                      selectIndex = 13;
                    });
                  },
                  color: selectIndex == 13
                      ? acActiveCardColor
                      : acInactiveCardColor,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        '13',
                        style: acTitleTextStyle,
                      )
                    ],
                  ),
                )),
                Expanded(
                    child: ReusableCard(
                  onTap: () {
                    setState(() {
                      selectIndex = 12;
                    });
                  },
                  color: selectIndex == 12
                      ? acActiveCardColor
                      : acInactiveCardColor,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        '12',
                        style: acTitleTextStyle,
                      )
                    ],
                  ),
                )),
                Expanded(
                    child: ReusableCard(
                  onTap: () {
                    setState(() {
                      selectIndex = 11;
                    });
                  },
                  color: selectIndex == 11
                      ? acActiveCardColor
                      : acInactiveCardColor,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        '11',
                        style: acTitleTextStyle,
                      )
                    ],
                  ),
                )),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                    child: ReusableCard(
                  onTap: () {
                    setState(() {
                      selectIndex = 10;
                    });
                  },
                  color: selectIndex == 10
                      ? acActiveCardColor
                      : acInactiveCardColor,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        '10',
                        style: acTitleTextStyle,
                      )
                    ],
                  ),
                )),
                Expanded(
                    child: ReusableCard(
                  onTap: () {
                    setState(() {
                      selectIndex = 9;
                    });
                  },
                  color: selectIndex == 9
                      ? acActiveCardColor
                      : acInactiveCardColor,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        '9',
                        style: acTitleTextStyle,
                      )
                    ],
                  ),
                )),
                Expanded(
                    child: ReusableCard(
                  onTap: () {
                    setState(() {
                      selectIndex = 8;
                    });
                  },
                  color: selectIndex == 8
                      ? acActiveCardColor
                      : acInactiveCardColor,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        '8',
                        style: acTitleTextStyle,
                      )
                    ],
                  ),
                )),
                Expanded(
                    child: ReusableCard(
                  onTap: () {
                    setState(() {
                      selectIndex = 7;
                    });
                  },
                  color: selectIndex == 7
                      ? acActiveCardColor
                      : acInactiveCardColor,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        '7',
                        style: acTitleTextStyle,
                      )
                    ],
                  ),
                )),
                Expanded(
                    child: ReusableCard(
                  onTap: () {
                    setState(() {
                      selectIndex = 6;
                    });
                  },
                  color: selectIndex == 6
                      ? acActiveCardColor
                      : acInactiveCardColor,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        '6',
                        style: acTitleTextStyle,
                      )
                    ],
                  ),
                )),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                    child: ReusableCard(
                  onTap: () {
                    setState(() {
                      selectIndex = 5;
                    });
                  },
                  color: selectIndex == 5
                      ? acActiveCardColor
                      : acInactiveCardColor,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        '5',
                        style: acTitleTextStyle,
                      )
                    ],
                  ),
                )),
                Expanded(
                    child: ReusableCard(
                  onTap: () {
                    setState(() {
                      selectIndex = 4;
                    });
                  },
                  color: selectIndex == 4
                      ? acActiveCardColor
                      : acInactiveCardColor,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        '4',
                        style: acTitleTextStyle,
                      )
                    ],
                  ),
                )),
                Expanded(
                    child: ReusableCard(
                  onTap: () {
                    setState(() {
                      selectIndex = 3;
                    });
                  },
                  color: selectIndex == 3
                      ? acActiveCardColor
                      : acInactiveCardColor,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        '3',
                        style: acTitleTextStyle,
                      )
                    ],
                  ),
                )),
                Expanded(
                    child: ReusableCard(
                  onTap: () {
                    setState(() {
                      selectIndex = 2;
                    });
                  },
                  color: selectIndex == 2
                      ? acActiveCardColor
                      : acInactiveCardColor,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        '2',
                        style: acTitleTextStyle,
                      )
                    ],
                  ),
                )),
                Expanded(
                    child: ReusableCard(
                  onTap: () {
                    setState(() {
                      selectIndex = 1;
                    });
                  },
                  color: selectIndex == 1
                      ? acActiveCardColor
                      : acInactiveCardColor,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        '1',
                        style: acTitleTextStyle,
                      )
                    ],
                  ),
                )),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                    child: ReusableCard(
                  onTap: () {
                    setState(() {
                      selectIndex = 0;
                    });
                  },
                  color: selectIndex == 0
                      ? acActiveCardColor
                      : acInactiveCardColor,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'miss',
                        style: acTitleTextStyle,
                      )
                    ],
                  ),
                )),
                Expanded(
                    child: ReusableCard(
                  onTap: () {
                    setState(() {
                      selectIndex = 25;
                    });
                  },
                  color: selectIndex == 25
                      ? acActiveCardColor
                      : acInactiveCardColor,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'Bull',
                        style: acTitleTextStyle,
                      )
                    ],
                  ),
                )),
                Expanded(
                    child: ReusableCard(
                  onTap: () {
                    setState(() {
                      selectIndex = 50;
                    });
                  },
                  color: selectIndex == 50
                      ? acActiveCardColor
                      : acInactiveCardColor,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'Bull\'s eye',
                        style: acTitleTextStyle,
                      )
                    ],
                  ),
                )),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                    child: ReusableCard(
                  onTap: () {
                    setState(() {
                      multiple = 1;
                    });
                  },
                  color:
                      multiple == 1 ? acActiveCardColor : acInactiveCardColor,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'x1',
                        style: acTitleTextStyle,
                      )
                    ],
                  ),
                )),
                Expanded(
                    child: ReusableCard(
                  onTap: () {
                    setState(() {
                      multiple = 2;
                    });
                  },
                  color:
                      multiple == 2 ? acActiveCardColor : acInactiveCardColor,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'x2',
                        style: acTitleTextStyle,
                      )
                    ],
                  ),
                )),
                Expanded(
                    child: ReusableCard(
                  onTap: () {
                    setState(() {
                      multiple = 3;
                    });
                  },
                  color:
                      multiple == 3 ? acActiveCardColor : acInactiveCardColor,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'x3',
                        style: acTitleTextStyle,
                      )
                    ],
                  ),
                )),
              ],
            ),
          ),
          Expanded(
              child: ReusableCard(
            onTap: () {
              setState(() {
                player == Player.First
                    ? score1 = score1 - selectIndex * multiple
                    : score2 = score2 - selectIndex * multiple;
                player == Player.First ? hit1++ : hit2++;
              });
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'COUNT',
                  style: acTitleTextStyle,
                )
              ],
            ),
          )),
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
          margin: EdgeInsets.all(5),
          decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.all(Radius.circular(10))),
        ));
  }
}
