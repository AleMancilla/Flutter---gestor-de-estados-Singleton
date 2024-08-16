import 'package:gestor_singleton/models/usuario.dart';

class _UsuarioService {
  Usuario? _usuario;

  Usuario? get usuario => _usuario;

  bool get existUsuario => (usuario != null);

  void cargarUsuario(Usuario user) {
    _usuario = user;
  }

  void cambiarEdad(int edad) {
    _usuario?.edad = edad;
  }
}

final usuarioService = _UsuarioService();
