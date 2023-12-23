import 'package:flutter/material.dart';
import 'package:sajhabackup/main.dart';
import 'package:sajhabackup/pages/register.dart';

TextStyle mystyle = TextStyle(fontSize: 25);

class loginscreen extends StatefulWidget {
  const loginscreen({super.key});

  @override
  State<loginscreen> createState() => _loginscreenState();
}

class _loginscreenState extends State<loginscreen> {
  String user = '';
  String pass = '';

  @override
  Widget build(BuildContext context) {
    final userfield = TextField(
      onChanged: (val) {
        setState(() {
          user = val;
        });
      },
      style: mystyle,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.all(10),
        hintText: "Email, Phone or Username",
        hintStyle: TextStyle(fontSize: 20),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32)),
      ),
    );
    final password = TextField(
      onChanged: (val) {
        setState(() {
          pass = val;
        });
      },
      obscureText: true,
      style: mystyle,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.all(10),
        hintText: "Password",
        hintStyle: TextStyle(fontSize: 20),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32)),
      ),
    );
    final myloginbutton = Material(
      elevation: 3,
      borderRadius: BorderRadius.circular(30),
      color: Colors.deepPurple,
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width,
        padding: EdgeInsets.all(12),
        onPressed: () {
          if (user == "esparsh" && pass == "Password123") {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => homepage()));
          } else {
            print("Falied");
          }
        },
        child: Text(
          'Login',
          style: TextStyle(color: Colors.white, fontSize: 24),
        ),
      ),
    );
    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.white,
          child: Padding(
              padding: EdgeInsets.all(20),
              child: ListView(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        child: Image.asset(
                          'assets/images/logo.png',
                          height: 250,
                        ),
                      ),
                      SizedBox(height: 2),
                      Container(
                        child: const Text(
                          'Sell, Buy & Rent Books',
                          style: TextStyle(color: Colors.black, fontSize: 19),
                        ),
                      ),
                      SizedBox(height: 20),
                      userfield,
                      SizedBox(height: 10),
                      password,
                      SizedBox(height: 1),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              TextButton(
                                onPressed: () {},
                                child: Text(
                                  'Forgot Password?',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 13,
                                      color: Colors.black),
                                ),
                              ),
                            ]),
                      ),
                      SizedBox(height: 10),
                      myloginbutton,
                      SizedBox(height: 10),
                      Divider(
                        thickness: 1,
                        color: Colors.grey[400],
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Or Connect With',
                        style: TextStyle(color: Colors.black, fontSize: 18),
                      ),
                      SizedBox(height: 8),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 140),
                        child: Row(
                          children: [
                            //googlebutton
                            Image.asset(
                              'assets/images/google.png',
                              height: 60,
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 30),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Not a member?'),
                          SizedBox(width: 1),
                          TextButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => register()));
                              },
                              child: Text(
                                'Register Now',
                                style: TextStyle(
                                    color: Colors.blue,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14),
                              ))
                        ],
                      )
                    ],
                  ),
                ],
              )),
        ),
      ),
    );
  }
}
