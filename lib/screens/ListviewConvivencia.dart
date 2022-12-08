import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/data_provider.dart';

class ListviewConvivencia extends StatelessWidget {

  const ListviewConvivencia({Key? key}) : super(key: key);

 @override
  Widget build(BuildContext context) {

    final convivenciaProvider = Provider.of<ProveedorDatos>(context);

    final convivencia = convivenciaProvider.onConvivencia;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Alumnado en convivencia'),
      ),
      body: ListView(
        children:   [
          
          ...convivencia.map(
            (convi) => ListTile(
              
              title: Text( convi.alumno ),
              subtitle: Text( convi.fechaInicio ),
              trailing: const Icon( Icons.emoji_people_rounded),

            )).toList(),

        ],
      ),
    );
  }
}