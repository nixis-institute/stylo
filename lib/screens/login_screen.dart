import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:shopping_junction_seller/BLOC/login_bloc/login_bloc.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreen createState() => _LoginScreen();
}

class _LoginScreen extends State<LoginScreen> {
  final _User = TextEditingController();
  final _Pass = TextEditingController();
  bool isWrong = false;
  bool isSubmit = false;
  bool isPasswordVisible = false;
  void initState() {
    super.initState();
  }

  Widget _userName() {
    return Column(
      children: <Widget>[
        isWrong
            ? Text(
                'Wrong username or password',
                style: TextStyle(color: Colors.red),
              )
            : SizedBox(
                height: 1,
              ),
        TextFormField(
          controller: _User,
          decoration: InputDecoration(
              // border: InputBord
              hintText: 'Username',
              labelText: 'Username'),
          onTap: () {
            setState(() {
              isWrong = false;
            });
          },
        ),
      ],
    );
  }

  Widget _passWord() {
    return Column(
      children: <Widget>[
        TextFormField(
          autofocus: false,
          controller: _Pass,
          // onChanged: ,
          decoration: InputDecoration(
            // border: InputBord
            hintText: 'Password',
            labelText: 'Password',
            suffixIcon: IconButton(
              icon: Icon(
                  isPasswordVisible ? Icons.visibility : Icons.visibility_off),
              onPressed: () {
                setState(() {
                  isPasswordVisible = !isPasswordVisible;
                });
              },
            ),
          ),
          onTap: () {
            setState(() {
              isWrong = false;
            });
          },

          obscureText: !isPasswordVisible,
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(left: 20, right: 20),
        height: MediaQuery.of(context).size.height,
        alignment: Alignment.center,
        child: ListView(
          // mainAxisAlignment: MainAxisAlignment.center,
          // scrollDirection: Axis.vertical,
          children: <Widget>[
            SizedBox(height: MediaQuery.of(context).size.height * 0.2),
            Text(
              "Login",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 10),
            // state is LoginFailure?
            // Text("wrong username or password"):SizedBox(),
            _userName(),
            SizedBox(
              height: 10,
            ),
            _passWord(),

            SizedBox(
              height: 20,
            ),

            InkWell(
              onTap: () {
                setState(() {
                  isSubmit = true;
                });
              },
              child: Container(
                  height: 40,
                  alignment: Alignment.center,
                  // width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Container(
                    height: 25,
                    width: 25,
                    child: CircularProgressIndicator(
                      strokeWidth: 3,
                      valueColor: AlwaysStoppedAnimation(Colors.white),
                    ),
                  )

                  // state is LoginLoading
                  //   Text(
                  // "Sign In",
                  // style: TextStyle(color: Colors.white, fontSize: 19),
                  // ),
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
