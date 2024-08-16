import 'package:flutter/material.dart';
import 'package:gestor_singleton/services/usuario_service.dart';

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pagina 1'),
      ),
      body: usuarioService.existUsuario
          ? UserInformation()
          : Text('No existe usuario'),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, 'page2');
        },
        child: Icon(Icons.accessibility_new),
      ),
    );
  }
}

class UserInformation extends StatelessWidget {
  const UserInformation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'General',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Divider(),
          ListTile(title: Text('Nombre: ${usuarioService.usuario?.nombre}')),
          ListTile(title: Text('Edad: ${usuarioService.usuario?.edad}')),
          Text(
            'Profesiones',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Divider(),
          // ListTile(title: Text('Nombre: ${usuarioService.usuario?.nombre}')),
          // ListTile(title: Text('Edad: ${usuarioService.usuario?.edad}')),
        ],
      ),
    );
  }
}
