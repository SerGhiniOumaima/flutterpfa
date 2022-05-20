import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/animation/animation_controller.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/ticker_provider.dart';
import 'package:flutter/material.dart';
import '/colors/colorss.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:maladieproject/widgets/widgets_reutilisables.dart';

//essentiel pour la camera..
import 'dart:io' ;

import 'package:firebase_auth/firebase_auth.dart';
import 'package:image_picker/image_picker.dart';
import 'package:maladieproject/ecrans/signin.dart';
import 'package:maladieproject/ecrans/ResultaMaladie.dart';

class Acueil extends StatefulWidget {
  const Acueil({Key? key}) : super(key: key);

  @override
  State<Acueil> createState() => _AcueilState();
}

class _AcueilState extends State<Acueil>{
  //File _image=File('');
  //instanciation de l objet imagepicker
  //final imagePicker= ImagePicker();
  //fct permettant de récuperer l img
  //Future getImage() async{
    //acceder a la camera et prendre la photo
    //final image = await imagePicker.getImage(source: ImageSource.camera);
    //setState(() {
      //if(image.path !=null)
      //{ _image=File(image.path);}
     
      
    //});
    final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
    File? image,imageCam;
  
    Future pickImage() async{
      try{
          final image=await ImagePicker().pickImage(source:ImageSource.gallery);
          if (image == null) return;
          final imageSelected= File(image.path);
          
          setState(()=>this.image=imageSelected);
    } on PlatformException catch(e){
      print('khra');
    }
    }
    
    Future pickImageFromCame() async{
      try{
          final imageCam=await ImagePicker().pickImage(source:ImageSource.camera);
          if (imageCam == null) return;
          final imageSelected= File(imageCam.path);
          
          setState(()=>this.imageCam=imageSelected);
    } on PlatformException catch(e){
      print('khra');
    }
    }
   @override
   @override
    Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: scaffoldKey,
         appBar:AppBar(
    title: Text('MyPeau'),
    titleTextStyle: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 25),
    
    backgroundColor: Colors.white,
    centerTitle:true,
  ),
        body: Scaffold(
          
      body: Container(
        
        width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          
        alignment: Alignment.center,
       
        
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
          hexStringToColor("#168aad"),
          hexStringToColor("#1E6091"),
          hexStringToColor("#184E77")
        ],begin: Alignment.topCenter, end: Alignment.bottomCenter)),
          
          child: Column(
            
           
            
            
            children:<Widget>[
              SizedBox(height: 30),
              

           
              
              /*ElevatedButton(
                onPressed: (){},
                child: Text('Elevated Button'),
              ),
              RaisedButton(
               onPressed: (){},
                child: Text('Raised Button'),
              ),
              
              OutlinedButton(
                onPressed: (){},
                child: Text('Outlined Button'),
              ),
              IconButton(
                icon: Icon(Icons.star),
                onPressed: (){},
              ),*/
              
              
               logoWidget("assets/images/6532.jpg"),
               SizedBox(height: 30),
              //logoWidget("assets/images/logo1.jpg"),
              FloatingActionButton.extended(
                onPressed: (){pickImage();},
                label: Text('Accéder à la gallerie'),
                icon: const Icon(Icons.image_outlined),
              ),
              SizedBox(height: 30),
              FloatingActionButton.extended(
                onPressed: (){pickImageFromCame();},
                label: Text('Accéder à la Camera'),
                icon: const Icon(Icons.camera_alt),
              ),
              SizedBox(height: 30),
              
               firebaseUIButton(context, "Voir le résultat", (){
                     
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => ResultaMaladie()));
                  }),
                  ElevatedButton.icon(
          label: Text("Déconnection"),
          icon:Icon(Icons.logout_outlined),
          style: ElevatedButton.styleFrom(
      primary: Colors.teal,
      onPrimary: Colors.white,
      
      
    ),
   
          onPressed: () {
            FirebaseAuth.instance.signOut().then((value) {
              print("Signed Out");
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Signin()));
            });}),
            ],)
  /*Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detection Maladie Peau'),
        centerTitle: true,
        backgroundColor: Colors.blue[600],
      ),
      
      
      body: Center(*/
        
        /*child: Row(children: <Widget>[
           FlatButton(
             onPressed: (){fuck();},
             child: Row(
            children: [
              Icon(Icons.camera_alt),
              Text("Accéder à la gallerie")
            ],
            ),
             color: Colors.amber,
           ),
           
           Container(

             
             padding: EdgeInsets.only(bottom: 130),
             alignment: Alignment.center,
             
             child: Column(children: <Widget>[
             FlatButton(
               onPressed: (){},
               child: Row(
                 children: [
              Icon(Icons.camera_alt),
              Text("Accéder à la gallerie")
            ],
               ),
               color: Colors.amber,
             ),
             ]
           ),
           ),

        ],)



*/

























        /*child:ConstrainedBox(
            constraints: BoxConstraints.tightFor(width: 300, height: 50),
            child: ElevatedButton(
            child: Row(
            children: [
              Icon(Icons.camera_alt),
              Text("Accéder à la gallerie")
            ],
            ),
              
            onPressed: () {fuck();},
            style: ElevatedButton.styleFrom(
            onPrimary: Colors.black87,
            primary: Colors.grey[300],
            minimumSize: Size(88, 36),
            padding: EdgeInsets.symmetric(horizontal: 16),
              ),
            
            ),
          
            
          ),
         
        
        
        */
       ),
        ),
      ),
    );
  }}
    


























