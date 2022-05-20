import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
class ButtonsExample extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  

 
  
  
    
  // assign actions to 
  // all the listed buttons
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: scaffoldKey,
        appBar: AppBar(
          title: Text('GeeksforGeeks'),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextButton(
                onPressed: (){},
                child: Text('Text Button'),
              ),
              FlatButton(
                minWidth: MediaQuery.of(context).size.width,
               onPressed: (){},
                child: Text('Flat Button'),
              ),
              ElevatedButton(
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
              ),
              FloatingActionButton.extended(
                onPressed: (){},
                label: Text('Floating Action Button'),
              ),
            ],
          ),
        ),
      ),
    );
  }}