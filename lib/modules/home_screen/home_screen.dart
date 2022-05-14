import 'dart:core';
import 'package:flutter/material.dart';
import 'package:unibox/modules/account_screen/account_screen.dart';
import 'package:unibox/modules/menu_screen/menu_screen.dart';
import 'package:unibox/modules/top_universities/top_universities_screen.dart';
import 'package:unibox/shared/components/components.dart';


class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}
class _HomeScreenState extends State<HomeScreen> {

  List<TopRatedModel> toprated =
  [
    TopRatedModel(
        image: 'assets/images/cicZayed.jpg',
        onTap: (){
          // Navigator.push(context, MaterialPageRoute(builder: (context)=>Cic()));
        } ,
        uniName: 'canadian international college'
    ),
    TopRatedModel(
      image: 'assets/images/must.jpeg',
      onTap: (){print('must');},
      uniName: 'misr university for science & Technology',
    ),
  ];


  List<PrivateModel> private =
  [
    PrivateModel(
        image: 'assets/images/cicZayed.jpg',
        uniName: 'canadian international college',
        onTap: (){print('cic');}
    ),
    PrivateModel(
      image: 'assets/images/must.jpeg',
      onTap: (){print('must');},
      uniName: 'misr university for science & Technology',
    ),
  ];
  List<GovernmentModel> government =
  [
    GovernmentModel(
        image: 'assets/images/cicZayed.jpg',
        uniName: 'canadian international college',
        onTap: (){print('cic');}
    ) ,
    GovernmentModel(
      image: 'assets/images/must.jpeg',
      onTap: (){print('must');},
      uniName: 'misr university for science & Technology',
    ),
  ];
  List<PrivateInstitutesModel> PrivateInstitutes =
  [
    PrivateInstitutesModel(
        image: 'assets/images/cicZayed.jpg',
        uniName: 'canadian international college',
        onTap: (){print('cic');}
    ),
    PrivateInstitutesModel(
      image: 'assets/images/must.jpeg',
      onTap: (){print('must');},
      uniName: 'misr university for science & Technology',
    )
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade50,
      appBar: AppBar(
        elevation: 0.0,
        centerTitle: true,
        backgroundColor:Colors.white70,
        leading: IconButton(
            onPressed: () {
              Navigator.push(context,MaterialPageRoute(builder: (context)=>MenuScreen()));
            },
            icon: Icon(
              Icons.menu,
              color: Colors.black,
            )
        ),
        title: Text(
          'Uni-Box',
          style: TextStyle(
              fontSize: 25.0,
              color: Colors.black
          ),
        ),
        actions: [
          IconButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>AccountScreen()));
              },
              icon:Icon(Icons.person_sharp,color: Colors.black,))
        ],
      ),
      body:
      Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.baseline,
                textBaseline: TextBaseline.alphabetic,
                children: [
                  Text(
                    'Top Rated Universities',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(width: 110.0,),
                  TextButton(
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(
                            builder: (context)=>TopUniversities()));
                      },
                      child: Text(
                        'See all',
                        style: TextStyle(
                            color: defultcolor,
                            fontSize: 18
                        ),
                      )
                  ),
                ],
              ),
              SizedBox(height: 3.0,),
              Container(
                height: 210,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context,index) =>buildTopUniIntem(toprated[index]),
                  separatorBuilder:(context,index) =>SizedBox(width: 10,) ,
                  itemCount: toprated.length,
                ),
              ),
              SizedBox(height: 10,),
              Row(
                crossAxisAlignment: CrossAxisAlignment.baseline,
                textBaseline: TextBaseline.alphabetic,
                children: [
                  Text(
                    'Private Universities',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(width: 135.0,),
                  TextButton(
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(
                            builder: (context)=>TopUniversities()));
                      },
                      child: Text(
                        'See all',
                        style: TextStyle(
                            color: defultcolor,
                            fontSize: 18
                        ),
                      )
                  ),
                ],
              ),
              Container(
                height: 210,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context,index) =>buildPrivateUniItem(private[index]),
                  separatorBuilder:(context,index) =>SizedBox(width: 10,) ,
                  itemCount: private.length,
                ),
              ),
              SizedBox(height: 10,),
              Row(
                crossAxisAlignment: CrossAxisAlignment.baseline,
                textBaseline: TextBaseline.alphabetic,
                children: [
                  Text(
                    'Governmental Universities',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(width: 80.0,),
                  TextButton(
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(
                            builder: (context)=>TopUniversities()));
                      },
                      child: Text(
                        'See all',
                        style: TextStyle(
                            color: defultcolor,
                            fontSize: 18
                        ),
                      )
                  ),
                ],
              ),
              Container(
                height: 210,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context,index) =>buildGovernmentUniItem(government[index]),
                  separatorBuilder:(context,index) =>SizedBox(width: 10,) ,
                  itemCount: government.length,
                ),
              ),


              Row(
                crossAxisAlignment: CrossAxisAlignment.baseline,
                textBaseline: TextBaseline.alphabetic,
                children: [
                  Text(
                    'Governmental Institutes',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(width: 100.0,),
                  TextButton(
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(
                            builder: (context)=>TopUniversities()));
                      },
                      child: Text(
                        'See all',
                        style: TextStyle(
                            color: defultcolor,
                            fontSize: 18
                        ),
                      )
                  ),
                ],
              ),
              Container(
                height: 210,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context,index) =>buildPrivateUniItem(private[index]),
                  separatorBuilder:(context,index) =>SizedBox(width: 10,) ,
                  itemCount: private.length,
                ),
              ),
              SizedBox(height: 10,),
              Row(
                crossAxisAlignment: CrossAxisAlignment.baseline,
                textBaseline: TextBaseline.alphabetic,
                children: [
                  Text(
                    'Private Institutes',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(width: 165.0,),
                  TextButton(
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(
                            builder: (context)=>TopUniversities()));
                      },
                      child: Text(
                        'See all',
                        style: TextStyle(
                            color: defultcolor,
                            fontSize: 18
                        ),
                      )
                  ),
                ],
              ),
              Container(
                height: 210,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context,index) =>buildPrivateInstitutesItem(PrivateInstitutes[index]),
                  separatorBuilder:(context,index) =>SizedBox(width: 10,) ,
                  itemCount: PrivateInstitutes.length,
                ),
              ),


            ],
          ),
        ),
      ),

    );
  }
}

 Widget buildTopUniIntem(TopRatedModel topuni)=>InkWell(
   onTap: topuni.onTap,
   child: Container(
     decoration: BoxDecoration(
         color: Colors.white,
         borderRadius: BorderRadius.circular(15)
     ),
     height:210,
     width: 230,
     child: Column(
       crossAxisAlignment: CrossAxisAlignment.center,
       children: [
         Padding(
           padding: const EdgeInsetsDirectional.only(top: 8),
           child: ClipRRect(
             borderRadius: BorderRadius.circular(15),
             child: Image(image: AssetImage(
               '${topuni.image}',
             ),
               height: 150,
               width: 220,
               fit: BoxFit.cover,
             ),
           ),
         ),
         Padding(
           padding: const EdgeInsetsDirectional.only(
             top: 10,
             start: 10,
             end: 10,
           ),
           child: Text(
             '${topuni.uniName}',
             style: TextStyle(
                 fontWeight: FontWeight.bold,
                 fontSize: 17.0,
                 letterSpacing: 1
             ),
           ),
         ),
       ],
     ),
   ),
 );
