import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/data_provider.dart';

class ListviewExpulsados extends StatelessWidget {

  const ListviewExpulsados({Key? key}) : super(key: key);

 @override
  Widget build(BuildContext context) {

    final expulsadosProvider = Provider.of<ProveedorDatos>(context);

    final expulsados = expulsadosProvider.onConvivencia;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Alumnado Expulsado'),
      ),
      body: ListView(
        children:   [
          
          ...expulsados.map(
            (expul) => ListTile(
              
              title: Text( expul.alumno ),
              subtitle: Text( expul.fechaInicio ),
              trailing: const Icon( Icons.emoji_people_rounded),

            )).toList(),

        ],
      ),
    );
  }
}