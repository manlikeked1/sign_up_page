import 'package:flutter/material.dart';

class SignInScreen extends StatefulWidget {
  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      body: ListView(
        children: <Widget>[
          //Container for the image
          Container(
            height: 300, //Image height of 300 pixels
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                        'asset/img/belinda-fewings-aaYZZyl_0EE-unsplash.jpg'),
                    fit: BoxFit.cover)),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              children: <Widget>[
                IconButton(icon: Icon(Icons.person), onPressed: () {}),
                Expanded(
                    child: Container(
                        margin: EdgeInsets.only(left: 4, right: 20),
                        child: TextField(
                          decoration: InputDecoration(hintText: 'Username'),
                        )))
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              children: <Widget>[
                IconButton(icon: Icon(Icons.lock), onPressed: () {}),
                Expanded(
                    child: Container(
                        margin: EdgeInsets.only(left: 4, right: 20),
                        child: TextField(
                          decoration: InputDecoration(hintText: 'Paasword'),
                        )))
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: Container(
                height: 60,
                child: RaisedButton(
                  onPressed: () {},
                  color: Colors.redAccent,
                  child: Text(
                    'SIGN IN',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, 'SignUp');
            },
            child: Center(
                child: RichText(
              text: TextSpan(
                  text: 'Don\'t have an account?  ',
                  style: TextStyle(color: Colors.black),
                  children: [
                    TextSpan(
                        text: 'SIGN UP',
                        style: TextStyle(
                            color: Colors.redAccent,
                            fontWeight: FontWeight.bold))
                  ]),
            )),
          )
        ],
      ),
    );
  }
}
