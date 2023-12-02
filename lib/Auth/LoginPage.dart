import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../Constant/TextFieldLogin.dart';
import '../Staticpage.dart';
import 'RegisterPage.dart';

class loginScreen extends StatefulWidget {
  const loginScreen({Key? key}) : super(key: key);

  @override
  State<loginScreen> createState() => _loginScreenState();
}

class _loginScreenState extends State<loginScreen> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  GlobalKey<FormState> formstate = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: formstate,
        body: Column(
          children: [
            // Container(
            //   color: Color(0xFF0a3542),
            //   height: 50,
            //   width: double.infinity,
            //   child:
            // Container(
            //   height: 50,
            //   width: double.infinity,
            //   decoration: const BoxDecoration(
            //
            //     borderRadius: BorderRadius.only(bottomRight: Radius.circular(70)),
            //     color: Colors.white,
            //   ),
            //
            // ),
            // ),
            Expanded(
              child: Container(
              // margin: EdgeInsets.only(top: 50),
              height: 500,
              width: double.infinity,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(topLeft: Radius.circular(70), bottomRight:Radius.circular(70) ),
                color: Color(0xff112a34),
              ),
                child: Stack(
                children: [
                  ClipRRect(
                    // borderRadius: BorderRadius.only(topLeft: Radius.circular(70),bottomRight: Radius.circular(70)),
                    child: Image.asset("asset/imges/backgraond.png",fit: BoxFit.fill,width: double.infinity),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        padding: EdgeInsets.all(90),
                        child: Image.asset("asset/imges/Design ways(2).png"),),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 70),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            TextFieldLogin(
                              hinttext:"Email" ,
                              mycontroller:email ,
                              obsure: false,
                            ),
                            Container(height: 20,),
                            TextFieldLogin(
                              hinttext:"Password" ,
                              mycontroller:password ,
                              obsure: true,
                            ),
                          ],
                        ),
                      ),
                      Container(height: 20,),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(builder: (context) => RegScreen()));
                            },
                            child: Text("Forget Password ? ",style: TextStyle(color: Colors.white),),
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(builder: (context) => RegScreen()));
                            },
                            child: Text("Sign up ",style: TextStyle(color: Colors.white),),
                          ),
                        ],
                      ),
                      Container(height: 20,),
                      MaterialButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(50))
                        ),
                        elevation: 4,
                        padding: EdgeInsets.symmetric(horizontal: 90,vertical: 20),
                        textColor: Colors.white,
                        color: Color(0xff0fabc7),
                        child: Text("Log in"),
                        onPressed: ()async {
                            try {
                              final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
                                  email: email.text,
                                  password: password.text
                              );
                              Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) => Staticpage()),(route)=>false);
                            }
                            on FirebaseAuthException catch (e) {
                              if (e.code == 'user-not-found') {
                                print('No user found for that email.');
                                AwesomeDialog(
                                  context: context,
                                  dialogType: DialogType.error,
                                  animType: AnimType.rightSlide,
                                  title: 'Error',
                                  desc: 'No user found for that email.',
                                )..show();
                              } else if (e.code == 'wrong-password') {
                                print('Wrong password provided for that user.');
                                AwesomeDialog(
                                  context: context,
                                  dialogType: DialogType.error,
                                  animType: AnimType.rightSlide,
                                  title: 'Error',
                                  desc: 'Wrong password provided for that user.',
                                )..show();
                              }
                            }
                      },

                      ),
                    ],
                  ),
                ],
              ),
            ),),
            // Container(
            //   color: Color(0xFF21b3ce),
            //   height: 50,
            //   width: double.infinity,
            //   child:
            //   Container(
            //     height: 50,
            //     width: double.infinity,
            //     decoration: const BoxDecoration(
            //       borderRadius: BorderRadius.only(topLeft: Radius.circular(70)),
            //       color: Colors.white,
            //     ),
            //
            //   ),
            // ),
          ],
        ));
  }
}
