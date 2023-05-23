import 'package:clone_do_zap/components/Colors.dart';
import 'package:clone_do_zap/screens/call_screen.dart';
import 'package:clone_do_zap/screens/config_screnn.dart';
import 'package:clone_do_zap/screens/message_screen.dart';
import 'package:clone_do_zap/screens/status_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  final ThemeColor theme = ThemeColor(0, 140, 88);
  final BackgroundColor back = BackgroundColor(255, 255, 255);
  final TextColor text = TextColor(0, 0, 0);
  final ButtonColor button = ButtonColor(0, 140, 88);

  HomeScreen({Key? key, theme = ThemeColor, back = BackgroundColor})
      : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(
              widget.theme.red, widget.theme.green, widget.theme.blue, 1),
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
            PopupMenuButton<int>(
                onSelected: (value) {
                  if (value == 6) {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ConfigScreen()));
                  }
                  if (value == 7) {
                    widget.theme.setColorTheme(28, 28, 28);
                    widget.back.setColorBackground(0, 0, 15);
                    widget.text.setColorText(255, 255, 255);
                    widget.button.setColorBackground(255, 0, 0);
                    setState(() {});
                  }
                  if (value == 8) {
                    widget.theme.setColorTheme(0, 140, 88);
                    widget.back.setColorBackground(255, 255, 255);
                    widget.text.setColorText(0, 0, 0);
                    widget.button.setColorBackground(0, 140, 88);
                    setState(() {});
                  }
                },
                itemBuilder: (context) =>
                [
                  const PopupMenuItem(
                    value: 1,
                    child: Text("Novo grupo"),
                  ),
                  const PopupMenuItem(
                    value: 2,
                    child: Text("Nova transmissão"),
                  ),
                  const PopupMenuItem(
                    value: 3,
                    child: Text("Aparelhos conectados"),
                  ),
                  const PopupMenuItem(
                    value: 4,
                    child: Text("Mensagens favoritas"),
                  ),
                  const PopupMenuItem(
                    value: 5,
                    child: Text("Pagmentos"),
                  ),
                  const PopupMenuItem(
                      value: 6, child: Text("Configurações")),
                  const PopupMenuItem(
                      value: 7, child: Text("Modo Escuro")),
                  const PopupMenuItem(
                      value: 8, child: Text("Voltar ao normal")),
                ]),
          ],
          title: const Text("WhatsApp"),
          bottom: TabBar(
            tabs: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  Icon(Icons.chat_bubble),
                  Text('Convsersas', style: TextStyle(fontSize: 15)),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  Icon(Icons.star),
                  Text('Status', style: TextStyle(fontSize: 15)),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  Icon(Icons.call),
                  Text(
                    'Chamadas',
                    style: TextStyle(fontSize: 15),
                  ),
                ],
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            MenssageScreen(widget.back, widget.text, widget.theme, widget.button),
            StatusScreen(widget.back, widget.text),
            CallScreen(widget.back, widget.text),
          ],
        ),
      ),
    );
  }
}
