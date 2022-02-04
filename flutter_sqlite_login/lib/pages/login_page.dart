// * Import Libraries
// * Flutter Libraries
import 'package:flutter/material.dart';
import 'package:flutter_sqlite_login/Comm/genTextFormField.dart';
import 'package:flutter_sqlite_login/pages/register_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _conUserId = TextEditingController();
  final _conPassword = TextEditingController();

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
                SizedBox(height: 20.0),
                // * Page Title
                Text(
                  'Login',
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
                  height: 150.0,
                  width: 150.0,
                ),
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
                  padding: EdgeInsets.symmetric(horizontal: 64),
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text('Login'),
                        SizedBox(
                          width: 5.0,
                        ),
                        Icon(Icons.send),
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
    );
  }
}
