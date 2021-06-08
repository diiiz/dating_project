import 'package:dating_project/constants/constants.dart';
import 'package:dating_project/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SignIn extends StatefulWidget {

  final Function toggleView;

  SignIn(this.toggleView, {Key? key}) : super(key: key);

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Color(0xff1F1F1F),
      appBar: appBarLogInSolid(context),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height - 50,
          alignment: Alignment.bottomCenter,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 24, vertical: 50),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 50),
                  child: Column(
                    children: [
                      TextField(
                        style: textStyleNormal(),
                        decoration: textFieldDecoration("E-Mail", kPastelYellow),
                      ),
                      SizedBox(height: 10),
                      TextField(
                        style: textStyleNormal(),
                        decoration: textFieldDecoration("Password", kPastelYellow),
                      ),
                    ]
                  ),
                ),
                SizedBox(height: 16),
                Container(
                  alignment: Alignment.centerRight,
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 16,vertical: 8),
                    child: Text("Forgot Password?",style: textStyleNormal()),
                  ),
                ),
                SizedBox(height: 16),
                Container(
                  alignment: Alignment.center,
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.symmetric(vertical: 20),
                  decoration: buttonDecoration(kPastelBlue),
                  child: Text("Sign In", style: textStyleNormal()),
                ),
                SizedBox(height: 16),
                Container(
                  alignment: Alignment.center,
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.symmetric(vertical: 20),
                  decoration: buttonDecoration(kPastelOrange),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset("assets/images/Google.png", height: 20.0, width: 20.0,),
                      SizedBox(width: 15,),
                      Text("Sign In with Google", style: textStyleNormal()),
                    ],
                  ),
                ),
                SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don't have an account? ", style: textStyleNormal(),),
                    GestureDetector(
                      onTap: () {
                        widget.toggleView();
                      },
                      child: Text("Register now", style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        decoration: TextDecoration.underline
                      ),),
                    )
                  ],
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
