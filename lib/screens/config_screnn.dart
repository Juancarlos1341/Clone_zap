import 'package:clone_do_zap/components/config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ConfigScreen extends StatelessWidget {
  const ConfigScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Configurações"),
        backgroundColor: const Color.fromRGBO(0, 140, 88, 1),
      ),
      body: ListView(
        children: [
          Container(
            decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
            child: const Padding(
              padding: EdgeInsets.only(bottom: 8),
              child: ListTile(
                leading: CircleAvatar(
                  radius: 30,
                  backgroundColor: Color.fromRGBO(0, 140, 88, 1),
                  child: Icon(
                    Icons.person,
                    size: 30,
                  ),
                ),
                title: Text(
                  "Seu Nome",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 20),
                ),
                subtitle: Padding(
                  padding: EdgeInsets.only(top: 8.0),
                  child: Text(
                    "Um texto de escolha",
                    style: TextStyle(fontSize: 15, color: Colors.grey),
                  ),
                ),
                trailing: Icon(
                  Icons.qr_code,
                  color: Color.fromRGBO(0, 140, 88, 1),
                ),
              ),
            ),
          ),
          const Config("Conta", Icons.key,
              "Notificações de segurança, mudança de numero"),
          const Config("Privacidade", Icons.lock,
              "Boqueio de contatos, mensagens temporárias"),
          const Config("Avatar", Icons.create, "Criar,editar, foto de perfil"),
          const Config("Conversas", Icons.chat, "histórico de conversas"),
          const Config("Noticações", CupertinoIcons.bell_fill,
              "Mensagens, grupos, chamada"),
          const Config("Armazenamento e dados", Icons.cloud_circle,
              "Uso de rede, download automático"),
          const Config("Idioma do aplicativo", CupertinoIcons.globe, "Portugês(Brasil)(idioma do aparelho)"),
          const Config("Ajuda", Icons.help_outline, "Central de ajuda, fale conosco, política de privacidade"),
          const Config("Personalização", Icons.format_paint_rounded,
              "Altere o tema e a cor do seu app"),
        ],
      ),
    );
  }
}
