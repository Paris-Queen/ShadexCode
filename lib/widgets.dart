
import 'package:dot_appointment/second_page.dart';
import 'package:dot_appointment/third_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'doctor_model.dart';
import 'first_page.dart';
class Widgets {
  MainScreen you = MainScreen();
  Present represent = Present();
  Widget welcome () => Padding(
    padding: const EdgeInsets.fromLTRB(0 , 20, 0,0 ),
    child: Container(
      width: 1500,
      height: 50,
      color: Colors.white38,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(15, 0, 10, 0),
        child: Row(
          children: [
            CircleAvatar(
              radius: 20,
              backgroundImage: AssetImage('assets/doctor wey get pride.jpg'),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 10, 0, 0),
                  child: Text('Hello, Asep!', style: TextStyle(fontWeight: FontWeight.bold,),),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 5, 0, 0),
                  child: Text('How Are You Feeling Today', style: TextStyle(color: Colors.black38, fontSize: 10),),
                )
              ],
            ),
            Expanded(child: SizedBox( width: 20,)),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.white
              ),
              height: 30,
              width: 30,
              child:Center(
                child: Icon(Icons.notifications_none_outlined,color: Colors.black38,),
              ),
            ),
          ],

        ),
      ),
    ),
  );
  Widget appointment(BuildContext context) => Padding(
    padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
    child: Container(
      height: 182,
      width: 1500,
      color: Colors.white,
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(15, 0, 0, 10),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text('Upcomming Appointment',style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
            ),
          ),
          //SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.fromLTRB(15, 0, 10, 0),
            child: Container(
              height: 150,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(10,),
                  border: Border.all(color: Colors.cyan)),
              child: Stack(
                children: [
                  Positioned(
                      top: 20,
                      left: 20,
                      child: Text('dr. Maman Suparman', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),)),
                  Positioned(
                      top: 40,
                      left: 20,
                      child: Text('ENT SPecialist', style: TextStyle(fontSize: 10,color: Colors.black54),)),
                  Positioned(
                      top: 60,
                      left: 20,
                      child: Text('February, 16 2022 at 01.00 PM', style: TextStyle(fontSize: 13, color: Colors.black54),)),
                  Positioned(
                    top: 100,
                    left: 20,
                    child: FlatButton(
                      color: Colors.cyan,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>SecondPage()));
                      },
                      child: Text('Call now',style: TextStyle(color: Colors.white),),
                    ), ),
                  Positioned(
                    top: 25,
                    right: 35,
                    child: Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      image: DecorationImage(
                        image: AssetImage('assets/doctor wey get pride.jpg'),
                        fit: BoxFit.cover
                      )
                    ),)),




                ],
              ),
            ),
          ),
        ],
      ),
    ),
  );
  Widget services () => Padding(padding:
  EdgeInsets.fromLTRB(0, 20, 0, 0),
    child: Column(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
          child: Align(alignment: Alignment.topLeft,
            child: Text('Our Services', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),),
        ),
        SizedBox(height: 10,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
              child: Column(
                children: [
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                    ),
                    child: Center (
                      child: Icon(Icons.person, size: 30,color: Colors.red,),
                    ),
                  ),
                  Text('Doctor',style: TextStyle(fontSize: 12),)
                ],
              ),
            ),
            Column(
              children: [
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                  child: Center (
                    child: Icon(Icons.local_hospital_outlined, size: 30,color: Colors.yellow,),
                  ),
                ),
                Text('Hospital',style: TextStyle(fontSize: 12),)
              ],
            ),
            Column(
              children: [
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                  child: Center (
                    child: Icon(Icons.edit, size: 30,color: Colors.deepPurple,),
                  ),
                ),
                Text('Drug',style: TextStyle(fontSize: 12),)
              ],
            ),
            Column(
              children: [
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                  child: Center (
                    child: Icon(Icons.grid_view, size: 30,color: Colors.green,),
                  ),
                ),
                Text('Others',style: TextStyle(fontSize: 12),)
              ],
            ),
          ],
        ),
      ],

    ),);
  Widget nearDoctor () => Padding(padding:
  EdgeInsets.fromLTRB(15, 0, 0, 0),
    child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
              child: Align( alignment: Alignment.topLeft,
                child: Text('Nearby Doctor', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 20, 10, 0),
              child: Align( alignment: Alignment.topRight,
                child: Text('See all', style: TextStyle(fontSize: 15),),),
            ),
          ],
        ),
      ],
    ),
  );
  Widget buildCard(DummyData item) => Padding(
    padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
    child: Container(
      height: 400,
      width: 170,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.white,
      ),
      child: Stack(
        children: [
          Positioned(
      top: 3,
      left: 6,
      child:Container(
            width: 157,
            height: 160,
            
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                image: AssetImage('assets/doctor wey get pride.jpg'),fit: BoxFit.cover
              ),
            ),
          ),),

 // ClipRRect(
 //               borderRadius: BorderRadius.all(Radius.circular(15)),
 //               child: SizedBox.fromSize(size: Size.fromRadius(82),
 //                 child: Image.asset(item.assetImage),),
 //            ),
          Positioned(
             bottom: 48,
            left: 8,
              child: Text(item.name, style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
          ),
          Positioned(
            bottom: 36,
            left: 8,
            child: Text(item.specialization, style: TextStyle(fontSize: 12, color : Colors.cyan),),
          ),
          Positioned(
            bottom: 18,
            left: 8,
            child: Row(
                     children: [
                       Icon(Icons.location_on_rounded, size: 14),
                       Text(item.location,style: TextStyle(fontSize: 13, color: Colors.black54),)
                    ],
                  ),
          ),
        ],
      ),
    ),
  );
  Widget imageDisplay(BuildContext context)=>SafeArea(
      child:Padding(padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
      child: Stack(
          children: [
            Container(
              height: 470,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                    image: AssetImage('assets/doctor wey get pride.jpg'),
                    fit: BoxFit.fill,
                  ),
              ),
            ),
            Positioned(
              top: 15,
              left: 15,
              child: GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>MainScreen()));
                },
                child:Container(
                height: 35,
                width: 35,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey.shade500
                ),
                //padding: EdgeInsets.all(10),
                child: Center(
                    child:Icon(Icons.arrow_back_ios,size: 15,))
              ),)
            )
          ],

        ),

      ));
  Widget information(BuildContext context)=>Padding(
    padding: EdgeInsets.fromLTRB(10, 5, 10, 0),
    child: Container(
      height: 270,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.vertical(top:Radius.circular(10)),
        color: Colors.grey.shade300
      ),
      child: Column(
         crossAxisAlignment:  CrossAxisAlignment.start,
        children: [
          Align(
            child: Text('dr. Dimas Adi Nugroho',style: TextStyle(color :Colors.black,fontSize: 18,decoration:
            TextDecoration.none,fontWeight: FontWeight.bold),),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(25, 8, 25, 0),
            child:Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: Row(
                  children: [
                    Icon(Icons.shopping_bag,size: 15,color: Colors.cyanAccent  ,),
                    Text('8 years',style: TextStyle(fontSize: 12,color: Colors.black54,decoration: TextDecoration.none),)
                  ],
                ),
              ),
              Container(
                child: Row(
                  children: [
                    Icon(Icons.add_location,size: 15,color: Colors.cyanAccent  ,),
                    Text('Heart Specialist ',style: TextStyle(fontSize: 12,color: Colors.black54,decoration: TextDecoration.none),)
                  ],
                ),
              ),
              Container(
                child: Row(
                  children: [
                    Icon(Icons.star,size:15,color: Colors.cyanAccent  ,),
                    Text('4.5',style: TextStyle(fontSize: 12,color: Colors.black54,decoration: TextDecoration.none),)
                  ],
                ),
              ),
            ],
          )),
          Padding(
            child: Text('Hospital Information',style: TextStyle(fontSize: 18,color: Colors.black,
            decoration: TextDecoration.none),),
              padding:EdgeInsets.fromLTRB(23, 30, 0, 0)),
          Padding(
              child: Text('Rumuah Nj Solo R,Adi Sucipea No 118 jajar',style: TextStyle(fontSize: 12,color: Colors.black54,
                  decoration: TextDecoration.none),),
              padding:EdgeInsets.fromLTRB(23, 13, 0, 0)),
          Padding(
              child: Text('Lawayan, Sourakarta 57144',style: TextStyle(fontSize: 12,color: Colors.black54,
                  decoration: TextDecoration.none),),
              padding:EdgeInsets.fromLTRB(23, 8, 0, 0)),
          Padding(
              child: Text('Expertise Skill',style: TextStyle(fontSize: 18,color: Colors.black,
                  decoration: TextDecoration.none),),
              padding:EdgeInsets.fromLTRB(23, 30, 0, 0)),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 23),child:Row(
            children: [
              Container(
                height: 40,
                width: 63,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  color: Colors.grey.shade200,
                ),
                child: Center(
                  child: Text('Heart',style: TextStyle(fontSize: 10,color: Colors.black54,
                  decoration: TextDecoration.none),),),
              ),
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5),child:Container(
                height: 40,
                width: 70,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  color: Colors.grey.shade200,
                ),
                child: Center(
                  child: Text('Vascular',style: TextStyle(fontSize: 10,color: Colors.black54,
                      decoration: TextDecoration.none),),),
              )),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 5), child:Container(
                height: 40,
                width: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  color: Colors.grey.shade200,
                ),
                child: Center(
                  child: Text('Heart Surgery',style: TextStyle(fontSize: 10,color: Colors.black54,
                      decoration: TextDecoration.none),),),
              ),)
            ],
          )),
          Padding(
            padding: EdgeInsets.fromLTRB(23, 5, 0, 0),
             child:Row(
            children: [
              Container(
                height: 40,
                width: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  color: Colors.grey.shade200,
                ),
                child: Center(
                  child: Text('Diagnostic Radiology',style: TextStyle(fontSize: 10,color: Colors.black54,
                      decoration: TextDecoration.none),),),
              ),
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5),
              child:Container(
                height: 40,
                width: 90,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  color: Colors.grey.shade200,
                ),
                child: Center(
                  child: Text('Aneschology',style: TextStyle(fontSize: 10,color: Colors.black54,
                      decoration: TextDecoration.none),),),
              )),
            ],
          )),

        ],
      ),
    ),
  );
  Widget placeApp(BuildContext context)=>Container(
    height: 60,
    margin: EdgeInsets.all(5),
    width: MediaQuery.of(context).size.width,
    color: Colors.white,
    child: Padding(
      padding: EdgeInsets.all(5),
      child:GestureDetector(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>CallScreen()));
        },
        child:Container(
        height: 60,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
         borderRadius: BorderRadius.circular(10),
         color: Colors.cyanAccent,
       ),
       child: Center(
        child: Text('Make Appointment',style: TextStyle(fontSize: 15,decoration: TextDecoration.none,color: Colors.white),),
      ),
    ),
  )));
  Widget videoCall(BuildContext context)=>SafeArea(
        child:Padding(
          padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
          child:Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 700,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                      image: AssetImage('assets/doctor wey get pride.jpg'),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Positioned(
                  bottom: 100,
                  left: 15,
                  child: Container(
                    height: 90,
                    width: 90,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                        image: AssetImage('assets/doctor wey get pride.jpg'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),),
                Positioned(
                    top: 15,
                    left: 15,
                    child: GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>SecondPage()));
                      },
                      child:Container(
                          height: 35,
                          width: 35,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.grey.shade500
                          ),
                          //padding: EdgeInsets.all(10),
                          child: Center(
                              child:Icon(Icons.arrow_back_ios,size: 15,))
                      ),)),
                Positioned(
                  bottom: 8,
                    child:Container(
                      width: MediaQuery.of(context).size.width,
                    child:Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text('dr.Dimas Adi Nugroho',style: TextStyle(fontSize: 15,color: Colors.white,
                            decoration: TextDecoration.none),),
                        Text('13.17',style: TextStyle(fontSize: 8,color: Colors.white70,
                            decoration: TextDecoration.none),)
                      ],
                    )
                ))
              ],
            ),

          ],
        )));
  Widget lastPart()=>Padding(
      padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
      child:Container(
    height: 70,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(12),
      color: Colors.white
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 6),
        child:Container(
            height: 45,
            width: 45,
            decoration: BoxDecoration(
                color: Colors.grey.shade400,
                shape: BoxShape.circle
            ),
            child: Center(
              child:Icon(Icons.mic,color: Colors.black45,size: 18,),
            ))),
        Container(
            height: 45,
            width: 45,
            decoration: BoxDecoration(
                color: Colors.grey.shade400,
                shape: BoxShape.circle
            ),
            child: Center(
              child:Icon(Icons.videocam,color: Colors.black45,size: 18,),
            )),
        Container(
            height: 45,
            width: 45,
            decoration: BoxDecoration(
                color: Colors.grey.shade400,
                shape: BoxShape.circle
            ),
            child: Center(
              child:Icon(Icons.chat,color: Colors.black45,size: 18,),
            )),
        Padding(
          padding: EdgeInsets.fromLTRB(0, 0, 6, 0),
            child:Container(
            height: 45,
            width: 45,
            decoration: BoxDecoration(
                color: Colors.red,
                shape: BoxShape.circle
            ),
            child: Center(
              child:Icon(Icons.add_ic_call,color: Colors.white,size: 20,),
            ))),
      ],
    ),
  ));

}

