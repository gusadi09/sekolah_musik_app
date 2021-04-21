import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  String email, password, username;
  bool agree = false;

  Widget _buildLogo() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 40, bottom: 50),
          child: Image.asset('assets/logo2.png'),
        )
      ],
    );
  }

  Widget _buildUsernameRow() {
    return Padding(
      padding: EdgeInsets.only(right: 20, left: 20, bottom: 10),
      child: TextFormField(
        keyboardType: TextInputType.emailAddress,
        onChanged: (value) {
          setState(() {
            username = value;
          });
        },
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
          ),
          labelText: 'Username',
        ),
      ),
    );
  }

  Widget _buildEmailRow() {
    return Padding(
      padding: EdgeInsets.only(right: 20, left: 20, bottom: 10),
      child: TextFormField(
        keyboardType: TextInputType.text,
        onChanged: (value) {
          setState(() {
            email = value;
          });
        },
        decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
            ),
            labelText: 'Email'),
      ),
    );
  }

  Widget _buildPasswordRow() {
    return Padding(
      padding: EdgeInsets.only(right: 20, left: 20, bottom: 10),
      child: TextFormField(
        keyboardType: TextInputType.text,
        onChanged: (value) {
          setState(() {
            password = value;
          });
        },
        decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
            ),
            labelText: 'Password'),
      ),
    );
  }

  Widget _buildRePasswordRow() {
    return Padding(
      padding: EdgeInsets.only(right: 20, left: 20, bottom: 10),
      child: TextFormField(
        keyboardType: TextInputType.text,
        onChanged: (value) {
          setState(() {
            password = value;
          });
        },
        decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
            ),
            labelText: 'Re - Password'),
      ),
    );
  }

  Widget _buildCheckBox() {
    return Row(
      children: [
        Material(
          child: Checkbox(
            value: agree,
            onChanged: (value) {
              setState(() {
                agree = value;
              });
            },
          ),
        ),
        Text(
          'I have read and accept terms and conditions',
          style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
        )
      ],
    );
  }

  Widget _buildLoginButton() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          height: 1.2 * (MediaQuery.of(context).size.height / 20),
          width: 6 * (MediaQuery.of(context).size.width / 8),
          margin: EdgeInsets.only(bottom: 0),
          child: RaisedButton(
            elevation: 5.0,
            color: Colors.red,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5.0),
            ),
            onPressed: () {},
            child: Text(
              "Login",
              style: TextStyle(
                color: Colors.white,
                letterSpacing: 1.5,
                fontSize: MediaQuery.of(context).size.height / 40,
              ),
            ),
          ),
        )
      ],
    );
  }

  Widget _buildHaveAcc() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Already have Account ?",
          style: TextStyle(
            fontSize: 12,
          ),
        ),
        TextButton(
          onPressed: () {},
          child: Text(
            'Login',
            style: TextStyle(
              color: Color(0xFFE72020),
              fontSize: 12,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildContainer() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        ClipRRect(
          borderRadius: BorderRadius.all(
            Radius.circular(9),
          ),
          child: Container(
            height: MediaQuery.of(context).size.height * 0.62,
            width: MediaQuery.of(context).size.width * 0.85,
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: 20, bottom: 20),
                  // mainAxisAlignment: MainAxisAlignment.center,
                  child: Text(
                    "REGISTER",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                _buildUsernameRow(),
                _buildEmailRow(),
                _buildPasswordRow(),
                _buildRePasswordRow(),
                _buildCheckBox(),
                _buildLoginButton(),
                _buildHaveAcc(),
              ],
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          resizeToAvoidBottomInset: false,
          body: Stack(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.6,
                width: MediaQuery.of(context).size.width,
                child: Container(
                  decoration: BoxDecoration(
                      color: Color(0xFFE72020),
                      borderRadius: BorderRadius.only(
                        bottomLeft: const Radius.circular(80),
                        bottomRight: const Radius.circular(80),
                      )),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                // crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  _buildLogo(),
                  _buildContainer(),
                ],
              )
            ],
          )),
    );
  }
}
