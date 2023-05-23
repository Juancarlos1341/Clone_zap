import 'package:clone_do_zap/components/Colors.dart';
import 'package:flutter/material.dart';

class Status extends StatefulWidget {
  final String _name;
  final String timePosted;
  final String image;
  final TextColor color;

  const Status(this._name, this.timePosted, this.color,
      {Key? key, this.image = 'null'})
      : super(key: key);

  @override
  State<Status> createState() => _StatusState();
}

class _StatusState extends State<Status> {
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
                child: iconOrimage()
                    ? const Icon(Icons.ac_unit)
                    : Image.network(
                        widget.image,
                      )),
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
            widget.timePosted,
            style: const TextStyle(fontSize: 15, color: Colors.grey),
          ),
        ),
      ),
    );
  }
}
