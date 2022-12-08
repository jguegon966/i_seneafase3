import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ListviewCorreoTelefono extends StatelessWidget {
  final String telefono;
  final String mail;

  const ListviewCorreoTelefono({Key? key, required this.telefono, required this.mail}) : super(key: key);

  Future<void> _makePhoneCall(String phoneNumber) async {
    final Uri launchUri = Uri(
      scheme: 'tel',
      path: phoneNumber,
    );
    await launchUrl(launchUri);
  }

  Future<void> _launchEmail(String correo) async {
    launch(
        "mailto:$correo?subject=TestEmail&body=How are you%20plugin");
  }

  @override
  Widget build(BuildContext context) {
    
    final Uri toLaunch =
        Uri(scheme: 'https', host: 'www.cylog.org', path: 'headers/');

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Datos de contacto'),
      ),
      body: ListView(
        children:   [
          
          ListTile(
              title: const Text( 'Mail' ),
              trailing: const Icon( Icons.arrow_forward_ios_outlined),
              onTap: () => _launchEmail(mail),
            ),

          ListTile(
              title: const Text( 'Telefono' ),
              trailing: const Icon( Icons.arrow_forward_ios_outlined),
              onTap: () => _makePhoneCall(telefono),
            ),

        ],
      ),
    );
  }
}