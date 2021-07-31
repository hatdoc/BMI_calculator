import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

const bottomContainerHeight = 80.0;
const cardcolor = Color(0xFF1D1E33);
const bottomContainercolor = Color(0xFFEB1555);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    color: cardcolor,
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    color: cardcolor,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              color: cardcolor,
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    color: cardcolor,
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    color: cardcolor,
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: bottomContainercolor,
            margin: EdgeInsets.only(top: 10),
            width: double.infinity,
            height: bottomContainerHeight,
          ),
        ],
      ),
    );
  }
}

class ReusableCard extends StatelessWidget {
  final Color color;
  ReusableCard({@required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: this.color,
      ),
    );
  }
}
