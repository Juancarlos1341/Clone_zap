import 'package:flutter/material.dart';

class Config extends StatelessWidget {
  final String nameConfig;
  final IconData iconConfig;
  final String description;

  const Config(this.nameConfig, this.iconConfig, this.description, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListTile(
        leading: Icon(
          iconConfig,
          size: 30,
        ),
        title: Text(
          nameConfig,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        subtitle: Text(description, style: const TextStyle(fontSize: 15)),
        onTap: () => Navigator.pushNamed(context,'/${nameConfig}'),
      ),
    );
  }
}
