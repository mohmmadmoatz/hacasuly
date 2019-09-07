import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hacasulyhealth/public.dart';

import 'bookappt.dart';

class doctorprofile extends StatefulWidget {
  final name;
  final special;
  final imgurl;

  const doctorprofile({Key key, this.name, this.imgurl, this.special})
      : super(key: key);

  @override
  _doctorprofileState createState() => _doctorprofileState();
}

class _doctorprofileState extends State<doctorprofile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Container(
            height: 210,
            width: double.infinity,
            color: Color(0xff3170b5),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 18.0, left: 8),
                  child: Row(
                    children: <Widget>[
                      Container(
                        child: Row(
                          children: <Widget>[
                            InkWell(
                              child: Icon(
                                Icons.arrow_back,
                                color: Colors.white,
                              ),onTap: (){Navigator.of(context).pop();},
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Doctors profile',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Stack(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0, top: 10),
                        child: Align(
                            alignment: Alignment.centerLeft,
                            child: Container(
                              height: 100,
                              width: 100,
                              decoration: BoxDecoration(
                                  border:
                                      Border.all(width: 2, color: Colors.white),
                                  shape: BoxShape.circle,
                           
                                  image: DecorationImage(
                                      image: AssetImage(widget.imgurl),
                                      fit: BoxFit.cover)),
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8, right: 20),
                        child: Align(
                            alignment: Alignment.centerRight,
                            child: Container(
                              height: 134,
                              width: 200,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.only(top: 8.0),
                                    child: Text(
                                      'Dr.' + widget.name,
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                  Text(
                                    'General Obstract and data sience +21 year old of expereince',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  Row(
                                    children: <Widget>[
                                      Icon(
                                        Icons.star,
                                        size: 20,
                                        color: Colors.yellowAccent,
                                      ),
                                      Icon(
                                        Icons.star,
                                        size: 20,
                                        color: Colors.yellowAccent,
                                      ),
                                      Icon(
                                        Icons.star,
                                        size: 20,
                                        color: Colors.yellowAccent,
                                      ),
                                      Icon(
                                        Icons.star,
                                        size: 20,
                                        color: Colors.yellowAccent,
                                      ),
                                      Icon(
                                        Icons.star,
                                        size: 20,
                                        color: Colors.grey,
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            )),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
              height: 75,
              width: double.infinity,
              color: Color(0xff2e99bd),
              child: Stack(
                children: <Widget>[
                  Positioned(
                      left: 20,
                      top: 10,
                      child: Container(
                        width: 150,
                        height: 50,
                        child: Row(
                          children: <Widget>[
                            Icon(
                              Icons.watch_later,
                              color: Colors.white,
                              size: 50,
                            ),
                            Text(
                              'Timing \n 4:30 pm - 8:30',
                              style: TextStyle(color: Colors.white),
                            )
                          ],
                        ),
                      )),
                  Center(
                      child: Container(
                    height: 100,
                    color: Colors.white,
                    width: 1,
                  )),
                  Positioned(
                      right: 20,
                      top: 10,
                      child: Container(
                          width: 150,
                          height: 50,
                          child: Row(
                            children: <Widget>[
                              Icon(
                                Icons.monetization_on,
                                color: Colors.white,
                                size: 50,
                              ),
                              Text(
                                'Fee \n400 / session',
                                style: TextStyle(color: Colors.white),
                              )
                            ],
                          ))),
                ],
              )),
          Padding(
              padding: const EdgeInsets.only(
                top: 8.0,
                left: 8,
              ),
              child: Text(
                'MEDICAL PRACTISE',
                style: TextStyle(color: Color(0xff2e99bd), fontSize: 16),
              )),
          Padding(
              padding: const EdgeInsets.only(
                top: 10.0,
                left: 8,
              ),
              child: Text(
                'Florida state Hospital',
                style: TextStyle(color: Colors.black, fontSize: 16),
              )),
          Padding(
              padding: const EdgeInsets.only(
                top: 2.0,
                left: 8,
              ),
              child: Text(
                'Channachoted,Gardianian',
                style: TextStyle(color: Colors.black45, fontSize: 16),
              )),
          Padding(
              padding: const EdgeInsets.only(
                top: 20.0,
                left: 8,
              ),
              child: Text(
                'SPECIALISTATION',
                style: TextStyle(color: Color(0xff2e99bd), fontSize: 16),
              )),
          Padding(
              padding: const EdgeInsets.only(
                top: 2.0,
                left: 8,
              ),
              child: Text(
                'Contractwinner,Mangment,Endomatiriosis',
                style: TextStyle(color: Colors.black45, fontSize: 16),
              )),
              InkWell(
                onTap: (){
                                                                Navigator.of(context).push(MaterialPageRoute(
                            builder: (BuildContext context) => bookappt()));

                },
                              child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    height: 100,
                    width: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Maincolor
                    ),
                    child: Center(
                      child: Text("Book Now",style: TextStyle(color: Colors.white,fontSize: 22),)),
                  ),
                ),
              )
        ],
      ),
    );
  }
}
