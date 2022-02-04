// * Import Libraries
// * Flutter Libraries
import 'package:flutter/material.dart';
import 'package:flutter_sqlite_login/Comm/genTextFormField.dart';
import 'package:flutter_sqlite_login/pages/login_page.dart';

// * Project Libraries

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final _conUserId = TextEditingController();
  final _conUserNm = TextEditingController();
  final _conEmail = TextEditingController();
  final _conPass = TextEditingController();
  final _conPassConf = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login&Register SQlite', textAlign: TextAlign.center),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 10.0),
                // * Page Title
                Text(
                  'Cadastro',
                  style: TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.deepOrangeAccent,
                  ),
                ),
                SizedBox(height: 10.0),
                // * Asset login image
                Image.asset(
                  "assets/images/login_image.png",
                  height: 120.0,
                  width: 120.0,
                ),
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
                ),
                SizedBox(height: 5.0),
                // * Email Field
                getTextFormField(
                  controller: _conEmail,
                  hintName: 'Email',
                  icon: Icons.mail_outline,
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
                  // Refeito
                  isObscureText: true,
                ),
                SizedBox(height: 5.0),
                // * Register Button
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 64),
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text('Register'),
                        SizedBox(
                          width: 5.0,
                        ),
                        Icon(Icons.person_add_alt_rounded),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 2.0),
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
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => LoginPage(),
                            ),
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
    );
  }
}
