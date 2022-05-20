import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:maladieproject/ecrans/ButtonsExample.dart';
import 'package:maladieproject/ecrans/signup.dart';
import 'package:maladieproject/ecrans/acces.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:maladieproject/ecrans/acueil.dart';
import '/colors/colorss.dart';
import 'package:maladieproject/widgets/widgets_reutilisables.dart';
import 'package:fluttertoast/fluttertoast.dart';





class Signin extends StatefulWidget {
  const Signin({Key? key}) : super(key: key);

  @override
  State<Signin> createState() => _SigninState();
}

class _SigninState extends State<Signin> {
  TextEditingController _passwordTextController = TextEditingController();
  TextEditingController _emailTextController = TextEditingController();
  @override
  
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
    title: Text('MyPeau'),
    titleTextStyle: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 25),
    
    backgroundColor: Colors.white,
    centerTitle:true,
  ),
      body: Container(
        width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          
        alignment: Alignment.center,
       
        
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
          hexStringToColor("#168aad"),
          hexStringToColor("#1E6091"),
          hexStringToColor("#184E77")
        ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
            child: Column(
              
              children: <Widget>[
                SizedBox(height: 0),
               logoWidget("assets/images/logo2.jpg"),
               SizedBox(height: 25),
               reusableTextField("Enter Nom d'utilisateur", Icons.person_outline, false,
                    _emailTextController),
                const SizedBox(
                  height: 5,
                  
                ),
                SizedBox(height: 25),
                reusableTextField("Enter le mot de passe", Icons.lock_outline, true,
                    _passwordTextController),
                const SizedBox(
                  height: 5,
                ),
                SizedBox(height: 25),
                firebaseUIButton(context, "Se connecter", (){
                     FirebaseAuth.instance
                      .signInWithEmailAndPassword(
                          email: _emailTextController.text,
                          password: _passwordTextController.text)
                      .then((value) {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Acueil()));
                  }).onError((error, stackTrace) {
               
                    Fluttertoast.showToast(
    msg: "Email ou mot de passe incorrect",
    toastLength: Toast.LENGTH_SHORT,
    gravity: ToastGravity.TOP, // Also possible "TOP" and "CENTER"
    
   
   );
                    print("Erreur ${error.toString()}");
                  });
                }),
                
         Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text("Vous n'avez pas de compte?",
            style: TextStyle(color: Colors.white70)),
              GestureDetector(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => Signup()));
          },
          child: const Text(
            " Inscrivez-vous",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        )
        
      ],
    ),
  
              
                
              ],
              
            ),
          ),
        ),
      ),
    );
  }

  
  
}
