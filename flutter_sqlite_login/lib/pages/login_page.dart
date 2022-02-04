// * Import Libraries
// * Flutter Libraries
import 'package:flutter/material.dart';
import 'package:flutter_sqlite_login/pages/register_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login&Register SQlite', textAlign: TextAlign.center),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          margin: EdgeInsets.all(32.0),
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
                TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Nome de Usuário',

                    // * Input Decoration
                    // * Field Icons
                    prefixIcon: Icon(Icons.account_circle),
                    // * BG Decoration
                    fillColor: Colors.grey[300],
                    filled: true,
                    // * Border Decoration
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(30.0),
                      ),
                      borderSide: BorderSide(color: Colors.transparent),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(30.0),
                      ),
                      borderSide: BorderSide(color: Colors.lightGreen),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(30.0),
                      ),
                      borderSide: BorderSide(color: Colors.redAccent),
                    ),
                  ),
                ),
                SizedBox(height: 8.0),
                // * Password Field
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: 'Senha',

                    // * Input Decoration
                    // * Field Icons
                    prefixIcon: Icon(Icons.lock),
                    suffixIcon: Icon(Icons.remove_red_eye),
                    // * BG Decoration
                    fillColor: Colors.grey[300],
                    filled: true,
                    // * Border Decoration
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(30.0),
                      ),
                      borderSide: BorderSide(color: Colors.transparent),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(30.0),
                      ),
                      borderSide: BorderSide(color: Colors.lightGreen),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(30.0),
                      ),
                      borderSide: BorderSide(color: Colors.redAccent),
                    ),
                  ),
                ),
                SizedBox(height: 5.0),
                // * Login Button
                Container(
                  padding: EdgeInsets.fromLTRB(26, 5, 26, 2),
                  width: double.infinity,
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
