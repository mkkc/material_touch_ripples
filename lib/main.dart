import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final title= "InkWell Demo";

    return MaterialApp(
      title: title,
      home: MyHomePage(title: title),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;
  
  MyHomePage({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
              appBar: AppBar(title: Text(title) ),
              body: Center(child: MyButton()),
            );
  }
  
}

class MyButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //InkWell envuelve el widget de botón plano personalizado.
    return InkWell(
                // Cuando el usuario aprieta el botón, muestra un snackbar
                onTap: () {
                    Scaffold.of(context).showSnackBar(SnackBar(content: Text("Presionar"), ));
                    },
                child: Container(
                    padding: EdgeInsets.all(12.0),
                    child: Text("Botón plano"),
                    ),
                );

    }
}
