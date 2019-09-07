import 'package:flutter/material.dart';
import 'package:hacasulyhealth/provider/prv.dart';
import 'package:hacasulyhealth/public.dart';
import 'package:provider/provider.dart';
import 'app_localizations.dart';
import 'pageone.dart';
class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with SingleTickerProviderStateMixin {

    TabController tcontroller;

  void initState()  {
  
    super.initState();
    tcontroller = new TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      bottomNavigationBar: Container(
        color: Colors.white,
        height: 80,
        
          child: TabBar(
            controller: tcontroller,
            labelColor: Maincolor,
            unselectedLabelColor: Colors.black,
            indicatorColor: Maincolor,
            tabs: <Widget>[
              Tab(
                    
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Image.asset("assets/home.png",width: 20,),
                        Text("E-Health",style: TextStyle(fontSize: 12),)
                      ],
                    )
                     
                      
                    ),
                   
                      Tab(
                    
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                      Image.asset("assets/user.png",width: 20,),
                        Text(AppLocalizations.of(context).translate('account'),style: TextStyle(fontSize: 12),)
                      ],
                    )
                     
                      
                    ),
                       Tab(
                    
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                      Image.asset("assets/info.png",width: 20,),
                        Text(AppLocalizations.of(context).translate('aboutus'),style: TextStyle(fontSize: 12),)
                      ],
                    )
                     
                      
                    ),
                  
            ],
          ),
       
      ),

      backgroundColor: Color(0xffdddddd),

      body: TabBarView(
        controller:tcontroller ,
        physics: NeverScrollableScrollPhysics(),
        children: <Widget>[
          pageone(),
            Test(),
              Column(
                children: <Widget>[
                  Image.asset("assets/aboutus.png"),
                  Center(child: Text("BT Team ",style: TextStyle(fontSize: 22,),),),
                  Center(child: Text("Hacasuly ",style: TextStyle(fontSize: 22,),),)
                ],
              )
        ],
      )
    );
  }
}

class Test extends StatelessWidget {
  const Test({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
        final prv = Provider.of<Clprv>(context);

    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Container(
            height: 220,
            width: double.infinity,
            decoration: BoxDecoration(color: Color(0xff2e73b4)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding:  EdgeInsets.only(top: 40.0, left: prv.locale == "en" ? 20 : 0,right: prv.locale == "ar" ? 20 : 0),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: IconButton(
                      onPressed: () {},
                      color: Colors.white,
                      icon: Icon(Icons.menu),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Padding(
                  padding:  EdgeInsets.only(top: 35.0, left: prv.locale == "en" ? 20 : 0,right: prv.locale == "ar" ? 20 : 0),
                      child: Row(
                        children: <Widget>[
                          Container(
                            height: 80,
                            width: 80,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                image: DecorationImage(
                                    image: AssetImage("assets/profile.jpg"),
                                    fit: BoxFit.cover),
                                shape: BoxShape.circle),
                          ),
                          Padding(
                  padding:  EdgeInsets.only(left: prv.locale == "en" ? 8 : 0,right: prv.locale == "ar" ? 8 : 0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  "Mohmmad",
                                  style: TextStyle(color: Colors.white),
                                ),
                                Text(
                                  "30 Y`old",
                                  style: TextStyle(color: Colors.white),
                                ),
                                Text(
                                  "Sulaymaniyah",
                                  style: TextStyle(color: Colors.white),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Padding(
                  padding:  EdgeInsets.only(top: 40.0, left: prv.locale == "ar" ? 10 : 0,right: prv.locale == "en" ? 10 : 0),
                        child: Container(
                          height: 40,
                          width: 80,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Color(0xffacfac8)),
                          child: Center(
                              child: Text(
                            AppLocalizations.of(context).translate('account'),
                            style: TextStyle(fontSize: 12,color: Color(0xff2451ae)),
                          )),
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          Container(
            
            width: double.infinity,
            color: Colors.white,
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    buildDetails("assets/heart.png","80","Heart Rate",context),
                    buildDetails("assets/blood-pressure.png","120/80","Blood pressure",context),
                    
                  ],
                ),
                 Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    buildDetails("assets/height.png","80","Height",context),
                    buildDetails("assets/weight-scale.png","100","Weight",context),
                    
                  ],
                ),
                 Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    buildDetails("assets/heartbeat.png","135","Pulse Rate",context),
                    buildDetails("assets/burning.png","135","Calories",context),
                    
                  ],
                ),
              ],
            ),
          ),
          Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  buildbutton(Icons.notifications,AppLocalizations.of(context).translate('notfy')),

                  buildbutton(Icons.message,AppLocalizations.of(context).translate('msg')),
                  
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  buildbutton(Icons.attachment,AppLocalizations.of(context).translate('attach')),

                  buildbutton(Icons.close,AppLocalizations.of(context).translate('logout')),
                  
                ],
              )
            ],
          )
        ],
      ),
    );
  }

  Padding buildbutton(icon,title) {
    return Padding(
                  padding: const EdgeInsets.only(top:8.0,left: 3,right: 3),
                  child: Container(
          height: 100,
          width: 172,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20)
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                  Icon(icon,size: 35,color: Maincolor,),
                  Text(title)
              ],
            ),
          ),
        ),
                );
  }

  Container buildDetails(image,value,title,context) {
    final prv = Provider.of<Clprv>(context);
    return Container(
                    
                    height: 83,
                    width: 180,
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0xffdddddd),width: 1)
                    ),
                    child: Row(
                      
                      children: <Widget>[
                        Padding(
                          padding:  EdgeInsets.only(left:prv.locale == "en" ? 12.0 : 0 , right: prv.locale == "ar" ? 12 : 0),
                          child: Container(
                            child: Image.asset(image,width: 50,color: Maincolor,),
                          ),
                        ),
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Padding(
                              padding:  EdgeInsets.only(top:15.0,left:prv.locale == "en" ? 10.0 : 0 , right: prv.locale == "ar" ? 10 : 0),
                              child: Text(value,style: TextStyle(fontSize: 15),),
                            ),
                             Padding(
                              padding:  EdgeInsets.only(top:14.0,left:prv.locale == "en" ? 10.0 : 0 , right: prv.locale == "ar" ? 10 : 0),
                              child: Text(title,style: TextStyle(fontSize: 12,height: 0.2),),
                            )
                          ],
                        )
                      ],
                    ),
                  );
  }
}
