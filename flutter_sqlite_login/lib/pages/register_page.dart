// * Import Libraries
// * Flutter Libraries
import 'package:flutter/material.dart';
import 'package:flutter_sqlite_login/pages/login_page.dart';

// * Project Libraries

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
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
                // * User Name Field
                TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Nome completo',

                    // * Input Decoration
                    // * Field Icons
                    prefixIcon: Icon(Icons.person),
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
                // * Email Field
                TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Email',

                    // * Input Decoration
                    // * Field Icons
                    prefixIcon: Icon(Icons.mail_outline),
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
                // * Confirm Password Field
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: 'Confirmação de senha',

                    // * Input Decoration
                    // * Field Icons
                    prefixIcon: Icon(Icons.lock_outline),
                    suffixIcon: Icon(Icons.remove_red_eye_outlined),
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
                // * Register Button
                Container(
                  padding: EdgeInsets.fromLTRB(26, 5, 26, 2),
                  width: double.infinity,
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
