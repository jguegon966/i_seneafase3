import 'package:flutter/material.dart';
import 'package:i_seneca/screens/listViewCorreoTelefono.dart';
import 'package:provider/provider.dart';

import '../providers/data_provider.dart';

class ListviewProfesores extends StatelessWidget {

  final options = const [
    'profesor'
  ];

  const ListviewProfesores({Key? key}) : super(key: key);
  

  @override
  Widget build(BuildContext context) {

    final userProvider = Provider.of<ProveedorDatos>(context);

    final users = userProvider.onUsers;
    
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Profesorado'),
      ),
      body: ListView(
        children: [

          ...users.map(
            (user) => ListTile(
              title: Text( user.usuario ),
              trailing: const Icon( Icons.arrow_forward_ios_outlined),
              onTap: () {

                Navigator.push(context, 
                  MaterialPageRoute(builder: (context) => ListviewCorreoTelefono(telefono: '$user.telefono', mail: '$user.mail',)));

              }
            )).toList(),

        ],
      ),
    );
  }
}