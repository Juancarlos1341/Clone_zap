import 'package:clone_do_zap/components/status.dart';
import 'package:flutter/material.dart';

import '../components/Colors.dart';

class StatusScreen extends StatelessWidget {
  final BackgroundColor back;
  final TextColor text;

  const StatusScreen(this.back, this.text, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(back.red, back.green, back.blue, 1),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              leading: Stack(
                children: const [
                  CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.blueGrey,
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: CircleAvatar(
                      backgroundColor: Color.fromRGBO(0, 140, 88, 1),
                      radius: 11,
                      child: Icon(
                        Icons.add,
                        size: 20,
                        color: Colors.white,
                      ),
                    ),
                  )
                ],
              ),
              title: Text(
                "Meu Status",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color.fromRGBO(text.red, text.green, text.blue, 1),
                    fontSize: 20),
              ),
              subtitle: const Padding(
                padding: EdgeInsets.only(top: 8.0),
                child: Text(
                  "Toque para atualizar seu status",
                  style: TextStyle(fontSize: 15, color: Colors.grey),
                ),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 30),
            child: Text(
              "Atualizações recentes",
              style: TextStyle(fontSize: 15, color: Colors.grey),
            ),
          ),
          Status("Contato 1", "Hoje 16:41", text),
          Status("Contato 2", "Hoje 16:41", text),
          Status("Contato 3", "Hoje 16:41", text),
          Status("Contato 4", "Hoje 16:41", text),
          const Padding(
            padding: EdgeInsets.only(left: 30),
            child: Text(
              "Atualizações vistas",
              style: TextStyle(fontSize: 15, color: Colors.grey),
            ),
          ),
          Status("Contato 5", "Hoje 16:41", text),
          const Padding(
            padding: EdgeInsets.only(left: 30),
            child: Text(
              "Atualizações silenciadas",
              style: TextStyle(fontSize: 15, color: Colors.grey),
            ),
          ),
          Status("Contato 6", "Hoje 16:41", text),
        ],
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FloatingActionButton(
              onPressed: () {},
              child: const Icon(Icons.edit),
            ),
          ),
          FloatingActionButton(
            onPressed: () {},
            backgroundColor: const Color.fromRGBO(0, 140, 88, 1),
            child: const Icon(Icons.camera_alt),
          ),
        ],
      ),
    );
  }
}
