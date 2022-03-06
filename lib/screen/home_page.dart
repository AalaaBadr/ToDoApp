import 'package:flutter/material.dart';
import 'package:to_do_app/connection/Login_page.dart';
import 'package:to_do_app/connection/Signup_page.dart';

class Home extends StatefulWidget {

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black12,
        appBar: AppBar(
          backgroundColor: Color(0xff4a1490),
          title: const Center(
            child: Padding(
              padding: const EdgeInsets.only(right: 25),
              child: Text(
                'Welcome',
                style: TextStyle(
                  fontSize: 37,
                  fontWeight: FontWeight.w600,
                  color: Colors.black87,
                ),
              ),
            ),
          ),
        ),
        body: SafeArea(
            child: Container(
              height: MediaQuery
                  .of(context)
                  .size
                  .height,
              width: MediaQuery
                  .of(context)
                  .size
                  .width,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [
                        Color(0xff1d1e26),
                        Color(0xff252041),
                      ]
                  )

              ),

              child: Center(
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Spacer(),
                        Container(
                          margin: const EdgeInsets.only(top: 8),
                          height: 70,
                          width: 350,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                                colors: [
                                  Colors.red,
                                  Color(0xff252024),
                                ]
                            ),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                  context, MaterialPageRoute(
                                  builder: (context) => LoginPage()));
                            },
                            child: Center(
                              child: Text('Log in',
                                  style: TextStyle(
                                      fontSize: 40,
                                      color: Colors.black87,
                                      fontWeight: FontWeight.w500
                                  )
                              ),
                            ),

                          ),
                        ),

                        Container(
                          margin: const EdgeInsets.only(top: 8),
                          height: 70,
                          width: 350,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                                colors: [
                                  Colors.blue,
                                  Color(0xff252041),
                                ]
                            ),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: InkWell(

                              onTap: () {
                                Navigator.push(
                                    context, MaterialPageRoute(builder: (
                                    context) => SignupPage()));
                              },
                              child: Center(
                                child: Text('Sign up',
                                    style: TextStyle(
                                        fontSize: 40,
                                        color: Colors.black87,
                                        fontWeight: FontWeight.w500
                                    )
                                ),
                              )
                          ),
                        ),
                        Spacer()
                      ]
                  )
              ),
            )
        )
    );
  }
}
