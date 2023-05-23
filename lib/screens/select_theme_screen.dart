import 'package:clone_do_zap/components/config.dart';
import 'package:flutter/material.dart';

class ThemeChoice extends StatefulWidget {
  const ThemeChoice({Key? key}) : super(key: key);

  @override
  State<ThemeChoice> createState() => _ThemeChoiceState();
}

class _ThemeChoiceState extends State<ThemeChoice> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Personalização"),
        backgroundColor: const Color.fromRGBO(0, 140, 88, 1),
      ),
      body: ListView(
        children: const [
          Config("Texto", Icons.text_fields, "Escolha a cor do texto"),
          Config("Fundo", Icons.gradient, "Escolha a cor de fundo"),
          Config("Botoes", Icons.smart_button, "Esolha a cor do botao"),

        ],
      ),

    );

  }
}
