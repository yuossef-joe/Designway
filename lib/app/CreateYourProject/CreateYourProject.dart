

import 'package:designway/app/Homepage/Homepage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../presentaion/splash/SplashView.dart';

class CreateYourProject extends StatefulWidget{
  @override
  State<CreateYourProject> createState() => _CreateYourProjectState();
}

class _CreateYourProjectState extends State<CreateYourProject> {
  @override
  Widget build(BuildContext context) {
TextEditingController inputcontroller = new TextEditingController();

    return Scaffold(
      drawer: const Drawer(),
      body: Column(
        children: [
        Container(
        color: Colors.white,
        height: 80,
        width: double.infinity,
        child:
        Container(
          height: 130,
          width: double.infinity,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(bottomRight: Radius.circular(70)),
            gradient: LinearGradient(colors: [
              Color(0xff1d8ea5),
              Color(0xff0a3744),
            ]),
          ),
          child:Stack(
              alignment: Alignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    MaterialButton(onPressed: () =>  Navigator.of(context).push(MaterialPageRoute(builder: (context) => Homepage())),
                        child: const Icon(Icons.arrow_back,color:Colors.white,size: 30,)),
                    SizedBox(width: 25,),
                    const Text("Create Your Request",style:TextStyle(color:Colors.white,fontSize: 20,fontWeight: FontWeight.w500),),
                  ],
                )]),

        ),
      ),
      Expanded(
        child: Container(
          child: Stack(
            children: [
              Container(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(colors: [
                    Color(0xff1d8ea5),
                    Color(0xff0a3744),
                    Color(0xff112d37),
                  ]),
                ),
                child: Container(
                  width: double.infinity,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(70)),
                      color: Colors.white
                  ),
                ),
              ),
              Column(
                  children: [
                    SizedBox(height: 20,),

                    
                    TextField(
                      controller: inputcontroller,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular( 20),
                        ),  
                      ),
                    ),
                    MaterialButton(onPressed: () {  },
                      child: Text("Submit"),
                    )
              ]),
            ],
          ),
        ),),
            ]),
    );
  }
}