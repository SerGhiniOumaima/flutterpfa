import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:maladieproject/ecrans/DetailMaladie.dart';
import 'package:maladieproject/ecrans/signin.dart';
import '/colors/colorss.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:maladieproject/widgets/widgets_reutilisables.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ResultaMaladie extends StatefulWidget {
  const ResultaMaladie({Key? key}) : super(key: key);

  @override
  State<ResultaMaladie> createState() => _ResultaMaladieState();
}

class _ResultaMaladieState extends State<ResultaMaladie> {
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
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                hexStringToColor("#ffffff"),
                hexStringToColor("#168aad"),
              ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
              child: Column(children: <Widget>[
                SizedBox(height: 30),
                const Text("Résultat de la recherche :",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    )),
                SizedBox(height: 10),
                const Text("Il s'agit du Ecsema",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    )),
                SizedBox(height: 10),
                logoWidget("assets/images/eczema.jpg"),
                SizedBox(height: 10),
                const Text("Voulez-vous : ",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    )),
                SizedBox(height: 10),
                buildButton(),
                SizedBox(height: 10),
                buildButton2(),
                firebaseUIButton(context, "Voir le détail de cette maladie",
                    () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => DetailMaladie()));
                }),
                firebaseUIButton(context, "Sauvegarder le résultat", () {
                  Fluttertoast.showToast(
                    msg: "Résultat Sauvegardé",
                    toastLength: Toast.LENGTH_SHORT,
                    gravity:
                        ToastGravity.TOP, // Also possible "TOP" and "CENTER"
                  );
                }),
                SizedBox(height: 30),
              ]))));

  Widget buildButton() {
    //final Uri _url = Uri.parse('+222525');
    final number = '0522353345';

    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.symmetric(horizontal: 48, vertical: 12),
        textStyle: TextStyle(fontSize: 15),
      ),
      child: Text('Appeler un cabinet'),
      onPressed: () async {
        launch('tel://$number');
      },
    );
  }

  Widget buildButton2() {
    //final Uri _url = Uri.parse('+222525');
    final number2 = '0522353346';
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.symmetric(horizontal: 48, vertical: 12),
        textStyle: TextStyle(fontSize: 15),
      ),
      child: Text('Appeler notre service d\'informations'),
      onPressed: () async {
        launch('tel://$number2');
      },
    );
  }
}
