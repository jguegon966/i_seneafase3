import 'package:flutter/material.dart';

class ListviewCorreoTelefono extends StatelessWidget {
  final options = const [
    'Mail',
    'Telefono',
  ];

  const ListviewCorreoTelefono({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Datos de contacto'),
      ),
      body: ListView(
        children:  [

          ...options.map(
            (datosProfesores) => ListTile(
              title: Text( datosProfesores ),
              trailing: const Icon( Icons.arrow_forward_ios_outlined),
            )
            
            
            ).toList(),

        ],
      ),
    );
  }
}