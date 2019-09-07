import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hacasulyhealth/sensors.dart';

import 'app_localizations.dart';
import 'bookappt.dart';
import 'doctors.dart';

class pageone extends StatefulWidget {
  @override
  _pageoneState createState() => _pageoneState();
}

class _pageoneState extends State<pageone> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: <Widget>[
          Container(
            color: Colors.white,
            height: 400,
            width: double.infinity,
            child: Stack(
              children: <Widget>[
                Container(
                  width: double.infinity,
                  height: 350,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/n.png'),
                          fit: BoxFit.cover)),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 30),
                  child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        child: Center(
                          child: Text(
                            AppLocalizations.of(context).translate('help'),
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          ),
                        ),
                        height: 40,
                        width: 200,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Color(0xff1ad7ea),
                        ),
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 40, bottom: 100),
                  child: Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                          width: 0,
                          height: 0,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(35),
                                  bottomLeft: Radius.circular(35)),
                              color: Colors.white),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 5),
                            child: Center(
                              child: Text(
                                'HOW CAN WE\nHELP YOU TODAY?',
                                textDirection: TextDirection.ltr,
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ))),
                ),
              ],
            ),
          ),
          Column(
            children: <Widget>[
              Wrap(
                spacing: 36,
                children: <Widget>[
                  InkWell(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (BuildContext context) => doctors()));
                      },
                      child: Choises(AppLocalizations.of(context).translate('mydocs'), 'assets/one.jpg')),
                  InkWell(
                 
                    child: Choises(AppLocalizations.of(context).translate('appt'), 'assets/tow.png')),
                  Choises(AppLocalizations.of(context).translate('drugs'), 'assets/three.jpg'),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 14),
                child: Wrap(
                  spacing: 36,
                  children: <Widget>[
                    InkWell(

                       onTap: (){
                                              Navigator.of(context).push(MaterialPageRoute(
                            builder: (BuildContext context) => sensors()));

                    },
                      child: Choises(AppLocalizations.of(context).translate('lab'), 'assets/four.png')),
                    Choises(AppLocalizations.of(context).translate('PLR'), 'assets/six.jpg'),
                    Choises(AppLocalizations.of(context).translate('myplan'), 'assets/five.jpg'),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  Widget Choises(String name, String img) {
    return Column(
      children: <Widget>[
        Container(
          width: 80,
          height: 80,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              image:
                  DecorationImage(image: AssetImage(img), fit: BoxFit.cover)),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Container(
              width: 90,
              height: 25,
              child: Center(
                child: Text(
                  name,
                  style: TextStyle(fontSize: 13),
                  textAlign: TextAlign.center,
                ),
              )),
        ),
      ],
    );
  }
}
