import 'package:flutter/material.dart';



class secondPage extends StatefulWidget{
  const secondPage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _secondPage();
  }
}
class _secondPage extends State<secondPage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Colors.teal[600],
      appBar: AppBar(backgroundColor: Colors.tealAccent),
      body: Center(
          child: Column(
            children: [

              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('Go back!'),
              ),
            ],
          ),
        ),
      );
  }

}