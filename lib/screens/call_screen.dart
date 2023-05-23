import 'package:clone_do_zap/components/calls.dart';
import 'package:flutter/material.dart';

import '../components/Colors.dart';

class CallScreen extends StatelessWidget {
  final BackgroundColor back;
  final TextColor text;
  const CallScreen(this.back, this.text,{Key? key}) : super(key: key);

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
                    backgroundColor: Color.fromRGBO(0, 140, 88, 1),
                    child: Icon(Icons.link_sharp, size: 30,),
                  ),
                ],
              ),
              title: Text(
                "Criar link da chamada",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color.fromRGBO(text.red, text.green, text.blue, 1),
                    fontSize: 20),
              ),
              subtitle: const Text(
                "Compathile um link para sua chamada do WhatsApp",
                style: TextStyle(fontSize: 15, color: Colors.grey),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 30),
            child: Text(
              "Recentes",
              style: TextStyle(fontSize: 15, color: Colors.grey),
            ),
          ),
          Call("Contato teste", "29 de janeiro 16:53", text),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: const Color.fromRGBO(0, 140, 88, 1),
        child: const Icon(Icons.add_ic_call_sharp),
      ),
    );
  }
}
