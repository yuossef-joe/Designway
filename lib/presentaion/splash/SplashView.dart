import 'package:designway/presentaion/Resourses/Colors_Managment.dart';
import 'package:flutter/material.dart';

import '../../Auth/LoginPage.dart';
import '../../Auth/RegisterPage.dart';

class SelectionPage extends StatefulWidget{
  const SelectionPage({Key? key}): super (key: key);

  @override
  State<StatefulWidget> createState() =>_SelectionPageState();
}
class _SelectionPageState extends State<SelectionPage>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
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
                    alignment: Alignment.centerLeft,
                    children: [
                      Row(
                        children: [
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
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          padding: EdgeInsets.all(60),
                          child: Image.asset("asset/imges/Design ways(2).png"),),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 40,vertical: 30),
                          decoration: BoxDecoration(),
                          child: TextButton(onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(builder: (context) => RegScreen()));
                          }, child: Text("Create your Project".toUpperCase(), style: TextStyle(fontSize: 14,),),
                            style: ButtonStyle(padding: MaterialStateProperty.all(EdgeInsets.symmetric(horizontal: 50,vertical: 15)),
                              foregroundColor: MaterialStateProperty.all(ColorMangment.iconscolor),
                            shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.0),
                              side: BorderSide(color: ColorMangment.iconscolor)
                            ))
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(bottom: 140),
                          decoration: BoxDecoration(
                          ),
                          child: ElevatedButton(onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(builder: (context) => loginScreen()));
                            }, child: Text("Manage your Project".toUpperCase(), style: TextStyle(fontSize: 14,color: Colors.white),),
                            style: ButtonStyle(padding: MaterialStateProperty.all(EdgeInsets.symmetric(horizontal: 45,vertical: 15)),
                                foregroundColor: MaterialStateProperty.all(Colors.red),backgroundColor:MaterialStateProperty.all(ColorMangment.firstlineargradient),
                                shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.0),
                                    side: BorderSide(color: ColorMangment.firstlineargradient)
                                )),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            width: double.infinity,
                            margin: EdgeInsets.only(top: 60),
                            decoration: BoxDecoration(borderRadius: BorderRadius.vertical(top: Radius.circular(50)),
                              gradient: LinearGradient(colors: [
                                Color(0xff1d8ea5),
                                Color(0xff0a3744),
                                Color(0xff112d37),
                              ]),),
                            child:
                            Stack(
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                          margin:EdgeInsets.only(right: 20) ,
                                          child: Icon(Icons.facebook,color: Colors.white)),
                                      Container(
                                          margin:EdgeInsets.only(right: 20) ,
                                          child: Icon(Icons.facebook,color: Colors.white)),
                                      Container(
                                          child: Icon(Icons.facebook,color: Colors.white)),
                                    ],
                                  )
                                ],)
                              ]
                          ),
                        ),
                      ),]
                    ),
                  ],
                ),
              ),),
          ],
        )
);
  }

}