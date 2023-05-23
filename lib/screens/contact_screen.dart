import 'dart:io';

import 'package:clone_do_zap/components/contatc.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../components/Colors.dart';

class ListContactScreen extends StatefulWidget {
  final BackgroundColor back;
  final TextColor text;
  final ThemeColor theme;

  const ListContactScreen(this.theme, this.text, this.back, {Key? key})
      : super(key: key);

  @override
  State<ListContactScreen> createState() => _ListContactScreenState();
}

class _ListContactScreenState extends State<ListContactScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(
            widget.theme.red, widget.theme.green, widget.theme.blue, 1),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert)),
        ],
        title: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              "Contatos",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            Text(
              "5 contatos",
              style: TextStyle(fontSize: 13),
            ),
          ],
        ),
      ),
      backgroundColor: Color.fromRGBO(
          widget.back.red, widget.back.green, widget.back.blue, 1),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              leading: Stack(
                children: const [
                  CircleAvatar(
                    radius: 20,
                    backgroundColor: Color.fromRGBO(0, 140, 88, 1),
                    child: Icon(
                      Icons.group,
                      color: Colors.white,
                      size: 30,
                    ),
                  ),
                ],
              ),
              title: Text(
                "Novo Grupo",
                style: TextStyle(
                    color: Color.fromRGBO(widget.text.red, widget.text.green,
                        widget.text.blue, 1),
                    fontSize: 20),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              leading: Stack(
                children: const [
                  CircleAvatar(
                    radius: 20,
                    backgroundColor: Color.fromRGBO(0, 140, 88, 1),
                    child: Icon(
                      Icons.person_add_sharp,
                      color: Colors.white,
                      size: 25,
                    ),
                  ),
                ],
              ),
              title: Text(
                "Novo contato",
                style: TextStyle(
                    color: Color.fromRGBO(widget.text.red, widget.text.green,
                        widget.text.blue, 1),
                    fontSize: 20),
              ),
              trailing: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Icon(
                  Icons.qr_code,
                  color: Colors.black54,
                  size: 30,
                ),
              ),
              onTap: () async {
                const url = 'tel:';
                if (await canLaunch(url)) {
                  await launch(url);
                } else {
                  throw 'Could not launch $url';
                }
              },
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 30),
            child: Text(
              "Contatos no WhatsApp",
              style: TextStyle(fontSize: 15, color: Colors.grey),
            ),
          ),
          Contatc("Contato 1", "Ola eu uso WhatsApp", widget.text),
          Contatc("Contato 2", "Ola eu uso WhatsApp", widget.text),
          Contatc("Contato 3", "Ola eu uso WhatsApp", widget.text),
          Contatc("Contato 4", "Ola eu uso WhatsApp", widget.text),
          Contatc("Contato 5", "Ola eu uso WhatsApp", widget.text),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              leading: Stack(
                children: const [
                  CircleAvatar(
                    radius: 20,
                    backgroundColor: Colors.blueGrey,
                    child: Icon(
                      Icons.share,
                      color: Colors.white,
                      size: 25,
                    ),
                  ),
                ],
              ),
              title: Text(
                "Compartilhar link de convite",
                style: TextStyle(
                    color: Color.fromRGBO(widget.text.red, widget.text.green,
                        widget.text.blue, 1),
                    fontSize: 20),
              ),
              onTap: () {},
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              leading: Stack(
                children: const [
                  CircleAvatar(
                    radius: 20,
                    backgroundColor: Colors.blueGrey,
                    child: Icon(
                      Icons.help,
                      color: Colors.white,
                      size: 25,
                    ),
                  )
                ],
              ),
              title: Text(
                "Compartilhar link de convite",
                style: TextStyle(
                    color: Color.fromRGBO(widget.text.red, widget.text.green,
                        widget.text.blue, 1),
                    fontSize: 20),
              ),
              onTap: () {},
            ),
          ),
        ],
      ),
    );
  }
}
