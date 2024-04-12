import 'package:flutter/material.dart';
import 'aluno_cadastro_screen.dart'; // Importe a tela AlunoCadastroScreen aqui

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
          child: Text(
            element,
            style: TextStyle(color: Colors.white),
          ),
        ),
      ));
    });
    return children;
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ...getChildren(),
        TextButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => AlunoCadastroScreen()),
            );
          },
          child: Container(
            child: Text(
              'Cadastrar Aluno',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ],
    );
  }
}
