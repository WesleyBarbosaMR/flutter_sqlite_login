// * Import Libraries
// * Flutter Libraries
import 'package:flutter/material.dart';
import 'package:flutter_sqlite_login/Comm/comHelper.dart';

// * Project Libraries
import 'package:flutter_sqlite_login/pages/register_page.dart';
import 'package:flutter_sqlite_login/Comm/genLoginSignupHeader.dart';
import 'package:flutter_sqlite_login/Comm/genTextFormField.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();

  final _conUserId = TextEditingController();
  final _conPassword = TextEditingController();

  login() {
    final form = _formKey.currentState;

    String uid = _conUserId.text;
    String pass = _conPassword.text;

    if (form!.validate()) {
      alertDialog(context, "Ok");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login&Register SQlite', textAlign: TextAlign.center),
      ),
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 20.0),
                  // * Page Title
                  genLoginSignupHeader(pageTitle: 'Login'),
                  SizedBox(height: 5.0),
                  // * User Name Field
                  getTextFormField(
                    controller: _conUserId,
                    hintName: 'Nome de usuário',
                    icon: Icons.account_circle,
                  ),
                  SizedBox(height: 5.0),
                  // * Password Field
                  getTextFormField(
                    controller: _conPassword,
                    hintName: 'Senha',
                    icon: Icons.lock,
                    isObscureText: true,
                  ),
                  SizedBox(height: 5.0),
                  // * Login Button
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.deepOrange,
                      border: Border.all(
                          color: Colors.deepOrange,
                          width: 1.0,
                          style: BorderStyle.solid),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 32),
                    margin: EdgeInsets.symmetric(horizontal: 60),
                    child: FlatButton(
                      onPressed: login,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Login',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            width: 5.0,
                          ),
                          Icon(Icons.send),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 5.0),
                  // * Toggle Create Account
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Ainda não possui conta ? ',
                          style: TextStyle(
                            fontSize: 10.0,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => RegisterPage(),
                              ),
                            );
                          },
                          child: Text(
                            'Cadastre-se aqui!',
                            style: TextStyle(
                              color: Colors.blueAccent,
                              fontSize: 10.0,
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
