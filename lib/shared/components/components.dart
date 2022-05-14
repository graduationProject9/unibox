import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:unibox/modules/account_screen/account_screen.dart';
import 'package:unibox/modules/home_screen/home_screen.dart';
import 'package:unibox/modules/menu_screen/menu_screen.dart';
import 'package:unibox/modules/news_screen/news_screen.dart';


Color defultcolor = Colors.teal.shade400 ;

int currentindex = 0;
List<Widget> screen =
[
  HomeScreen(),
  NewsScreen(),
  AccountScreen(),
  MenuScreen()
];
 class TopRatedModel
{
  String? image ;
  String? uniName ;
  Function() onTap ;
  TopRatedModel({
    required this.image,
    required this.onTap,
    required this.uniName
  }
  );

}
class PrivateModel
{
  String image ;
  String uniName ;
  Function() onTap ;
  PrivateModel({
    required this.image,
    required this.onTap,
    required this.uniName
  }
      );
}
class GovernmentModel
{
  String image ;
  String uniName ;
  Function() onTap ;
  GovernmentModel({
    required this.image,
    required this.onTap,
    required this.uniName
  }
      );
}
class PrivateInstitutesModel
{
  String image ;
  String uniName ;
  Function() onTap ;
  PrivateInstitutesModel({
    required this.image,
    required this.onTap,
    required this.uniName
  }
  );
}
  class GovernmentInstitutesModel
  {
  String image ;
  String uniName ;
  Function() onTap ;
  GovernmentInstitutesModel({
  required this.image,
  required this.onTap,
  required this.uniName
  }
      );
  }


Widget defaultButton({
  double width=30,
  Color background =Colors.blue,
  bool isUppercase =true,
  required void Function()? function ,
  required String text,
  double radius = 4.0,
  Color textcolor = Colors.white,

})=>Container(
  height: 40,
  width: width,
  child: MaterialButton(

    onPressed: function,
    child:Text(isUppercase ? text.toUpperCase() : text,
      style: TextStyle(color: textcolor
      ),
    ) ,
  ),
  decoration: BoxDecoration(
      color:background ,
      borderRadius: BorderRadius.circular(radius)
  ),
);

Widget dfaultFormField({
required TextEditingController controller,
required TextInputType type ,
void Function(String)? onSubmit,
void Function()? onChange ,
// required  void Function()? validate ,
required String label ,
required IconData prefix,
IconData? suffix,
Function()? suffixonpressed ,
Function()? onTap ,
bool isClickable=true ,

// required String? Function(String value) validate ,
bool ispassword =false ,
}
)=>TextFormField(
  controller:controller ,
  onFieldSubmitted: onSubmit,
  onTap: onTap,
  // validator:validate ,
  keyboardType:type,
  enabled: isClickable,
  obscureText: ispassword ,
  decoration: InputDecoration(
    labelText: label ,
    prefixIcon:Icon( prefix ,
    ),
    suffixIcon:suffix !=null ? IconButton(icon: Icon( suffix ,

    ), onPressed:suffixonpressed,
    ):null,
    border: OutlineInputBorder(),
  ),
);

