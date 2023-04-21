import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:practicals/constants.dart';
import 'package:practicals/register.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.4,
              child: Stack(
                children: [
                  Positioned.fill(
                    child: Neumorphic(
                      style: NeumorphicStyle(
                        depth: 20,
                        color: Colors.pinkAccent,
                        shadowLightColor: Colors.white.withOpacity(0.7),
                        shadowDarkColor: Colors.black.withOpacity(0.2),
                        boxShape: NeumorphicBoxShape.roundRect(
                          BorderRadius.only(
                            bottomLeft: Radius.circular(90),
                          ),
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 200,
                            width: 200,
                            child: Image.asset(Texts.logo),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 40,
                    right: 40,
                    child: Text(
                      Texts.loginS,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
            padding: const EdgeInsets.all(30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Neumorphic(
            style: NeumorphicStyle(
                depth: 10,
                color: Colors.white,
                shadowLightColor: Colors.black.withOpacity(0.4),
                shadowDarkColor: Colors.black.withOpacity(0.2),
                intensity: 22,
                lightSource: LightSource.bottom,
                boxShape: NeumorphicBoxShape.roundRect(
                  BorderRadius.circular(29),
                ),
            ),
            child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: _usernameController,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    prefixIcon: Icon(Icons.mail),
                    fillColor: Colors.pinkAccent,
                    hintText: Texts.username,
                  ),
                ),
            ),
          ),
          SizedBox(height: 16),
          Neumorphic(
            style: NeumorphicStyle(
                depth: 10,
                color: Colors.white,
                shadowLightColor: Colors.black.withOpacity(0.4),
                shadowDarkColor: Colors.black.withOpacity(0.2),
                intensity: 22,
                lightSource: LightSource.bottom,
                boxShape: NeumorphicBoxShape.roundRect(
                  BorderRadius.circular(29),
                ),
            ),
            child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: _passwordController,
                  obscureText: true,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: Texts.password,
                    prefixIcon: Icon(Icons.key),
                  ),
                ),
            ),
          ),
          SizedBox(height: 26),
          Align(
            alignment: Alignment.centerRight,
            child: Text(Texts.forgot),
          ),
          SizedBox(
            height: 70,
          ),
          SizedBox(
            width: 100,
            child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.pinkAccent),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                  minimumSize: MaterialStateProperty.all(Size(310, 55)),
                ),
                onPressed: () {},
                child: Text(
                  Texts.login,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold),
                ),
            ),
          ),
          SizedBox(
            height: 82,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
                Text(Texts.noAccount),
                GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => RegisterPage()),
                      );
                    },
                    child: Text(
                      Texts.register,
                      style: TextStyle(color: Colors.pinkAccent),
                    ))
            ],
          ),
        ],
      ),
    ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
