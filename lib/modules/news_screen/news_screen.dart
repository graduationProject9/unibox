import 'package:flutter/material.dart';
import 'package:unibox/modules/account_screen/account_screen.dart';
import 'package:unibox/modules/menu_screen/menu_screen.dart';


class NewsScreen extends StatelessWidget {

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
    );
  }
}
