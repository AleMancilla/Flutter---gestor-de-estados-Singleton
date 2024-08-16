import 'dart:async';

import 'package:gestor_singleton/models/usuario.dart';

class _UsuarioService {
  Usuario? _usuario;

  StreamController<Usuario> _usuarioStreamController =
      StreamController<Usuario>();

  Usuario? get usuario => _usuario;
  bool get existUsuario => (usuario != null);

  Stream<Usuario> get usuarioStream => _usuarioStreamController.stream;

  void cargarUsuario(Usuario user) {
    _usuario = user;
    _usuarioStreamController.add(_usuario!);
  }

  void cambiarEdad(int edad) {
    _usuario?.edad = edad;
    _usuarioStreamController.add(_usuario!);
  }
}

final usuarioService = _UsuarioService();
