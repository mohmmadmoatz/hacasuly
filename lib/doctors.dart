import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'app_localizations.dart';
import 'doctorProfile.dart';

class doctors extends StatefulWidget {
  @override
  _doctorsState createState() => _doctorsState();
}

class _doctorsState extends State<doctors> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
backgroundColor: Color(0xffdddddd),
      appBar: AppBar(title: Text(AppLocalizations.of(context).translate('dsearch')),backgroundColor: Color(0xff287ab6),),
  body:  ListView(children: <Widget>[
      SizedBox(height: 5,),
         Padding(
           padding: const EdgeInsets.only(left:4.0,right: 4),
           child: Container(height: 40,width: double.infinity,color: Colors.white,child:

            Row(
              crossAxisAlignment: CrossAxisAlignment.start,children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left:8.0),
                  child: Center(child: Icon(Icons.search,size: 25,color: Colors.black,)),
                ),
              Container(width: 300,height: 40,child: TextFormField(textDirection: TextDirection.ltr
                ,decoration: InputDecoration(    hintText: AppLocalizations.of(context).translate('dsearch2'),border: InputBorder.none,),)),


            ],

           ),
      ),
         ),
      SizedBox(height: 5,),
        Doctoors('hannen ahmed','speatiaol doctor'),      Doctoors('Ali ahmed','speatiaol doctor'),      Doctoors('moha ahmed','speatiaol doctor'),      Doctoors('Sara ahmed','speatiaol doctor'),      Doctoors('hannen ali','speatiaol doctor'),      Doctoors('Ola ahmed','speatiaol doctor'),      Doctoors('Hussian ane','speatiaol doctor'),      Doctoors('Hassan ahmed','speatiaol doctor'),      Doctoors('Diaa ahmed','speatiaol doctor'),
    ],),






    );
  }

  Widget Doctoors(name,spa){
    return InkWell(
      onTap: (){
                                                      Navigator.of(context).push(MaterialPageRoute(
                            builder: (BuildContext context) => doctorprofile(
                              name: name,
                              special: spa,
                              imgurl: "assets/DR-avatar.png",
                            )));

      },
          child: Container(
color: Colors.white,
        width: double.infinity,height: 80,child: Row(children: <Widget>[


          Padding(
            padding: const EdgeInsets.only(left:18.0),
            child: Container(height: 60,width: 60,decoration: BoxDecoration(shape: BoxShape.circle,image: DecorationImage(image: AssetImage('assets/DR-avatar.png'),fit: BoxFit.cover)),),
          ),
        Container(width:150,
          child: Padding(
            padding: const EdgeInsets.only(left:16.0),
            child: Column(mainAxisAlignment: MainAxisAlignment.center,children: <Widget>[
              Text(name,style: TextStyle(fontSize: 20),),
              Text(spa,style: TextStyle(fontSize: 16),),
            ],),

          ),
        ),
        SizedBox(width: 70,),


        Align(alignment: Alignment.centerLeft,child: Icon(Icons.arrow_forward_ios,size: 25,color: Colors.black,),)
      ],),
      ),
    );


  }
}
