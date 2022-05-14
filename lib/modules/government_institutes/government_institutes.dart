import 'package:flutter/material.dart';
import 'package:unibox/modules/account_screen/account_screen.dart';
import 'package:unibox/modules/menu_screen/menu_screen.dart';


class GovernmentInstitutes extends StatelessWidget {

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
      body: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.baseline,
              textBaseline: TextBaseline.alphabetic,
              children: [
                Text(
                  '  Government Institutes',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(width: 45.0,),
                IconButton(
                    onPressed: (){},
                    icon: Icon(Icons.search)),
                IconButton(onPressed: (){},
                    icon: Icon(Icons.filter_alt_outlined)),
                IconButton(onPressed: (){},
                    icon: Icon(Icons.grid_view)),
              ],
            ),

          ],
        ),
      ),
    );
  }
}
