import 'package:flutter/material.dart';
import 'package:unibox/modules/home_screen/home_screen.dart';
import 'package:unibox/shared/components/components.dart';


class Cic extends StatefulWidget {

  @override
  State<Cic> createState() => _CicState();
}

class _CicState extends State<Cic> {
  List<TopRatedModel> toprated =
  [
    TopRatedModel(
        image: 'assets/images/cic.jpeg',
        onTap: (){} ,
        uniName: 'canadian international college'
    ),
    TopRatedModel(
      image: 'assets/images/must.jpeg',
      onTap: (){print('must');},
      uniName: 'misr university for science & Technology',
    ),
    TopRatedModel(
        image: 'assets/images/cic.jpeg',
        onTap: (){} ,
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
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image(image: AssetImage('assets/images/cic.jpeg')),

              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  children: [
                   Text(
                       'Candian International College',
                     style: TextStyle(
                       fontWeight: FontWeight.bold,
                       fontSize: 20,
                     ),
                   ),
                    SizedBox(width: 65,),
                    Icon(
                      Icons.star,
                      color: Colors.black,
                    ),
                   SizedBox(width: 3,),
                   Text('4.5'),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Text(
                  'CIC is the place you’ll call home for the next 4 – 5 years in your life,'
                      'it’s where you will learn, grow, create, prove yourself, achieve,'
                      'make friends, and succeed.'
                      'Here is where you take the first step towards your future.'
                      'We offer a campus life that will broaden your horizons beyond classroom walls.'
                      'We offer programs of study that will equip you with all the knowledge'
                      'and tools needed to succeed and be ready for your chosen career.'
                      'And most importantly, we offer an environment that will encourage'
                      'you to Make it Happen.',
                  softWrap: true,
                ),
              ),
              SizedBox(height: 5,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  children: [
                    Container(
                      height: 25,
                      width: 25,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.grey,
                      ),
                      child: Icon(Icons.favorite_border,color: Colors.white,),
                    ),
                    TextButton(onPressed: (){}, child: Text(
                      'www.cic.com',
                      style: TextStyle(
                          color: Colors.blue
                      ),
                    )
                    ),
                  ],
                ),
              ),
              Image(image: AssetImage(
                  'assets/images/map.jpeg'
              ),
                height: 200,
                width: double.maxFinite,
              ),
              SizedBox(height: 10,),
              Text('    Colleges included : ',
                style: TextStyle(
                    fontWeight: FontWeight.bold
                ),
              ),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  children: [
                    Text('Business Information System',
                      style: TextStyle(

                      ),
                    ),
                    SizedBox(width: 120,),
                    Text('20000/year',
                      style: TextStyle(

                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 5,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  children: [
                    Text('Enginering',
                      style: TextStyle(

                      ),
                    ),
                    SizedBox(width: 235,),
                    Text('30000/year',
                      style: TextStyle(

                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 5,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  children: [
                    Text('Mass Communication',
                      style: TextStyle(

                      ),
                    ),
                    SizedBox(width: 165,),
                    Text('35000/year',
                      style: TextStyle(

                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10,),
              Text(
                '     Needed paper',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text('1-Application form signed by the applicant and parent\n'
                    '2-The nomination card for the institute from the coordination website.\n'
                    '3-Original high school diploma, stamped by the Ministry of Education.'
                    '\n4-Original birth certificate or official extract\n'
                    '5-Also, among the required documents, is the submission of Form 2 Jund (for males).\n'
                    '6-color photos 4 * 6.'),
              ),
              SizedBox(height: 10,),
              Text(
                  '    Related Universites',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 5,),
              Container(
                height: 150,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context,index) =>buildTopUniIntem(toprated[index]),
                  separatorBuilder:(context,index) =>SizedBox(width: 10,) ,
                  itemCount: toprated.length,
                ),
              ),


            ],
          ),
        ),
      ) ,
    );
  }
}





