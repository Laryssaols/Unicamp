import 'package:flutter/material.dart';

class TopNavigationBar extends StatefulWidget {
  const TopNavigationBar({
    Key? key,
    required this.title,
    required this.rotulos,
    required this.onTap,
  }) : super(key: key);

  final List<String> rotulos;
  final Function onTap;
  final String title;

  @override
  State<TopNavigationBar> createState() => _TopNavigationBarState();
}

class _TopNavigationBarState extends State<TopNavigationBar> {
  getChildren() {
    List<Widget> children = [];
    widget.rotulos.asMap().forEach((index, element) {
      children.add(TextButton(
        onPressed: () {
          widget.onTap(index, element);
        },
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 4.0),
          padding: const EdgeInsets.symmetric(horizontal: 4.0),

          height: 20,
          color: Colors.blue,
          //decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.blue),
          child: Text(
            element.toString(),
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
      ));
    });
    return children;
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: getChildren(),
    );
  }
}
