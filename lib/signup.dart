import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  SignUp({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
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
        Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 30.0, bottom: 10.0),
              child: Text(
                "Create New Account",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold),
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
                  padding: const EdgeInsets.only(left: 35.0, top: 20.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                      focusedBorder: InputBorder.none,
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.only(
                          left: 15, bottom: 11, top: 11, right: 15),
                      prefixIcon: Image.asset("images/icon_feather_lock.png"),
                      hintText: "Email",
                    ),
                  ),
                ),
                 Padding(
                  padding: const EdgeInsets.only( top:30.0,left: 40.0),
                  child: Row(
                    children: <Widget>[
                      Text("I have accepted the terms & Condition",style:TextStyle(fontSize: 18.0)),
                    ],
                  ),
                ),
               Padding(
                  padding: const EdgeInsets.only(left: 35.0,top:30.0, right: 35.0),
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: RaisedButton(
                      color: Colors.green,
                      onPressed: () {},
                      child: Text("SIGN UP",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15.0,
                              color: Colors.white)),
                    ),
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
