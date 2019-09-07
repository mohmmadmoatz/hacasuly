import 'package:flutter/material.dart';
import 'package:flutter_calendar_carousel/classes/event.dart';
import 'package:flutter_calendar_carousel/flutter_calendar_carousel.dart'
    show CalendarCarousel, EventList;
import 'package:hacasulyhealth/public.dart';

class bookappt extends StatefulWidget {
  @override
  _bookapptState createState() => _bookapptState();
}

class _bookapptState extends State<bookappt> {
  @override
  DateTime _currentDate = DateTime(2019, 09, 06);
  DateTime _currentDate2 = DateTime(2019, 09, 06);
  String _currentMonth = '';

  static Widget _eventIcon = new Container(
    decoration: new BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(1000)),
        border: Border.all(color: Colors.blue, width: 2.0)),
    child: new Icon(
      Icons.person,
      color: Colors.amber,
    ),
  );

  CalendarCarousel _calendarCarousel, _calendarCarouselNoHeader;

  String seltime;

  Widget build(BuildContext context) {
    _calendarCarouselNoHeader = CalendarCarousel<Event>(
      todayBorderColor: Colors.blue,

      selectedDayButtonColor: Maincolor,
      headerTextStyle: TextStyle(color: Maincolor, fontSize: 22),
      iconColor: Colors.black,
      weekdayTextStyle: TextStyle(color: Colors.black),
      onDayPressed: (DateTime date, List<Event> events) {
        this.setState(() => _currentDate2 = date);
        events.forEach((event) => print(event.title));
      },
      weekendTextStyle: TextStyle(
        color: Colors.black,
      ),
      thisMonthDayBorderColor: Colors.grey,
      weekFormat: false,

      height: 400.0,
      selectedDateTime: _currentDate2,
      customGridViewPhysics: NeverScrollableScrollPhysics(),
      markedDateShowIcon: true,
      markedDateIconMaxShown: 2,
      markedDateMoreShowTotal:
          false, // null for not showing hidden events indicator
      showHeader: true,
      markedDateIconBuilder: (event) {
        return event.icon;
      },
      todayTextStyle: TextStyle(
        color: Colors.blue,
      ),
      todayButtonColor: Colors.yellow,
      selectedDayTextStyle: TextStyle(
        color: Colors.yellow,
      ),
      minSelectedDate: _currentDate,
      maxSelectedDate: _currentDate.add(Duration(days: 60)),
//      inactiveDateColor: Colors.black12,
    );

    return Scaffold(
        appBar: AppBar(
          title: Text("book appointment"),
          backgroundColor: Color(0xff2181b4),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              _calendarCarouselNoHeader,
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: double.infinity,
                  height: 60,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Maincolor,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black.withOpacity(0.3),
                            offset: Offset(0, 4),
                            blurRadius: 6)
                      ]),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Text(
                          "07 Sep 2019",
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: Text(
                          "9:00 PM",
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Wrap(
                children: <Widget>[

                  InkWell(
                    onTap: (){
                      setState(() {
                       seltime = "9:00 PM" ;
                      });
                    },
                    child: timeappt("9:00 PM")),

                    InkWell(
                    onTap: (){
                      setState(() {
                       seltime = "9:15 PM" ;
                      });
                    },
                    child: timeappt("9:15 PM")),

                    InkWell(
                    onTap: (){
                      setState(() {
                       seltime = "9:30 PM" ;
                      });
                    },
                    child: timeappt("9:30 PM")),

                    
                    InkWell(
                    onTap: (){
                      setState(() {
                       seltime = "9:45 PM" ;
                      });
                    },
                    child: timeappt("9:45 PM")),
                    


             
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: double.infinity,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Color(0xff3964a8),
                    borderRadius: BorderRadius.circular(8)
                  ),
                  child: Center(child: Text("Book Now",style: TextStyle(color: Colors.white,fontSize: 18),),),
                ),
              )
            ],
          ),
        ));
  }

  Padding timeappt(time) {
    return Padding(
      padding: const EdgeInsets.only(left: 4.0, right: 4, bottom: 10),
      child: Container(
        height: 60,
        width: 165,
        decoration: BoxDecoration(
            color: seltime == time ? Color(0xfffffbd5) : Colors.white,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  offset: Offset(0, 7),
                  blurRadius: 6)
            ]),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Appt Time"),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                time,
                style: TextStyle(color: Maincolor),
              ),
            )
          ],
        ),
      ),
    );
  }
}
