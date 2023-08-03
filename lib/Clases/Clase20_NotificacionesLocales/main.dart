import 'package:flutter/material.dart';
import 'package:primera_app_fluttrer/Clases/Clase20_NotificacionesLocales/services/notification_services.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initNotifications();
  runApp(MiApp());
}

class MiApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Material App",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Notificaciones App Bar"),
        ),
        body: const PaginaPrincipal(),
      ),
    );
  }
}

class PaginaPrincipal extends StatelessWidget {
  const PaginaPrincipal({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
          onPressed: () {
            mostrarNotificacion();
          },
          child: const Text("Notificacion")),
    );
  }
}
