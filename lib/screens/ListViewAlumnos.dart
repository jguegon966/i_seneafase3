import 'package:flutter/material.dart';
import 'package:i_seneca/screens/ListviewConvivencia.dart';
import 'package:i_seneca/screens/listviewExpulsados.dart';
import 'package:url_launcher/url_launcher.dart';

class ListviewAlumnado extends StatelessWidget {

  const ListviewAlumnado({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Alumnado'),
      ),
      body: ListView(
        children:   [
          
          ListTile(
              title: const Text( 'Alumnos en Convivencia' ),
              trailing: const Icon( Icons.arrow_forward_ios_outlined),
              onTap: () => Navigator.push(context, 
                  MaterialPageRoute(builder: (context) => const ListviewConvivencia()))
            ),

          ListTile(
              title: const Text( 'Alumnos Expulsados' ),
              trailing: const Icon( Icons.arrow_forward_ios_outlined),
              onTap: () => Navigator.push(context, 
                  MaterialPageRoute(builder: (context) => const ListviewExpulsados()))
            ),

        ],
      ),
    );
  }
}