import 'package:flutter/material.dart';
import 'package:user_log_in_app/Widgets/second_profile_page.dart';
// import 'textfield.dart';
// import 'sign_in_botton.dart';

class UserLogIn extends StatefulWidget {
  const UserLogIn({Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() {
    return _LogInClass();
  }
}

class _LogInClass extends State<UserLogIn> {
  final _formKey = GlobalKey<FormState>();
  List <Map> users_passwords = <Map>[
    { 'email' : 'ed.papikyan7788@gmail.com',
      'password' : 'pass11223344',
    },
    { 'email' : 'edg.papikyan7788@gmail.com',
      'password' : 'pass11223344',
    },
    { 'email' : 'edga.papikyan7788@gmail.com',
      'password' : 'pass11223344',
    },
    { 'email' : 'edgar.papikyan7788@gmail.com',
      'password' : 'pass11223344',
    },
  ];

  List<TextPrint> textString = [
    TextPrint(text: 'COLUMBIANA', fonts: 40, textColor: Colors.white),
    TextPrint(
      text: 'Thank  you  for  choosing  us',
      fonts: 15,
      textColor: Colors.blue[100]!,
    ),
    TextPrint(text: 'Forgot Password ?', fonts: 15, textColor: Colors.blue[100]!),
  ];
  final _email = TextEditingController();
  final _password = TextEditingController();
  bool _validate1 = false;
  bool _validate2 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal.shade600,
          body: SingleChildScrollView(
            child: Center(
              child: Column(
              children: <Widget>[
                const SizedBox(height: 45),
                textString.elementAt(0),
                const SizedBox(height: 20),
                const Image(
                  image: AssetImage('assets/Logo_picture/flower.png'),
                  height: 300,
                ),
                const SizedBox(height: 20),
                textString.elementAt(1),
                const SizedBox(height: 30),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Container(
                  padding: const EdgeInsets.only(left: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                    border: Border.all(color: Colors.teal[300]!, width: 5),
                  ),
                      child: TextField(
                      controller: _email,
                      decoration:  InputDecoration(
                      border: InputBorder.none,
                      labelText: 'Email',
                      errorText: _validate1 ? 'Email Can\'t Be Empty' : null,
                    ),
                 ),
                ),
              ),
              const SizedBox(height: 10),
                Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Container(
                  padding: EdgeInsets.only(left: 10),
                  decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
              border: Border.all(color: Colors.teal[300]!, width: 5),
            ),
                 child: TextField(
                controller: _password,
                decoration:  InputDecoration(
                  border: InputBorder.none,
                  labelText: 'Password',
                   errorText: _validate2 ? 'Password Can\'t Be Empty' : null,
                ),
              ),
          ),
          ),

                const SizedBox(height: 20),

                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        _email.text.isEmpty ? _validate1 = true : _validate1 = false;
                        _password.text.isEmpty ? _validate2 = true : _validate2 = false;
                      },
                      );
                      if (_validate1 == false && _validate2 == false) {
                          Navigator.push(context,
                            MaterialPageRoute(
                                builder: (context) => const secondPage()),);
                        }
                    },
                  style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                  primary: Colors.pink[700]
                  ),
                  child: const Text('Log in', style: TextStyle(fontSize: 20)),
              ),
                const SizedBox(height: 20),
                textString.elementAt(2),
                ],
              ),
            ),
          ),
        );
  }
}



class TextPrint extends StatelessWidget {
  final String text;
  final double fonts;
  Color textColor = Colors.black; // Default color
  TextPrint({
    Key? key,
    required this.text,
    required this.fonts,
    required this.textColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(fontSize: fonts, color: textColor),
    );
  }
}