Widget buildPrivateUniItem(PrivateModel privateUni)=>InkWell(
  onTap: privateUni.onTap,
  child: Container(
    decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15)
    ),
    height:210,
    width: 230,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsetsDirectional.only(top: 8),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image(image: AssetImage(
              '${privateUni.image}',
            ),
              height: 150,
              width: 220,
              fit: BoxFit.cover,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsetsDirectional.only(
            top: 10,
            start: 10,
            end: 10,
          ),
          child: Text(
            '${privateUni.uniName}',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 17.0,
                letterSpacing: 1
            ),
          ),
        ),
      ],
    ),
  ),
);
Widget buildGovernmentUniItem(GovernmentModel governUni)=>InkWell(
  onTap: governUni.onTap,
  child: Container(
    decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15)
    ),
    height:210,
    width: 230,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsetsDirectional.only(top: 8),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image(image: AssetImage(
              '${governUni.image}',
            ),
              height: 150,
              width: 220,
              fit: BoxFit.cover,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsetsDirectional.only(
            top: 10,
            start: 10,
            end: 10,
          ),
          child: Text(
            '${governUni.uniName}',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 17.0,
                letterSpacing: 1
            ),
          ),
        ),
      ],
    ),
  ),
);
Widget buildPrivateInstitutesItem(PrivateInstitutesModel privateInstitutesUni)=>InkWell(
  onTap: privateInstitutesUni.onTap,
  child: Container(
    decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15)
    ),
    height:210,
    width: 230,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsetsDirectional.only(top: 8),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image(image: AssetImage(
              '${privateInstitutesUni.image}',
            ),
              height: 150,
              width: 220,
              fit: BoxFit.cover,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsetsDirectional.only(
            top: 10,
            start: 10,
            end: 10,
          ),
          child: Text(
            '${privateInstitutesUni.uniName}',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 17.0,
                letterSpacing: 1
            ),
          ),
        ),
      ],
    ),
  ),
);

