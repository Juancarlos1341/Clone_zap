import 'package:clone_do_zap/components/Colors.dart';
import 'package:flutter/material.dart';

class Contatc extends StatefulWidget {
  final String _name;
  final String _message;
  final String image;
  final TextColor color;

  const Contatc(this._name, this._message, this.color,
      {Key? key, this.image = 'null'})
      : super(key: key);

  @override
  State<Contatc> createState() => _ContatcState();
}

class _ContatcState extends State<Contatc> {
  bool iconOrimage() {
    if (widget.image == 'null') {
      return true;
    }
    return false;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListTile(
        leading: Stack(
          children: [
            CircleAvatar(
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
          ],
        ),
        title: Text(
          widget._name,
          style: TextStyle(
            fontSize: 20,
            color: Color.fromRGBO(
                widget.color.red, widget.color.green, widget.color.blue, 1),
          ),
        ),
        subtitle: Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Text(
            widget._message,
            style: TextStyle(
                fontSize: 15,
                color: Color.fromRGBO(widget.color.red, widget.color.green,
                    widget.color.blue, 1)),
          ),
        ),
      ),
    );
  }
}
