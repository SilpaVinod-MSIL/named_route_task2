import 'package:flutter/material.dart';

import 'secondscreen.dart';

class FirstScreen extends StatelessWidget {
  TextEditingController nameController = TextEditingController();
  TextEditingController lastnameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("First Screen"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: nameController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter your First name',
                  hintText: 'Enter your First name',
                ),
              ),
            ),
    Padding(
    padding: const EdgeInsets.all(8.0),
    child: TextField(
    controller: lastnameController,
    decoration: const InputDecoration(
    border: OutlineInputBorder(),
    labelText: 'Enter your Last name',
    hintText: 'Enter your Last name',
    ),
    ),
    ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).
                    pushNamed(SecondScreen.routeName, arguments:{
                      'text':nameController.text,
                        'name':lastnameController.text});
                },
              child: Text("Click me for Navigation"),
            ),
          ],),
    );
  }
}
