import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../Constant/TextFieldSignup.dart';
import '../Staticpage.dart';
import 'LoginPage.dart';

class RegScreen extends StatefulWidget {
  const RegScreen({Key? key,}) : super(key: key);
  @override
  State<RegScreen> createState() => _RegScreenState();
}

class _RegScreenState extends State<RegScreen> {
  @override
  Widget build(BuildContext context) {
    TextEditingController username = TextEditingController();
    TextEditingController email = TextEditingController();
    TextEditingController password = TextEditingController();
    return Scaffold(
        body: Stack(//thanks for watching
          children: [
            Container(
              height: double.infinity,
              width: double.infinity,
              decoration: const BoxDecoration(
                gradient: LinearGradient(colors: [
                  Color(0xff1d8ea5),
                  Color(0xff0a3744),
                  Color(0xff112d37),
                ]),
              ),
              child: const Padding(
                padding: EdgeInsets.only(top: 60.0, left: 22),
                child: Text(
                  'Create Your\nAccount',
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 200.0),
              child: Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40), topRight: Radius.circular(40)),
                  color: Colors.white,
                ),
                height: double.infinity,
                width: double.infinity,
                child:  Padding(
                  padding: const EdgeInsets.only(left: 18.0,right: 18),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextFielddata(labeltext: 'username', formtextstyle: const TextStyle(
                        fontWeight: FontWeight.bold,
                        color:Color(0xff1d8ea5),
                      ),
                      obsure: false,
                      mycontroller: username ,),
                      TextFielddata(labeltext: 'Phone or Gmail', formtextstyle: const TextStyle(
                        fontWeight: FontWeight.bold,
                        color:Color(0xff1d8ea5),
                      ),
                        obsure: false,
                        mycontroller: email ,),
                      TextFielddata(labeltext: 'Password', formtextstyle: const TextStyle(
                        fontWeight: FontWeight.bold,
                        color:Color(0xff1d8ea5),
                      ),
                        obsure: true,
                        mycontroller: password ,),

                      const SizedBox(height: 10,),
                      const SizedBox(height: 70,),
                      TextButton(onPressed: () async {
                        try {
                        final credential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
                          email: email.text ,
                          password: password.text ,
                        );
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => const Staticpage()));
                        } on FirebaseAuthException catch (e) {
                        if (e.code == 'weak-password') {
                          print('The password provided is too weak.');
                          AwesomeDialog(
                            context: context,
                            animType: AnimType.scale,
                            dialogType: DialogType.info,
                            title: 'Error',
                            desc:   'The password provided is too weak.',
                          )..show();
                        } else if (e.code == 'email-already-in-use') {
                          print('The account already exists for that email.');
                          AwesomeDialog(
                            context: context,
                            animType: AnimType.scale,
                            dialogType: DialogType.info,
                            title: 'Error',
                            desc:   'The account already exists for that email.',
                          )..show();

                        }
                      } catch (e) {
                        print(e);
                      }
                        }, child: Container(
                        height: 55,
                        width: 300,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          gradient: const LinearGradient(
                              colors: [
                                Color(0xff1d8ea5),
                                Color(0xff0a3744),
                                Color(0xff112d37),
                              ]
                          ),
                        ),
                          child: const Center(child: Text('SIGN IN',style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.white
                        ),),),
                      ),),
                      const SizedBox(height: 80,),
                       Align(
                        alignment: Alignment.bottomRight,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                           TextButton(onPressed: () {
                             Navigator.of(context).push(MaterialPageRoute(builder: (context) => const loginScreen()));

                            }, child:
                            const Text("Already have account?",style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.grey
                            ),),),
                            TextButton(onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(builder: (context) => const loginScreen()));
                            }, child:
                            const Text("Sign up",style: TextStyle(///done login page
                                fontWeight: FontWeight.bold,
                                fontSize: 17,
                                color: Colors.black
                            ),),),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
