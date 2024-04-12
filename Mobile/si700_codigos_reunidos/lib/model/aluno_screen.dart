import 'package:flutter/material.dart';
import '../model/aluno.dart'; // Importando a classe Aluno

class AlunoCadastroScreen extends StatefulWidget {
  @override
  _AlunoCadastroScreenState createState() => _AlunoCadastroScreenState();
}

class _AlunoCadastroScreenState extends State<AlunoCadastroScreen> {
  List<Aluno> alunos = [];
  String nome = '';
  late DateTime dataNascimento =
      DateTime.now(); // Inicialização do dataNascimento
  int RA = 0;
  String? _sexo; // Variável para armazenar o sexo selecionado
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  void inserirAluno() {
    if (!formKey.currentState!.validate()) {
      return;
    }
    formKey.currentState!.save();

    Aluno novoAluno = Aluno(
      nome: nome,
      dataNascimento: dataNascimento,
      RA: RA,
      sexo: _sexo ?? '', // Usando _sexo ou uma string vazia se for nulo
    );

    setState(() {
      alunos.add(novoAluno);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cadastro de Aluno'),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Center(
            child: Form(
              key: formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Campos de entrada anteriores...

                  // TextFormField para o nome do aluno
                  TextFormField(
                    decoration: InputDecoration(labelText: 'Nome'),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Por favor, insira o nome do aluno';
                      }
                      return null;
                    },
                    onSaved: (value) {
                      nome = value!;
                    },
                  ),

                  // TextFormField para o RA do aluno
                  TextFormField(
                    decoration: InputDecoration(labelText: 'RA'),
                    keyboardType:
                        TextInputType.number, // Define o teclado como numérico
                    validator: (value) {
                      // Adicione validação personalizada para o RA, se necessário
                      return null; // Retorne null se a validação passar
                    },
                    onSaved: (value) {
                      RA = int.parse(value!);
                    },
                  ),

                  DropdownButtonFormField<String>(
                    decoration: InputDecoration(
                      labelText: 'Sexo',
                      hintText: 'Selecione o sexo',
                    ),
                    value: _sexo, // Valor selecionado
                    onChanged: (value) {
                      setState(() {
                        _sexo = value; // Atualizar o sexo selecionado
                      });
                    },
                    onSaved: (value) {
                      _sexo = value; // Sincronizar o sexo selecionado
                    },
                    validator: (value) {
                      if (value == null) {
                        return 'Por favor, selecione o sexo';
                      }
                      return null;
                    },
                    items: [
                      DropdownMenuItem(
                          value: 'Masculino', child: Text('Masculino')),
                      DropdownMenuItem(
                          value: 'Feminino', child: Text('Feminino')),
                      DropdownMenuItem(value: 'Outros', child: Text('Outros')),
                    ],
                  ),

                  // DatePicker para selecionar a data de nascimento do aluno
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: dataNascimento != null
                          ? '${dataNascimento.day}/${dataNascimento.month}/${dataNascimento.year}'
                          : 'Data de Nascimento',
                    ),
                    readOnly: true,
                    onTap: () async {
                      FocusScope.of(context).requestFocus(new FocusNode());
                      final DateTime? pickedDate = await showDatePicker(
                        context: context,
                        initialDate: DateTime.now(),
                        firstDate: DateTime(1900),
                        lastDate: DateTime.now(),
                      );
                      if (pickedDate != null) {
                        setState(() {
                          dataNascimento = pickedDate;
                        });
                      }
                    },
                    validator: (value) {
                      if (dataNascimento == null) {
                        return 'Por favor, selecione uma data';
                      }
                      return null;
                    },
                  ),

                  SizedBox(
                      height:
                          20), // Espaço vertical entre o formulário e o botão

                  // Botão para enviar o formulário e inserir o aluno
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.0),
                    child: ElevatedButton(
                      onPressed: inserirAluno,
                      child: Text('Inserir Aluno'),
                    ),
                  ),

                  SizedBox(
                      height:
                          20), // Espaço vertical abaixo do botão "Inserir Aluno"

                  // Botão para adicionar um novo elemento na lista
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
