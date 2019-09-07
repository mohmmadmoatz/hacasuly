import 'package:flutter/material.dart';
import 'package:hacasulyhealth/public.dart';

import 'app_localizations.dart';

import 'package:firebase_database/firebase_database.dart';



class sensors extends StatefulWidget {
  @override
  _sensorsState createState() => _sensorsState();
}

class _sensorsState extends State<sensors> {

  var pulseheart = 0;
  bool pulsedone = false;
  final databaseReference = FirebaseDatabase.instance.reference();
  
void getData(){
  
  databaseReference.once().then((DataSnapshot snapshot) {
    print('Data : ${snapshot.value}');
    setState(() {

          pulseheart = snapshot.value["pulsesenser"];
          pulsedone = true;
    });
  });
}


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Color(0xff1e84b5), title: Text(AppLocalizations.of(context).translate('sensorlab'))),
      body: ListView(
        children: <Widget>[

          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Text(AppLocalizations.of(context).translate('today'),style: TextStyle(color: Color(0xff3170b5),fontSize: 18),),
          ),

          Container(
            color: Colors.white,
            child: ListTile(
                title: Text("Blood test"),
                trailing: Text("07 Sep 2019 8:45 PM"),
            ),
          ),


            Padding(
            padding: const EdgeInsets.all(12.0),
            child: Text(AppLocalizations.of(context).translate('prvresult'),style: TextStyle(color: Color(0xff3170b5),fontSize: 18),),
          ),

          Container(
            color: Colors.white,
            child: ListTile(
                title: Text("X Ray"),
                trailing: Text("04 Sep 2019 2:45 PM"),
            ),
          ),

          Container(
            color: Colors.white,
            child: ListTile(
                title: Text("Blood Test"),
                trailing: Text("03 Sep 2019 9:45 PM"),
            ),
          ),



   Padding(
            padding: const EdgeInsets.all(12.0),
            child: Text(AppLocalizations.of(context).translate('testself'),style: TextStyle(color: Color(0xff3170b5),fontSize: 18),),
          ),

          Align(
              alignment: Alignment.center,
                      child: Wrap(
              children: <Widget>[
                InkWell(
                  onTap: (){
                    setState(() {
                     pulsedone = false; 
                    });
                  },
                  child: sensorwdg("ECG","assets/ECG.png")),
                InkWell(
                  onTap: (){
                    getData();
                  },
                  
                  child: sensorwdg("Heart Beat","assets/heart.png")),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: AnimatedContainer(
                        duration: Duration(seconds: 1),

                        height: pulsedone == true ? 100 : 0,
                        width: double.infinity,
                     
                        decoration: BoxDecoration(
                             color: Colors.indigoAccent,
                          borderRadius: BorderRadius.circular(20)
                        ),
                        child: Center(
                          child: Text("Pulse : $pulseheart",style: TextStyle(color: Colors.white,fontSize: 22),),
                        ),
                      ),
                    )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Padding sensorwdg(title,image) {
    return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 150,
            width: 150,
            decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      color: Colors.black.withOpacity(0.22),
                      offset: Offset(0, 6),
                      blurRadius: 6)
                ],
                image: DecorationImage(
                  image: AssetImage(
                    image,
                  ),
                )),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                  color: Maincolor.withOpacity(0.9),
                  width: double.infinity,
                  padding: EdgeInsets.all(8),
                child: Text(title,style: TextStyle(color: Colors.white,fontSize: 22),textAlign: TextAlign.center,)),
            ),
          ),
        );
  }
}
