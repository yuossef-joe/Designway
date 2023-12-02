import 'package:designway/presentaion/Resourses/Colors_Managment.dart';
import 'package:flutter/material.dart';

import '../../Staticpage.dart';
import '../Homepage/Homepage.dart';

class YourProject extends StatefulWidget {
  const YourProject({Key? key,}) : super(key: key);

  @override
  State<YourProject> createState() => _YourProjectState();
}

class _YourProjectState extends State<YourProject> {
  late String vaulewriten;
  late String hinttext;
  List itemslist= [];
  @override
  Widget build(BuildContext context) {
    GlobalKey<ScaffoldState> _scaffoldKEy = GlobalKey();
    List lastupdate =[];
    return Scaffold(
        key:_scaffoldKEy,
        drawer: const Drawer(),
        body: Column(
          children: [
          Container(
          color: Color(0xfff3f3f3),
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
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        MaterialButton(onPressed: () =>  Navigator.of(context).push(MaterialPageRoute(builder: (context) => Staticpage())),
                            child: const Icon(Icons.arrow_back,color:Colors.white,size: 30,)),
                        const Text("Your Project",style:TextStyle(color:Colors.white,fontSize: 20,fontWeight: FontWeight.w500),),
                        MaterialButton(onPressed: () => _scaffoldKEy.currentState?.openDrawer(),
                            child: const Icon(Icons.menu_outlined,color:Colors.white,size: 30,)),

                      ],
                    )]),
            ),),
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
                              child: Column(children: [
                                Container(
                                  height: 160,
                                  width:double.infinity,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.vertical(bottom: Radius.circular(50)),
                                    color: Color(0xfff3f3f3),
                                  ),
                                  child: Align(
                                    alignment: Alignment.center,
                                    child: Padding(
                                      padding: const EdgeInsets.only(top:30),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Image.asset("asset/imges/Untitled-2.png",height:100,),
                                          Text("Track your project processing",style: TextStyle(color: Colors.grey,fontSize: 16,fontWeight: FontWeight.w600),),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                body(),
                              ],),
                            ),
                         ),]
                      ),
                    )
                    ,)
    ]));
  }

  Widget body(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 50,),
        Padding(
          padding: const EdgeInsets.fromLTRB(30,0,20,0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Traking number : ",style: TextStyle(fontSize: 16,color: Colors.grey,fontWeight: FontWeight.w600) ,),
              TextButton(onPressed: () {
              }, child: Text("Add last update"))
            ],
          ),
        ),
        SizedBox(height: 10,),
        Padding(
          padding: const EdgeInsets.fromLTRB(30,0,20,0),
          child: Row(
            children: [
              Container(
                height: 60,
                width: 310,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(borderSide: BorderSide.none),
                    hintText: "e.g #1234582588"
                  ),
                ),
              ),
              Icon(Icons.search)
            ],
          ),
        ),
        SizedBox(height: 20,),
        Padding(
          padding: const EdgeInsets.fromLTRB(35,2,20,0),
          child: Row(
            children: [
              Container(
                height: 60,
                width: 310,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Text("Results : ",style: TextStyle(fontSize: 18,color: Colors.grey,fontWeight: FontWeight.w600)),
              ),
            ],
          ),
        ),
        SizedBox(height: 5,),

      ],
    );
  }
}