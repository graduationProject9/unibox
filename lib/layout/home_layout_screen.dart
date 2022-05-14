import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:unibox/shared/components/components.dart';


import '../../modules/home_screen/home_screen.dart';

class HmoeLayoutScreen extends StatefulWidget {

  @override
  State<HmoeLayoutScreen> createState() => _HmoeLayoutScreenState();
}

class _HmoeLayoutScreenState extends State<HmoeLayoutScreen> {
  int index = 0 ;
final items = <Widget> [
  Icon(Icons.home_outlined, size: 25,color: Colors.grey.shade300),
  Icon(Icons.assignment_outlined , size: 25 , color: Colors.grey.shade300,),
  Icon( Icons.person_sharp, size: 25,color: Colors.grey.shade300),
  Icon(Icons.menu, size: 25 , color: Colors.grey.shade300,)
] ;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
       top: false,
      child: Scaffold(
        backgroundColor: Colors.grey.shade50,
        body:screen[currentindex],
        bottomNavigationBar: CurvedNavigationBar(
          onTap: (index)=>setState(() {
            currentindex = index ;
          }),
          color: Colors.grey.shade50,
          buttonBackgroundColor: defultcolor,
          backgroundColor: Colors.transparent,
          index: index,
          height: 50,
          animationCurve: Curves.easeInOut,
          animationDuration: Duration(milliseconds: 200),
          items: items)
      ),
    );

  }
}
//BottomNavigationBar(
//       currentIndex: currentindex,
//       onTap: (index)
//       {
//         setState(() {
//           currentindex = index ;
//         });
//       },
//       type: BottomNavigationBarType.fixed,
//       items: [
//         BottomNavigationBarItem(icon: Icon(
//           Icons.assignment_outlined,
//         ),
//           label: 'News',
//         ),
//         BottomNavigationBarItem(
//           icon: Icon(
//             Icons.home_outlined,
//           ),
//           label: 'Home',
//         ),
//         BottomNavigationBarItem(
//           icon: Icon(
//             Icons.person_sharp,
//           ),
//           label: 'Account',
//         ),
//       ],
//     ),
//Theme(
//