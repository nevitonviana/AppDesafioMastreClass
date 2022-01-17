import 'package:flutter/material.dart';


class Animated1 extends StatefulWidget {
  const Animated1({Key? key}) : super(key: key);

  @override
  _Animated1State createState() => _Animated1State();
}

class _Animated1State extends State<Animated1> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(double.infinity, 56),
        child: AnimatedContainer(
          duration: Duration(seconds: 1),
          color: isExpanded ? Colors.green : Colors.blue,
          child: AppBar(
            backgroundColor: Colors.transparent,
            title: Text('implicitas'),
            centerTitle: true,
          ),
        ),
      ),
      body: AnimatedContainer(
        alignment: isExpanded ? Alignment.topCenter : Alignment.bottomRight,
        duration: Duration(seconds: 2),
        child: GestureDetector(
          onTap: () {
            setState(() {
              isExpanded = !isExpanded;
            });
          },
          child: AnimatedContainer(
            height: isExpanded ? 50 : 60,
            width: isExpanded ? 240 : 60,
            margin: EdgeInsets.only(bottom: 25, right: 15, top: 20),
            duration: Duration(seconds: 2),
            decoration: BoxDecoration(
              color: isExpanded ? Colors.grey : Colors.purple,
              borderRadius: BorderRadius.circular(isExpanded ? 10 : 50),
            ),
            child: Container(
              margin: EdgeInsets.only(right: isExpanded ? 15 : 0),
              alignment: isExpanded ? Alignment.centerRight : Alignment.center,
              child: Icon(Icons.search),
            ),
          ),
        ),
      ),
    );
  }
}
