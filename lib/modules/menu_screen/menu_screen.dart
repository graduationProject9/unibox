import 'package:flutter/material.dart';
import 'package:unibox/layout/home_layout_screen.dart';
import 'package:unibox/modules/account_screen/account_screen.dart';
import 'package:unibox/modules/news_screen/news_screen.dart';
import 'package:unibox/shared/components/components.dart';

class MenuScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: defultcolor,
      body: Padding(
        padding: const EdgeInsetsDirectional.only(top: 60,start:15 ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: CircleAvatar(
                    radius: 40,
                    child: Image(image: AssetImage('assets/images/hasssan.jpg'),) ,
                  ),
                ),
                SizedBox(width: 15,),
                Text('Hassan Mahmoud',
                  style: TextStyle(
                    color: Colors.white,
                      fontWeight: FontWeight.bold,
                    fontSize: 22
                ),
                ),
                SizedBox(width:70 ,),
                // IconButton(onPressed: (){
                //   Navigator.pop(context);
                // }, icon:
                // Icon(
                //     Icons.close_outlined,
                //   color: Colors.white,
                // )
                // )
              ],
            ),
            SizedBox(height: 50,),
            TextButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(
                  builder: (context)=>HmoeLayoutScreen()));
            },
              child: Text(
              'Home',
              style:TextStyle(
                  color: Colors.white,
                fontSize: 20,
              ),
            ),
            ),
            TextButton(onPressed: (){
              Navigator.push(context,MaterialPageRoute(
                  builder: (context)=>AccountScreen()));
            },
              child: Text(
                'ACCOUNT',
                style:TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ),
            TextButton(onPressed: (){
              Navigator.push(context,MaterialPageRoute(builder: (context)=>NewsScreen()));
            },
              child: Text(
                'NEWS',
                style:TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ),
            TextButton(onPressed: (){},
              child: Text(
                'SEARCH',
                style:TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ),
            TextButton(onPressed: (){},
              child: Text(
                'TERMS & CONDITIONS',
                style:TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ),
            TextButton(onPressed: (){},
              child: Text(
                'PRIVACY POLICY',
                style:TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ),
            TextButton(onPressed: (){},
              child: Text(
                'LOG OUT',
                style:TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                ),
              ),
            ),
          ],
        ),
      ) ,
    );
  }
}
