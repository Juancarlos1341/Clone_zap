import 'package:clone_do_zap/components/Colors.dart';
import 'package:flutter/material.dart';

class SendMensageScreen extends StatefulWidget {
  final String _name;
  final String image;
  final BackgroundColor back;
  final ThemeColor theme;

  const SendMensageScreen(this._name, this.image, this.back, this.theme,
      {Key? key})
      : super(key: key);

  @override
  State<SendMensageScreen> createState() => _SendMensageScreenState();
}

class _SendMensageScreenState extends State<SendMensageScreen> {
  TextEditingController mensageController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  bool iconOrimage() {
    if (widget.image == 'null') {
      return true;
    }
    return false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(
            widget.theme.red, widget.theme.green, widget.theme.blue, 1),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.videocam_sharp)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.call)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert)),
        ],
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CircleAvatar(
                radius: 20,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: iconOrimage()
                      ? const Icon(Icons.person_off)
                      : Image.network(
                          widget.image,
                          fit: BoxFit.cover,
                        ),
                ),
              ),
            ),
            Text(widget._name),
          ],
        ),
      ),
      body: Container(
        color: Color.fromRGBO(
            widget.back.red, widget.back.green, widget.back.blue, 1),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(left: 30),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Form(
                key: _formKey,
                child: SizedBox(
                  width: 300,
                  height: 50,
                  child: TextFormField(
                    controller: mensageController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(100),
                      ),
                      fillColor: Color.fromRGBO(
                          widget.theme.red, widget.theme.green, widget.theme.blue, 1),
                      hintText: 'Mensagem',
                    ),
                  ),
                ),
              ),
              FloatingActionButton.small(
                onPressed: () {},
                backgroundColor: const Color.fromRGBO(0, 140, 88, 1),
                child: const Icon(
                  Icons.mic,
                  size: 20,
                ),
                //todo Fazer o restante do Input
              ),
            ]),
      ),
    );
  }
}
