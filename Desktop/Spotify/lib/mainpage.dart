import 'package:flutter/material.dart';
class MainPage extends StatelessWidget {
  Widget build(BuildContext context){
    return Container(
      //Fundo degradê (preto e verde) da Página Inicial
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromRGBO(40, 96, 65, 7.0), 
            Color(0xFF191414)
            ],
          begin: Alignment.topLeft,
          end: FractionalOffset(0.3, 0.3),
        ),
      ),

//Container do Tocadas Recentemente 
        child: ListView(
          children: <Widget>[
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  
                 Padding(padding: EdgeInsets.all(45.0),),
                  Container(
                    height: 250.0,
                    child: Column(
                      children: <Widget>[
                        Text("Tocadas Recentemente",style: TextStyle(color: Colors.white.withOpacity(1.0),
                        fontSize: 23.0,
                        fontFamily: "SpotifyFont",
                        fontWeight: FontWeight.bold
                        ),),

                  Padding(padding: EdgeInsets.all(10.0),),
                  Container(
                    height: 165.0,
                    child: ListView.builder(
                      itemCount: 10,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (BuildContext context,int index){
                        return Column(
                          children: <Widget>[
                          SizedBox(
                            height: 130.0,
                            width: 140.0,
                            child: Image.asset("assets/images/album1.jpg",fit: BoxFit.fitWidth,),
                          ),
                          Padding(padding: EdgeInsets.all(5.0)),
                          Text("This is The Weeknd",
                          style: TextStyle(
                            color: Colors.white.withOpacity(1.0),
                            fontFamily: "SpotifyFont",
                            fontSize: 10.0,
                            )
                          )
                          ],
                        );
                      },
                    ),
                  ),
                  ],),
                  ),

//Container do Feito para você
                  //Padding(padding: EdgeInsets.all(10.0),),
                   Container(
                     height:290,
                     child: Column(children: <Widget>[
                       Text("Feito para você",
                        style: TextStyle(
                       fontSize:23.0,
                       fontFamily:"SpotifyFont",
                       fontWeight: FontWeight.bold),
                       ),
                       SizedBox(
                         height:210.0,
                         width: 210.0,
                         child: Image.asset("assets/images/album2.jpg"),
                       ),
                       Text("Album Drake - Scorpion",
                       style: TextStyle(
                         color: Colors.white70,
                         fontSize:12.5,
                         fontFamily: "SpotifyFont",
                       ),
                       textAlign: TextAlign.center,
                       ),
                       
                     ],)
                   ),

//Container do recomendados
                Container(
                    height: 250.0,
                    child: Column(
                      children: <Widget>[
                        Text("Recomendados",style: TextStyle(color: Colors.white.withOpacity(1.0),
                        fontSize: 23.0,
                        fontFamily: "SpotifyFont",
                        fontWeight: FontWeight.bold
                        ),),

                  Padding(padding: EdgeInsets.all(10.0),),
                  Container(
                    height: 165.0,
                    child: ListView.builder(
                      itemCount: imageurl.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (BuildContext context,int index){
                        return Column(
                          children: <Widget>[
                          SizedBox(
                            height: 130.0,
                            width: 140.0,
                            child: Image.asset(imageurl[index],fit: BoxFit.fitWidth,),
                          ),
                          Padding(padding: EdgeInsets.all(5.0)),
                          Text(txt[index],
                          style: TextStyle(
                            color: Colors.white.withOpacity(1.0),
                            fontFamily: "SpotifyFont",
                            fontSize: 10.0,
                            )
                          )
                          ],
                        );
                      },
                    ),
                  ),
                  ],),
                  ),                   
                ],
              ),
            ),
          ],
        ),
    ); 
  }
}

//Lista de imagens da seção recomendados
List<String> imageurl = [
  "assets/images/album5.jpg",
  "assets/images/album6.jpg",
  "assets/images/album7.jpg",
  "assets/images/album8.jpg",
];

//Lista de textos abaixo das caixas de imagens da seção recomendados
List<String> txt = [
  "Eletro BR",
  "Pop Brasil",
  "Top Brasil",
  "Top 50",
];
