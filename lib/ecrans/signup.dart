import 'package:flutter/cupertino.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:maladieproject/ecrans/acueil.dart';

import '/colors/colorss.dart';
import 'package:maladieproject/widgets/widgets_reutilisables.dart';

class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  TextEditingController _passwordTextController = TextEditingController();
  TextEditingController _emailTextController = TextEditingController();
  TextEditingController _userNameTextController = TextEditingController();
  @override
  Widget build(BuildContext context) {
     return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
       
        elevation: 0,
        title: Text('MyPeau'),
    titleTextStyle: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 25),
     backgroundColor: Colors.white,
    centerTitle:true,
          
        ),
      
      body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
           hexStringToColor("#168aad"),
          hexStringToColor("#1E6091"),
          hexStringToColor("#184E77")
          ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
          child: SingleChildScrollView(
              child: Padding(
            padding: EdgeInsets.fromLTRB(20, 120, 20, 0),
            child: Column(
              children: <Widget>[
                 SizedBox(height: 0),
               logoWidget("assets/images/20944201.jpg"),
                const SizedBox(
                  height: 20,
                ),
                reusableTextField("Enter votre nom d'utilisateur", Icons.person_outline, false,
                    _userNameTextController),
                const SizedBox(
                  height: 20,
                ),
                reusableTextField("Enter votre Email", Icons.person_outline, false,
                    _emailTextController),
                const SizedBox(
                  height: 20,
                ),
                reusableTextField("Enter le Mot de Passe", Icons.lock_outlined, true,
                    _passwordTextController),
                const SizedBox(
                  height: 20,
                ),
                    firebaseUIButton(context, "S'inscrire", () {
                      FirebaseAuth.instance
                      .createUserWithEmailAndPassword(
                          email: _emailTextController.text,
                          password: _passwordTextController.text)
                          .then((value) {
                    print("Created New Account");
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Acueil()));
                  }).onError((error, stackTrace) {
                    print("Error ${error.toString()}");
                  });
                      
                  
                })
    
  ],
            ),
          )))
     );
  }
}