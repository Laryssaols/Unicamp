import 'package:flutter/material.dart';

// Definindo a classe Aluno
class Aluno {
  String nome;
  DateTime dataNascimento;
  int RA;
  String sexo;

  Aluno(
      {required this.nome,
      required this.dataNascimento,
      required this.RA,
      required this.sexo});
}

// Criando o StatefulWidget AlunoCadastroScreen
class AlunoCadastroScreen extends StatefulWidget {
  @override
  _AlunoCadastroScreenState createState() => _AlunoCadastroScreenState();
}

class _AlunoCadastroScreenState extends State<AlunoCadastroScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cadastro de Aluno'),
      ),
    );
  }
}
