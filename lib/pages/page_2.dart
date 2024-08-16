import 'package:flutter/material.dart';
import 'package:gestor_singleton/models/usuario.dart';
import 'package:gestor_singleton/services/usuario_service.dart';

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: StreamBuilder<Usuario>(
            stream: usuarioService.usuarioStream,
            builder: (BuildContext context, AsyncSnapshot<Usuario> snapshot) {
              if (snapshot.hasData) {
                return Text('Nombre: ${snapshot.data?.nombre}');
              }
              return Text('Pagina 2');
            }),
      ),
      body: Center(
        child: Column(
          children: [
            MaterialButton(
              child: Text('Establecer usuario'),
              color: Colors.blue,
              onPressed: () {
                usuarioService.cargarUsuario(Usuario(nombre: 'Alejandro'));
              },
            ),
            MaterialButton(
              child: Text('Cambiar edad'),
              color: Colors.blue,
              onPressed: () {
                usuarioService.cambiarEdad(24);
              },
            ),
            MaterialButton(
              child: Text('Añadir profesion'),
              color: Colors.blue,
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
