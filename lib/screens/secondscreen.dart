import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  static const routeName = '/second';
  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as Map<String,String>;

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Second Screen"),
        ),
        body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(args['text']!),
              Text(args['name']!),

              ElevatedButton(onPressed: () {
                        Navigator.pop(context);
                      }, child:Text("Navigate to Back"),

              )],
          ),
        ),
        ),
    );
  }
}
