import 'package:flutter/material.dart';

class Premium extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(
          top: 60, 
          left: 40, 
          right: 40
          ),
        color: Colors.black54,
        child: ListView(
          children: <Widget>[
            SizedBox(
              width: 128,
              height: 128,
              child: Image.asset("assets/images/spotify_logo.png")
            ),
            SizedBox(
              height:20,
            ),
            TextFormField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                labelText: "E-mail ou usuário",
                labelStyle: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                  fontSize:20,
                ),
              ),
              style: TextStyle(fontSize:20),
            ),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              keyboardType: TextInputType.text,
              obscureText: true,
              decoration: InputDecoration(
                labelText: "Senha",
                labelStyle: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                  fontSize:20,
                ),
              ),
              style: TextStyle(fontSize:20),
            ),
            Container(
              height: 40,
              alignment: Alignment.centerRight,
              child: FlatButton(
                child: Text(
                  "Recuperar senha",
                ),
                onPressed: (){},
                ),
            ),
            SizedBox(
              height:20,
            ),
            Container(
              height: 60,
              alignment: Alignment.centerLeft,
              decoration: BoxDecoration(
                color: Color(0XFF1ed760),
              borderRadius: BorderRadius.all(
                Radius.circular(5),
              ),
              ),
              child: SizedBox.expand(
                child: FlatButton(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "Login",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 20,
                        ),
                        textAlign: TextAlign.center,
                        ),
                        Container(
                          child: SizedBox(
                            child: Image.asset("assets/images/spotify2_logo.png"),
                            height:28,
                            width:28,
                          ),
                        ),
                    ],),
                    onPressed: ()=>{},
                ),
              ),
           
            ),
             SizedBox(
              height:10,
            ),
            Container(
              height: 60,
              alignment: Alignment.centerLeft,
              decoration: BoxDecoration(
                color: Color(0XFF355899),
              borderRadius: BorderRadius.all(
                Radius.circular(5),
              ),
               ),
              child: SizedBox.expand(
                child: FlatButton(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "Login com o facebook",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 20,
                        ),
                        textAlign: TextAlign.left,
                        ),
                        Container(
                          child: SizedBox(
                            child: Image.asset("assets/images/facebook_logo.png"),
                            height:28,
                            width:28,
                          ),
                        ),
                    ],),
                    onPressed: ()=>{},
                ),
              ),
            ),
            SizedBox(
              height:10,
            ),
            Container(
              height:40,
              child: FlatButton(
                child: Text(
                  "Cadastre-se",
                  textAlign: TextAlign.center,
                ),
                onPressed: () => {},
              ),
            )
        ],)
        ),
      );
  }
}
