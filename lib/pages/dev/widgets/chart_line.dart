import 'package:flutter/material.dart';

class ChartLine extends StatelessWidget {
  final double rate;
  final String title;

  const ChartLine({
    Key? key,
    required this.rate,
    required this.title,
  })  : assert(rate > 0),
        assert(rate <= 1),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final lineWidget = constraints.maxWidth * rate;
        return Padding(
          padding: const EdgeInsets.only(top: 12, right: 10, left: 15),
          child: Row(
            children: [
              Expanded(child: Text(title)),
              Expanded(
                flex: 3,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      height: 15,
                      width: lineWidget,
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
