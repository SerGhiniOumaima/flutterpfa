// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:maladieproject/ecrans/signin.dart';
import 'package:maladieproject/ecrans/signup.dart';
import '/colors/colorss.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:maladieproject/widgets/widgets_reutilisables.dart';

class DetailMaladie extends StatefulWidget {
  const DetailMaladie({Key? key}) : super(key: key);

  @override
  State<DetailMaladie> createState() => _DetailMaladieState();
}

class _DetailMaladieState extends State<DetailMaladie> {
  @override
  Widget build(BuildContext context) => Scaffold(
      appBar: AppBar(
        title: Text('MyPeau'),
        titleTextStyle: TextStyle(
            color: Colors.black, fontWeight: FontWeight.bold, fontSize: 25),
        backgroundColor: Colors.white,
        centerTitle: true,
      ),
      body: Scaffold(
          body: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                hexStringToColor("#ffffff"),
                hexStringToColor("#1E6091"),
              ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
              // ignore: prefer_const_literals_to_create_immutables
              child: Column(children: <Widget>[
                SizedBox(height: 30),
                const Text("A Propos de l'Ecsema",
                    style: TextStyle(
                      color: Colors.orange,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      

                    )),
                SizedBox(height: 30),
                const Text("Nom : Ecsema",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    )),
                SizedBox(height: 30),
                const Text("Description : ",
                    style: TextStyle(
                      color:Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    )),
                SizedBox(height: 15),
                Align(
                  alignment: Alignment
                      .center, // Align however you like (i.e .centerRight, centerLeft)
                  child: Text(
                      "L'ecz??ma atopique ou dermatite atopique est une maladie cutan??e prurigineuse (provoquant des d??mangeaisons) chronique, ??voluant par pouss??es. Il touche principalement les nourrissons et les enfants mais peut persister ?? l'adolescence et ?? l'??ge adulte."),
                ),
                SizedBox(height: 30),
                const Text("Sympt??mes : ",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    )),
                SizedBox(height: 15),
                Align(
                  alignment: Alignment
                      .center, // Align however you like (i.e .centerRight, centerLeft)
                  child: Text(
                      "-Formation de plaques rouges  la peau"
                ),
                ),
                 SizedBox(height: 10),
                Align(
                  alignment: Alignment
                      .center, // Align however you like (i.e .centerRight, centerLeft)
                  child: Text(
                      
                      "-D??mangeaisons intenses (prurit)"
                      ),
                ),
                 SizedBox(height: 10),
                Align(
                  alignment: Alignment
                      .center, // Align however you like (i.e .centerRight, centerLeft)
                  child: Text(
                      
                      
                      "-V??sicules qui se rompent au grattage et suintent "
                      ),
                ),
                SizedBox(height: 15),
                const Text("Rem??des sugg????r??s : ",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    )),
                    SizedBox(height: 15),
                Align(
                  alignment: Alignment
                      .center, // Align however you like (i.e .centerRight, centerLeft)
                  child: Text(
                      "-Formation de plaques rouges  la peau"
                ),
                ),
                 SizedBox(height: 10),
                Align(
                  alignment: Alignment
                      .center, // Align however you like (i.e .centerRight, centerLeft)
                  child: Text(
                      
                      "-Cr??me ?? la cortisone"
                      ),
                ),
                 SizedBox(height: 10),
                Align(
                  alignment: Alignment
                      .center, // Align however you like (i.e .centerRight, centerLeft)
                  child: Text(
                      
                      
                      "-Aciclovir "
                      ),
                ),
                 SizedBox(height: 10),
                 Align(
                  alignment: Alignment
                      .center, // Align however you like (i.e .centerRight, centerLeft)
                  child: Text(
                      
                      
                      "-Ascabiol "
                      ),
                ),
              ]))));
}
