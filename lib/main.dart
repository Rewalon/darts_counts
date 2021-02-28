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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: acBGColour,
      appBar: AppBar(
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
                Expanded(child: ReusableCard()),
                Expanded(child: ReusableCard())
              ],
            ),
          ),
          Expanded(child: ReusableCard()),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(child: ReusableCard()),
                Expanded(child: ReusableCard())
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ReusableCard extends StatelessWidget {
  final Color color;
  final Widget child;
  final Function onTap;
  ReusableCard({
    Key key,
    this.color,
    this.child,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onTap,
        child: Container(
          margin: EdgeInsets.all(10),
          decoration: BoxDecoration(
              color: acInactiveCardColor,
              borderRadius: BorderRadius.all(Radius.circular(10))),
        ));
  }
}
