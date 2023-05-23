import 'package:clone_do_zap/components/Colors.dart';
import 'package:clone_do_zap/screens/send_mensage_screens.dart';
import 'package:flutter/material.dart';

class Mensage extends StatefulWidget {
  final String _name;
  final String _message;
  final String lastDay;
  final String image;
  final TextColor text;
  final ThemeColor theme;
  final BackgroundColor back;

  const Mensage(this._name, this._message, this.text,this.back, this.theme,
      {Key? key, this.lastDay = "", this.image = 'null'})
      : super(key: key);

  @override
  State<Mensage> createState() => _MensageState();
}

class _MensageState extends State<Mensage> {
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
                radius: 30,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: iconOrimage()
                      ? const Icon(Icons.person_off)
                      : Image.network(
                          widget.image,
                          fit: BoxFit.cover,
                        ),
                )),
          ],
        ),
        title: Text(
          widget._name,
          style: TextStyle(
              fontSize: 20,
              color: Color.fromRGBO(
                  widget.text.red, widget.text.green, widget.text.blue, 1)),
        ),
        subtitle: Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Text(
            widget._message,
            style: TextStyle(
                fontSize: 15,
                color: Color.fromRGBO(widget.text.red, widget.text.green,
                    widget.text.blue, 1)),
          ),
        ),
        trailing: Text(
          widget.lastDay,
          style: TextStyle(
              color: Color.fromRGBO(
                  widget.text.red, widget.text.green, widget.text.blue, 1)),
        ),
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => SendMensageScreen(widget._name,widget.image,widget.back,widget.theme)));
        },
      ),
    );
  }
}
