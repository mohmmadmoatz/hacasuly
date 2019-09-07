import 'package:flutter/material.dart';

import 'app_localizations.dart';

class signup extends StatefulWidget {
  @override
  _signupState createState() => _signupState();
}

class _signupState extends State<signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff336eb4),
      body: ListView(children: <Widget>[
        SizedBox(height: 80,),
        Align(alignment: Alignment.center,child: Text(AppLocalizations.of(context).translate('reg'),style: TextStyle(fontSize: 20,color: Colors.white),)),
        SizedBox(height: 50,),
        Padding(
          padding: const EdgeInsets.only(left:15.0,right: 15),
          child:   Container(child: Column(mainAxisAlignment: MainAxisAlignment.center,children: <Widget>[
            Text(AppLocalizations.of(context).translate('phone'),style: TextStyle(color: Colors.white),),
            Padding(
              padding: const EdgeInsets.only(top:8.0),
              child: Text('07717511102',style: TextStyle(color: Colors.white),),
            ),
          ],),height: 100,width: double.infinity,decoration: BoxDecoration(color: const Color(0xFF236c9f).withOpacity(0.8),borderRadius: BorderRadius.circular(10)),),
        ),
        SizedBox(height: 20,),
        Padding(
          padding: const EdgeInsets.only(left:15.0,right: 15),
          child:   Container(height: 100,width: double.infinity,decoration: BoxDecoration(color: const Color(0xFF236c9f).withOpacity(0.8),borderRadius: BorderRadius.circular(10)),

            child: Column(mainAxisAlignment: MainAxisAlignment.center,children: <Widget>[
              Text(AppLocalizations.of(context).translate('Email'),style: TextStyle(color: Colors.white),),
              Padding(
                padding: const EdgeInsets.only(top:8.0),
                child: Text('hacksulay@google.com',style: TextStyle(color: Colors.white),),
              ),

            ],),




          ),
        ),   SizedBox(height: 20,),   Padding(
          padding: const EdgeInsets.only(left:15.0,right: 15),
          child:   Container(height: 100,width: double.infinity,decoration: BoxDecoration(color: const Color(0xFF236c9f).withOpacity(0.8),borderRadius: BorderRadius.circular(10)),

            child: Column(mainAxisAlignment: MainAxisAlignment.center,children: <Widget>[
              Text(AppLocalizations.of(context).translate('password'),style: TextStyle(color: Colors.white),),
              Padding(
                padding: const EdgeInsets.only(top:8.0),
                child: Text('*  *  *  *  *  *  *  *',style: TextStyle(color: Colors.white),),
              ),

            ],),




          ),
        ),   SizedBox(height: 20,),   Padding(
          padding: const EdgeInsets.only(left:15.0,right: 15),
          child:   Container(height: 100,width: double.infinity,decoration: BoxDecoration(color: const Color(0xFF236c9f).withOpacity(0.8),borderRadius: BorderRadius.circular(10)),

            child: Column(mainAxisAlignment: MainAxisAlignment.center,children: <Widget>[
              Text(AppLocalizations.of(context).translate('cpassword'),style: TextStyle(color: Colors.white),),
              Padding(
                padding: const EdgeInsets.only(top:8.0),
                child: Text('*  *  *  *  *  *  *  *',style: TextStyle(color: Colors.white),),
              ),

            ],),




          ),
        ),
        SizedBox(height: 20,),
        Padding(
          padding: const EdgeInsets.only(left:15,right: 15),
          child: Container(child: Center(child: Text(AppLocalizations.of(context).translate('submit'),style: TextStyle(color: Colors.blueAccent,fontSize: 16),),),height: 40,width: double.infinity,decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(10))),
        )

      ],),
    );
  }
}
