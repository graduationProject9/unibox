import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:unibox/modules/menu_screen/menu_screen.dart';
import 'package:unibox/shared/components/components.dart';

class AccountScreen extends StatelessWidget {

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
              size: 25 , color: Colors.grey.shade800,
            )
        ),
        title: Text(
          'Uni-Box',
          style: TextStyle(
              fontSize: 25.0,

          ),
        ),
        actions: [
          IconButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>AccountScreen()));
              },
              icon:Icon(Icons.person_sharp,size: 25 , color: Colors.grey.shade300,))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(60),
                    child: CircleAvatar(
                      radius: 60,
                      child: Image(
                        image: AssetImage('assets/images/hasssan.jpg'),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 10,),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsetsDirectional.only(top: 40),
                      child: Text(
                        'Hassan Mahmoud',
                        style: TextStyle(
                            fontSize: 15
                        ),
                      ),
                    ),
                    SizedBox(height: 10,),
                    Text(
                      'hassan@gmail.com',
                      style: TextStyle(
                          fontSize: 15
                      ),
                    ),
                    SizedBox(height: 10,),
                    Text(
                      '01022437225',
                      style: TextStyle(
                          fontSize: 15
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                width: double.infinity,
                height: 1,
                decoration: BoxDecoration(
                  color: Colors.grey,
                ),
              ),
            ),
            Text(
                '   Perfered college:',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              '   Information Technology',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                width: double.infinity,
                height: 1,
                decoration: BoxDecoration(
                  color: Colors.grey,
                ),
              ),
            ),
            Text(
              '   Applied Application:',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              '   1-Information Technology - Must',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            Text(
              '   2-Information Technology - AOU',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                width: double.infinity,
                height: 1,
                decoration: BoxDecoration(
                  color: Colors.grey,
                ),
              ),
            ),
            Text(
              '   Accepted Application:',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              '   Nothing yet to show',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                width: double.infinity,
                height: 1,
                decoration: BoxDecoration(
                  color: Colors.grey,
                ),
              ),
            ),
            Text(
              '   My WishList',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              '   BIS-CIC',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            SizedBox(height: 30,),

           Padding(
             padding: const EdgeInsets.symmetric(horizontal: 20),
             child: Row(
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 defaultButton(
                   function:(){},
                   text: 'Eidt Profile',
                   width: 120,
                   radius: 4,
                   background: defultcolor,
                 ),
                 SizedBox(width: 30,),
                 defaultButton(
                   function:(){},
                   text: 'Log Out',
                   textcolor: Colors.black,
                   width: 120,
                   radius: 4,
                   background: Colors.white54,
                 ),
               ],
             ),
           ),

          ],
        ),
      ),


    );
  }
}
