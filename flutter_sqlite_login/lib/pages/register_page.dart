// * Import Libraries
// * Flutter Libraries
import 'package:flutter/material.dart';

// * Project Libraries
import 'package:flutter_sqlite_login/pages/login_page.dart';
import 'package:flutter_sqlite_login/Comm/genLoginSignupHeader.dart';
import 'package:flutter_sqlite_login/Comm/genTextFormField.dart';
import 'package:flutter_sqlite_login/Comm/comHelper.dart';
import 'package:fluttertoast/fluttertoast.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final _formKey = GlobalKey<FormState>();

  final _conUserId = TextEditingController();
  final _conUserNm = TextEditingController();
  final _conEmail = TextEditingController();
  final _conPass = TextEditingController();
  final _conPassConf = TextEditingController();

  signUp() {
    final form = _formKey.currentState;

    String uid = _conUserId.text;
    String uname = _conUserNm.text;
    String email = _conEmail.text;
    String pass = _conPass.text;
    String cfmPass = _conPassConf.text;

    if (form!.validate()) {
      alertDialog(context, "Cadastrado com sucesso!");
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
                  SizedBox(height: 10.0),
                  // * Page Title
                  genLoginSignupHeader(pageTitle: 'Cadastro'),
                  SizedBox(height: 5.0),
                  // * User ID Field
                  getTextFormField(
                    controller: _conUserId,
                    hintName: 'Nome de usuário',
                    icon: Icons.account_circle,
                  ),
                  SizedBox(height: 5.0),
                  // * User Name Field
                  getTextFormField(
                    controller: _conUserNm,
                    hintName: 'Nome completo',
                    icon: Icons.person,
                    inputType: TextInputType.name,
                  ),
                  SizedBox(height: 5.0),
                  // * Email Field
                  getTextFormField(
                    controller: _conEmail,
                    hintName: 'Email',
                    icon: Icons.mail_outline,
                    inputType: TextInputType.emailAddress,
                  ),
                  SizedBox(height: 5.0),
                  // * Password Field
                  getTextFormField(
                    controller: _conPass,
                    hintName: 'Senha',
                    icon: Icons.lock,
                    isObscureText: true,
                  ),
                  SizedBox(height: 5.0),
                  // * Confirm Password Field
                  getTextFormField(
                    controller: _conPassConf,
                    hintName: 'Confirmação de senha',
                    icon: Icons.lock_outline,
                    isObscureText: true,
                  ),
                  SizedBox(height: 5.0),
                  // * Register Button
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
                      onPressed: signUp,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Register',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            width: 5.0,
                          ),
                          Icon(Icons.person_add_alt_rounded),
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
                          'Já possui conta ? ',
                          style: TextStyle(
                            fontSize: 10.0,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.pushAndRemoveUntil(
                              context,
                              MaterialPageRoute(
                                builder: (context) => LoginPage(),
                              ),
                              (Route<dynamic> route) => false,
                            );
                          },
                          child: Text(
                            'Voltar ao Login!',
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
