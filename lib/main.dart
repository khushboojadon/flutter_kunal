import 'package:flutter/material.dart';
import 'package:flutter_kunal/signup.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SignIn(title: 'Flutter Demo Home Page'),
    );
  }
}

class SignIn extends StatefulWidget {
  SignIn({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Column(children: <Widget>[
        Container(
          child: Stack(
            children: <Widget>[
              Align(
                  alignment: Alignment.topLeft,
                  child: Image.asset('images/mask_group_2.png')),
            ],
          ),
        ),
        Padding(
          padding:
              const EdgeInsets.only(left: 30.0, right: 280.0, bottom: 20.0),
          child: Divider(
            color: Colors.white,
            thickness: 5.0,
          ),
        ),
        Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 30.0, bottom: 10.0),
              child: Text(
                "Welcome",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold),
              ),
            )),
        Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 30.0),
              child: Text(
                "to Room Control",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25.0,
                ),
              ),
            )),
        Padding(
          padding: const EdgeInsets.only(top: 20.0),
          child: Container(
            color: Colors.white,
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 35.0, top: 30.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                      focusedBorder: InputBorder.none,
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.only(
                          left: 15, bottom: 11, top: 11, right: 15),
                      prefixIcon: Image.asset("images/icon_feather_user.png"),
                      hintText: "Username",
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 35.0, top: 20.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                      focusedBorder: InputBorder.none,
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.only(
                          left: 15, bottom: 11, top: 11, right: 15),
                      prefixIcon: Image.asset("images/icon_feather_lock.png"),
                      hintText: "Password",
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 35.0, right: 35.0),
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: RaisedButton(
                      color: Colors.green,
                      onPressed: () {},
                      child: Text("SIGN IN",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15.0,
                              color: Colors.white)),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 40.0, top:30.0),
                  child: Row(
                    children: <Widget>[
                      Text("Don't have an account?",style: TextStyle(fontSize: 18.0),),
                      RaisedButton(
                   
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => SignUp()),
                          );
                        },
                        child: Text("SIGN UP",
                            style: TextStyle(
                              color: Colors.green,
                            )),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
