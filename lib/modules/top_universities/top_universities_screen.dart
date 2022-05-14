import 'package:flutter/material.dart';
import 'package:unibox/modules/account_screen/account_screen.dart';
import 'package:unibox/modules/menu_screen/menu_screen.dart';
import 'package:unibox/shared/components/components.dart';


import '../home_screen/home_screen.dart';

class TopUniversities extends StatefulWidget   {
  @override
  State<TopUniversities> createState() => _TopUniversitiesState();
}

class _TopUniversitiesState extends State<TopUniversities> {
  List<TopRatedModel> toprated =
  [
    TopRatedModel(
        image: 'assets/images/cicZayed.jpg',
        onTap: (){print('cic');},
        uniName: 'canadian international college'
    ),
    TopRatedModel(
      image: 'assets/images/must.jpeg',
      onTap: (){print('must');},
      uniName: 'misr university for science & Technology',
    ),
  ];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
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
      body:Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
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
                SizedBox(width: 45.0,),
                IconButton(onPressed: (){},
                    icon: Icon(Icons.search)),
                IconButton(onPressed: (){},
                    icon: Icon(Icons.filter_alt_outlined)),
                IconButton(onPressed: (){},
                    icon: Icon(Icons.grid_view)),
              ],
            ),
            Container(
              height: 210,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                  itemBuilder: (context,index) =>buildTopUniIntem(toprated[index]),
                  separatorBuilder: (context,index) =>SizedBox(width: 10,) ,
                  itemCount: toprated.length
              ),
            )
          ],
        ),
      ) ,

    );
  }
}
