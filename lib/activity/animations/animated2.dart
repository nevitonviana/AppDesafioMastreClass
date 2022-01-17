import 'package:flutter/material.dart';

class Animated2 extends StatefulWidget {
  const Animated2({Key? key}) : super(key: key);

  @override
  _Animated2State createState() => _Animated2State();
}

class _Animated2State extends State<Animated2>
    with SingleTickerProviderStateMixin {
  late final AnimationController _animationController;
  late final Animation _animation;

  var listIten = [
    false,
  ];

  @override
  void initState() {
    _animationController = AnimationController(
        vsync: this,
        duration: const Duration(seconds: 2),
        upperBound: 100,
        lowerBound: 0);
    _animation = Tween<double>(end: 2, begin: 0).animate(CurvedAnimation(
      parent: _animationController,
      curve: Curves.bounceInOut,
    ));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Animações Controladas"),
      ),
      body: ListView.builder(
        itemCount: listIten.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              ListTile(
                onTap: () {
                  setState(() {
                    listIten[index]
                        ? _animationController.reverse()
                        : _animationController.forward();
                  });
                  listIten[index] = !listIten[index];
                },
                title: AnimatedContainer(
                  duration: const Duration(seconds: 2),
                  child: Text(
                    "What is Lorem Ipsum?",
                    style: TextStyle(
                        color: listIten[index] ? Colors.blue : Colors.black),
                  ),
                ),
                trailing: Icon(
                  listIten[index]
                      ? Icons.keyboard_arrow_up
                      : Icons.keyboard_arrow_down,
                  size: 30,
                ),
              ),
              AnimatedBuilder(
                animation: _animation,
                builder: (context, child) {
                  return SizedBox(
                    height: _animationController.value,
                    child: const Text(
                      " Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. er including versions of Lorem Ipsum.",
                      style: TextStyle(color: Colors.black),
                    ),
                  );
                },
              )
            ],
          );
        },
      ),
    );
  }
}
