import 'package:flutter/material.dart';
import 'package:hacasulyhealth/generated/i18n.dart';
import 'package:hacasulyhealth/provider/prv.dart';
import 'package:hacasulyhealth/public.dart';
import 'package:hacasulyhealth/signup.dart';
import 'package:provider/provider.dart';

import 'app_localizations.dart';
import 'login.dart';

class homestart extends StatefulWidget {
  @override
  _homestartState createState() => _homestartState();
}

class _homestartState extends State<homestart> {
  String nowlocale = "عربي";

  @override
  Widget build(BuildContext context) {
    final prv = Provider.of<Clprv>(context);
    return Scaffold(
      body: Stack(children: [
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/home.jpg"), fit: BoxFit.cover),
          ),
        ),
        Container(
          color: Color(0xff336eb4).withOpacity(0.5),
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.only(top: 80.0),
            child: Column(
              children: <Widget>[
                Icon(
                  Icons.dashboard,
                  color: Colors.white,
                  size: 59,
                ),
                Text(
                  "E-Health",
                  style: TextStyle(color: Colors.white, fontSize: 40),
                ),
                Text(
                  "IoT System \n Hackasuly",
                  style: TextStyle(color: Colors.white.withOpacity(0.8), fontSize: 17),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 110.0),
                  child: Text(
                    AppLocalizations.of(context).translate('hello'),
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
                
                  InkWell(
                    onTap: (){
                     
                      
                               Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context)=> login()));

                    },
                                      child: Padding(
                      padding: const EdgeInsets.only(top:10.0,left: 20,right: 20),
                      child: Container(
                        height: 50,
                        width: double.infinity,

                        decoration: BoxDecoration(
                          color: Color(0xff19d7e7),
                          borderRadius: BorderRadius.circular(8),
                          boxShadow: [
                            BoxShadow(color: Colors.black.withOpacity(0.3),offset: Offset(0, 6),blurRadius: 4)
                          ]
                        ),
                        child: Center(
                          child: Text(AppLocalizations.of(context).translate('login'),style: TextStyle(color: Colors.white),),
                        ),
                      ),
                    ),
                  ),
                   InkWell(
                     onTap: (){
                      
                       
                                 Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context)=> signup()));

                     },
                                        child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Container(
                        height: 50,
                        width: double.infinity,

                        decoration: BoxDecoration(
                          color: Color(0xff336eb4),
                          borderRadius: BorderRadius.circular(8),
                          boxShadow: [
                            BoxShadow(color: Colors.black.withOpacity(0.3),offset: Offset(0, 6),blurRadius: 4)
                          ]
                        ),
                        child: Center(
                          child: Text(AppLocalizations.of(context).translate('reg'),style: TextStyle(color: Colors.white),),
                        ),
                      ),
                  
                  ),
                   ),
                   InkWell(
                     onTap: (){
                      
                        if(prv.locale == "en"){
                            nowlocale = "English";
                            prv.changelocale("ar", "IQ");
                        }else{
                           nowlocale = "عربي";
                            prv.changelocale("en", "US");
                        }
                       

                     },
                                        child: Padding(
                      padding: const EdgeInsets.only(left:20.0,right: 20,top: 20),
                      child: Container(
                        height: 50,
                        width: double.infinity,

                        decoration: BoxDecoration(
                          color: Color(0xff336eb4),
                          borderRadius: BorderRadius.circular(8),
                          boxShadow: [
                            BoxShadow(color: Colors.black.withOpacity(0.3),offset: Offset(0, 6),blurRadius: 4)
                          ]
                        ),
                        child: Center(
                          child: Text(nowlocale,style: TextStyle(color: Colors.white),),
                        ),
                      ),
                  
                  ),
                   ),
                  Padding(
                    padding: const EdgeInsets.only(top:60.0),
                    child: Text(AppLocalizations.of(context).translate('term'),style: TextStyle(color: Colors.white),textAlign: TextAlign.center,),
                  )
                
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
