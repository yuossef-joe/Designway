import 'package:designway/app/CreateYourProject/CreateYourProject.dart';
import 'package:flutter/material.dart';

import '../../Staticpage.dart';
import '../../presentaion/Resourses/Colors_Managment.dart';
import '../../presentaion/splash/SplashView.dart';

class Homepage extends StatefulWidget {
  const Homepage({
    super.key,
  });
  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  GlobalKey<ScaffoldState> _scaffoldKEy = GlobalKey();
  String? username;
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        key:_scaffoldKEy,
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
                  alignment: Alignment.centerLeft,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          MaterialButton(onPressed: () =>  Navigator.of(context).push(MaterialPageRoute(builder: (context) => SelectionPage())),
                              child: const Icon(Icons.arrow_back,color:Colors.white,size: 30,)),
                          const Text("Create Your Project",style:TextStyle(color:Colors.white,fontSize: 20,fontWeight: FontWeight.w500),),
                          MaterialButton(onPressed: () => _scaffoldKEy.currentState?.openDrawer(),
                              child: const Icon(Icons.menu_outlined,color:Colors.white,size: 30,)),

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
                        Container(
                          margin: EdgeInsets.only(left: 30,top: 40,right: 30),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Find your technology".toUpperCase(),style: TextStyle(color: Colors.grey,fontSize: 18,fontWeight: FontWeight.w600),
                              ),
                              SizedBox(height: 20,),
                              TextFormField(
                                decoration: InputDecoration(
                                    filled: true,
                                  fillColor: Color(0xff1d8ea5),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(50),
                                    borderSide: BorderSide.none,
                                  ),
                                  prefixIcon: Icon(Icons.search,color: Colors.white,),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(alignment: Alignment.centerLeft,margin: EdgeInsets.only(left: 30,top: 40),child: Text("OUR DEPARTMENT",style: TextStyle(color:Colors.grey,fontSize: 18,fontWeight: FontWeight.w600),)),
                        // SingleChildScrollView(
                        //     scrollDirection: Axis.horizontal,
                        //   child: Row(
                        //     children: [
                        //       scrollcard(containericon: () {},),
                        //       scrollcard(containericon: () {
                        //       },),
                        //       scrollcard(containericon: () {  },),
                        //       scrollcard(containericon: () {  },),
                        //     ],
                        //   ),
                        // ),
                        SizedBox(height: 20,),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  MaterialButton(onPressed: () {

                                  },
                                    padding: const EdgeInsets.all(15),
                                    shape: const CircleBorder(),
                                    color: const Color(0xff1d8ea5),
                                    child: const Icon(Icons.web_asset_rounded),textColor: Colors.white,),
                                  Container(margin:EdgeInsets.only(left: 5,top: 5),child: Text("Web ",style: TextStyle(color: ColorMangment.iconscolor,fontWeight: FontWeight.w600),))
                                ],
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  MaterialButton(onPressed: () {

                                  },
                                    padding: const EdgeInsets.all(15),
                                    shape: const CircleBorder(),
                                    color: const Color(0xff1d8ea5),
                                    child: const Icon(Icons.mobile_friendly),textColor: Colors.white,),
                                  Container(margin:EdgeInsets.only(left: 5,top: 5),child: Text("Application ",style: TextStyle(color: ColorMangment.iconscolor,fontWeight: FontWeight.w600),))
                                ],
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [

                                  MaterialButton(onPressed: () {

                                  },
                                    padding: const EdgeInsets.all(15),
                                    shape: const CircleBorder(),
                                    color: const Color(0xff1d8ea5),
                                    child: const Icon(Icons.graphic_eq_outlined),textColor: Colors.white,),
                                  Container(margin:EdgeInsets.only(left: 5,top: 5),child: Text("Markting",style: TextStyle(color: ColorMangment.iconscolor,fontWeight: FontWeight.w600),))
                                ],
                              ),

                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  MaterialButton(onPressed: () {

                                  },

                                    padding: const EdgeInsets.all(15),
                                    shape: const CircleBorder(),
                                    color: const Color(0xff1d8ea5),
                                    child: const Icon(Icons.analytics_sharp),
                                    textColor: Colors.white,),
                                  Container(margin:EdgeInsets.only(left: 5,top: 5),child: Text("SEO",style: TextStyle(color: ColorMangment.iconscolor,fontWeight: FontWeight.w600),))
                                ],
                              ),

                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  MaterialButton(onPressed: () {

                                  },

                                    padding: const EdgeInsets.all(15),
                                    shape: const CircleBorder(),
                                    color: const Color(0xff1d8ea5),
                                    child: const Icon(Icons.design_services),textColor: Colors.white,),
                                  Container(margin:EdgeInsets.only(left: 5,top: 5),child: Text("Ui & Ux",style: TextStyle(color: ColorMangment.iconscolor,fontWeight: FontWeight.w600),))
                                ],
                              ),
                            ],
                          ),
                        ),
                        // Container(
                        //   margin:  EdgeInsets.only(top: 40,right: 20,left: 20),
                        //   padding:  EdgeInsets.symmetric(vertical:120,horizontal: 80),
                        //     decoration:  BoxDecoration(
                        //       borderRadius: BorderRadius.vertical(top: Radius.circular(15),bottom: Radius.circular(15)),
                        //       color: Colors.white,
                        //       boxShadow: [
                        //         BoxShadow(
                        //           blurRadius: 3,
                        //           offset: Offset(0,1)
                        //         )
                        //       ]
                        //     ),
                        // ),
                        SizedBox(height: 90,),
                            ElevatedButton(onPressed: () =>  Navigator.of(context).push(MaterialPageRoute(builder: (context) => CreateYourProject()))
                              , child: Text("Create your Project".toUpperCase(), style: TextStyle(fontSize: 18,color: Colors.white),),
                              style: ButtonStyle(padding: MaterialStateProperty.all(EdgeInsets.symmetric(horizontal: 60,vertical: 35)),backgroundColor:MaterialStateProperty.all(ColorMangment.firstlineargradient),
                              shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.0),
                              side: BorderSide(color: ColorMangment.firstlineargradient)
                              )),
                              ),
                              ),
                        SizedBox(height: 20,),
                        ElevatedButton(onPressed: () {
                        }, child: Text("add catigories by admin".toUpperCase(), style: TextStyle(fontSize: 18,color: Colors.white),),
                          style: ButtonStyle(padding: MaterialStateProperty.all(EdgeInsets.symmetric(horizontal: 45,vertical: 35)),backgroundColor:MaterialStateProperty.all(ColorMangment.firstlineargradient),
                            shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.0),
                                side: BorderSide(color: ColorMangment.firstlineargradient)
                            )),
                          ),
                        ),
                        // Container(
                        //   margin: EdgeInsets.only(top: 90,left: 40,right: 40),
                        //   padding: EdgeInsets.symmetric(vertical: 35,horizontal: 60),
                        //   decoration: BoxDecoration(
                        //     borderRadius: BorderRadius.vertical(top: Radius.circular(15),bottom: Radius.circular(15)),
                        //     color: ColorMangment.firstlineargradient,
                        //   ),
                        //   child: Text("Create yor request".toUpperCase(),style: TextStyle(color:Colors.white,fontWeight: FontWeight.w500,fontSize: 18),),
                        // ),
                      ]
                    ),
                  ],
                ),
              ),),
            // Container(
            //   color: Colors.white,
            //   height: 100,
            //   width: double.infinity,
            //   child:
            //   Container(
            //     height: 100,
            //     width: double.infinity,
            //     decoration: const BoxDecoration(
            //       borderRadius: BorderRadius.only(topLeft: Radius.circular(70)),
            //       gradient: LinearGradient(colors: [
            //         Color(0xff1d8ea5),
            //         Color(0xff0a3744),
            //         Color(0xff112d37),
            //       ]),
            //     ),
            //   ),
            // ),
          ],
        ));
  }
}


class scrollcard extends StatelessWidget {
  const scrollcard ({Key? key, required this.containericon }):super(key: key);
   final Function() containericon ;

  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: const EdgeInsets.symmetric(horizontal: 70,vertical: 60),
      margin: const EdgeInsets.only(left: 20,top: 30),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
        gradient: LinearGradient(colors: [
          ColorMangment.firstlineargradient,
          ColorMangment.secondlineargradient,
        ]),
      ),
      child: MaterialButton(onPressed: () {},
        padding: const EdgeInsets.symmetric(horizontal: 50,vertical: 50),
      ),
    );
  }
}
