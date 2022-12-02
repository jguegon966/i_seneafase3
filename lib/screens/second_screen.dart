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
      bottomNavigationBar: BottomNavigationBar(
        elevation: 10,
        fixedColor: Colors.blue,
        backgroundColor: Colors.white,
        unselectedItemColor: Colors.grey,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.access_alarm),
            label: "Agenda",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            label: "Comunicaciones",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu),
            label: "Menú",
          )
        ],
        onTap: (value) {
          
        },
      ),
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
            const SizedBox(
              height: 200,
            ),
            Card(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              margin: const EdgeInsets.only(top: 125, left: 25, right: 25),
          
          
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
                            style: const TextStyle(fontSize: 25, color: Colors.black, fontWeight: FontWeight.bold)),
                            const Padding(padding: EdgeInsets.only(left: 220)),
                            const Icon(Icons.people_rounded)
                          ],
                        ),
                        const Padding(padding: EdgeInsets.fromLTRB(15, 10, 25, 0)),
                        const Text(
                          'C:E:I:P: Maestro Eduardo Lobillo',
                          textAlign: TextAlign.start,
                          style: TextStyle(fontSize: 15, color: Colors.blue, fontWeight: FontWeight.bold),
                        ),
                        const Text(
                          'Perfil Profesorado',
                          textAlign: TextAlign.start,
                          style: TextStyle(fontSize: 15, color: Colors.blue, fontWeight: FontWeight.bold),
                        ),

                        const SizedBox(
                          height: 20,
                        ),

                        Container(
                          color: Colors.blue,
                    
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            
                            children: [
                              const SizedBox(height: 80,),
                              Flexible(
                                child: Column(
                                  children: const [
                                    Icon(Icons.access_alarms_rounded, color: Colors.white,),
                                    Text(
                                    'Avisos',
                                    style: TextStyle(fontSize: 20, color: Colors.white),
                                    )
                                  ],
                                ),
                              ),

                            const VerticalDivider(color: Colors.white, width: 20, thickness: 1, indent: 20, endIndent: 0,),

                            Flexible(
                              child: Column(
                                children: const [
                                  //Color(Colors.amberAccent),
                                  Icon(Icons.account_balance_wallet, color: Colors.white,),
                                  Text(
                                    textAlign: TextAlign.center,
                                    'Bandeja de firmas',
                                    style: TextStyle(fontSize: 20, color: Colors.white),
                                  ),
                                ],
                              ),
                            ),
                          ],
                      ),
                  ),


                      ],
                    ),

                  
                  ],
                ),
              ),

              
              Flexible(
                child: Column(
                  children: [
                    const SizedBox(
                      height: 360,
                    ),
                    SizedBox(
                      height: 300,
                      child: GridView.count(  
                        padding: const EdgeInsets.all(20),
                        crossAxisCount: 3,  
                        crossAxisSpacing: 4.0,  
                        mainAxisSpacing: 8.0,  
                        children: List.generate(choices.length, (index) {  
                          return Center(  
                            child: SelectCard(choice: choices[index]),  
                          );  
                        }  
                      ) 
                      ),
                    ),
                  ],
                ),
              )

            ]
            
          ),

          
        ],
      ),
    );
  }
}



class Choice {  
  const Choice({required this.title, required this.image});  
  final String title;  
  final AssetImage image;  
}  
  
const List<Choice> choices = <Choice>[  
  Choice(title: 'Alumnado del centro', image: AssetImage('assets/sombrero.png')),  
  Choice(title: 'Personal del centro', image: AssetImage('assets/profesor.png')),  
  Choice(title: 'Informacion Covid', image: AssetImage('assets/covid.png')),  
  Choice(title: 'Tablon de anuncios', image: AssetImage('assets/campana.png')),  
  Choice(title: 'Calendario Escolar', image: AssetImage('assets/calendario.png')),
];  
  
class SelectCard extends StatelessWidget {  
  const SelectCard({Key? key, required this.choice}) : super(key: key);  
  final Choice choice;  
  
  @override  
  Widget build(BuildContext context) {  
    return Card(  
        color: Colors.white,  
        child: Center(child: Column(  
            crossAxisAlignment: CrossAxisAlignment.center,  
            children: <Widget>[  
              Image(image: choice.image, height: 50, width: 50,),  
              Text(choice.title, textAlign: TextAlign.center, style: const TextStyle(fontWeight: FontWeight.bold),),  
            ]  
        ),  
        )  
    );  
  }  
} 