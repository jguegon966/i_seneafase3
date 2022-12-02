import 'package:flutter/material.dart';
import 'package:i_seneca/models/data_response.dart';
import 'package:i_seneca/providers/data_provider.dart';
import 'package:i_seneca/screens/login_screen.dart';
import 'package:provider/provider.dart';

class SecondScreen extends StatelessWidget {
  final String? username;
  final String? password;
  

  //final datas = Provider.of<DataproviderScreen>(context);
  //print(moviesProvider.onDisplayMovies);

  const SecondScreen({Key? key, required this.username, required this.password})
      : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Colors.white,
      body: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          Stack(
            children: [
              Container(
              color: Colors.blue,
              width: double.infinity,
              height: 160,
              child: const Image(
                image: NetworkImage(
                    "https://media.discordapp.net/attachments/922814405882818570/1037708121142988800/iseneca.png"),  
              ),
            ),
            Card(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          margin: const EdgeInsets.all(25),
          
          
          elevation: 10,

          child: Column(
            children: <Widget>[

              Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children:  [
                    Row(
                      children: [
                        const Padding(padding: EdgeInsets.only(left: 20, top: 50)),
                        Text('$username, $password',
                        style: const TextStyle(fontSize: 25, color: Colors.black),),
                        const Padding(padding: EdgeInsets.only(left: 100)),
                        const Icon(Icons.people_rounded)
                      ],
                    ),
                    const Padding(padding: EdgeInsets.fromLTRB(15, 10, 25, 0)),
                    const Text(
                      'C:E:I:P: Maestro Eduardo Lobillo',
                      style: TextStyle(fontSize: 20, color: Colors.blue),
                    ),
                    const Text(
                      'Perfil Profesorado',
                      style: TextStyle(fontSize: 20, color: Colors.blue),
                    ),

                    const SizedBox()


                  ],
                ),

              Container(
                color: Colors.blue,
                
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  
                  children: [
                    const SizedBox(height: 80,),
                  Column(
                    children: const [
                      Icon(Icons.access_alarms_rounded),
                      Text(
                        'Perfil Profesorado',
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      )
                    ],
                  ),

                  const VerticalDivider(color: Colors.white, width: 20, thickness: 1, indent: 20, endIndent: 0,),

                  Column(
                    children: const [
                      //Color(Colors.amberAccent),
                      Icon(Icons.handshake),
                      Text(
                        'Perfil Profesorado',
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    ],
                  ),
                ],
            ),
              ),
              ],
            ),
          ),
            ]
            
          ),

          
        ],
      ),
    );
  }
}

