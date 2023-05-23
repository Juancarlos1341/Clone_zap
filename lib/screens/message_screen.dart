import 'package:clone_do_zap/components/Colors.dart';
import 'package:clone_do_zap/components/mensage.dart';
import 'package:clone_do_zap/screens/contact_screen.dart';
import 'package:flutter/material.dart';

class MenssageScreen extends StatelessWidget {
  final ThemeColor theme;
  final BackgroundColor back;
  final TextColor text;
  final ButtonColor button;

  const MenssageScreen(this.back, this.text, this.theme, this.button,
      {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(back.red, back.green, back.blue, 1),
      body: ListView(
        children: [
          Mensage(
              "contato 1", "teste 1", text, lastDay: "hoje 17:28", back, theme),
          Mensage(
            'Contato 2',
            "Teste 2",
            text,
            back,
            theme,
            lastDay: "Hoje 21:42",
          ),
          Mensage(
            'Contato 3',
            "Teste 3",
            text,
            back,
            theme,
            lastDay: "Hoje 21:42",
          ),
          Mensage(
            'Contato 4',
            "Teste 4",
            text,
            back,
            theme,
            lastDay: "Hoje 21:42",
          ),
          Mensage(
            'Contato 5',
            "Se chegou ate aqui mande 'fotos legais'",
            text,
            back,
            theme,
            lastDay: "Hoje 21:42",
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ListContactScreen(theme, text, back),
            ),
          );
        },
        backgroundColor:
            Color.fromRGBO(button.red, button.green, button.blue, 1),
        child: const Icon(Icons.perm_contact_cal),
      ),
    );
  }
}
