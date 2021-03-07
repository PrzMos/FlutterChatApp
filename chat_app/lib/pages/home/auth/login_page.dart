import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController login;
  TextEditingController password;

  @override
  void initState() {
    login = TextEditingController(text: 'basic@gmail.com');
    password = TextEditingController(text: 'password');

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Center(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Container(
            height: 400,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              color: Colors.blueGrey[800],
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 30.0),
                  child: Icon(
                    Icons.login,
                    size: 100,
                    semanticLabel: 'Login',
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    controller: login,
                    decoration: InputDecoration(
                      hintText: 'Login',
                      focusColor: Colors.green,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    controller: password,
                    decoration: InputDecoration(
                      hintText: "Password",
                      focusColor: Colors.green,
                    ),
                    obscureText: true,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20.0),
                  child: OutlinedButton(
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.resolveWith<Color>((states) {
                        return Theme.of(context)
                            .colorScheme
                            .secondary
                            .withOpacity(0.6);
                      }),
                      // minimumSize: MaterialStateProperty.resolveWith<Size>((states) {
                      //   return
                      // }))
                    ),
                    child: Text(
                      "Login",
                      style: TextStyle(color: Colors.white),
                    ),
                    onPressed: () =>
                        Navigator.pushReplacementNamed(context, '/home'),
                  ),
                ),
              ],
            ),
          ),
        ),
      )),
    );
  }
}
