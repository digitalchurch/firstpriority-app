import 'package:first_priority_app/screens/sign_up/main_dashBoard/events/events_details.dart';
import 'package:first_priority_app/screens/sign_up/main_dashBoard/resources/resources_detail_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../Constants.dart';

class EventsScreen extends StatelessWidget {
  final titles = [
    "Weekly Meeting: Equip",
    "Weekly Meeting: Equip",
    "Weekly Meeting: Equip",
    "Weekly Meeting: Equip",
    "Weekly Meeting: Equip",
    "Weekly Meeting: Equip",
    "Weekly Meeting: Equip",
    "Weekly Meeting: Equip",
    "Weekly Meeting: Equip",
    "Weekly Meeting: Equip"
  ];
  final subtitles = [
    "Vero Central High School: Room 567",
    "Vero Central High School: Room 567",
    "Vero Central High School: Room 567",
    "Vero Central High School: Room 567",
    "Vero Central High School: Room 567",
    "Vero Central High School: Room 567",
    "Vero Central High School: Room 567",
    "Vero Central High School: Room 567",
    "Vero Central High School: Room 567",
    "Vero Central High School: Room 567"
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            height: 60.0,
          ),
          Container(
            margin: EdgeInsets.only(left: 10.0, top: 10.0),
            child: Text(
              'MONDAY, SEPTEMBER 27',
              style: getCustomTextProperties(Colors.black54, 16, "Schyler", 1),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 10, top: 10),
            child: Text(
              'Events',
              style: getCustomTextProperties(Colors.black, 30, "Schyler", 1),
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.only(top: 8),
              child: ListView.builder(
                  padding: EdgeInsets.zero,
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  itemCount: titles.length,
                  itemBuilder: (context, index) {
                    return Container(
                        child: ListTile(
                      title: Text(
                        titles[index],
                        style: getCustomTextProperties(
                            Colors.black, 16, "Schyler", 1),
                      ),
                      subtitle: Text(
                        subtitles[index],
                        style: getCustomTextProperties(
                            colorLightDark, 14, "Schyler", 0),
                      ),
                      leading: Container(
                        margin: EdgeInsets.only(left: 10),
                        alignment: Alignment.centerRight,
                        height: 60,
                        width: 70,
                        child: Material(
                          borderRadius: BorderRadius.circular(5.0),
                          shadowColor: Colors.black12,
                          color: Colors.black12,
                          elevation: 7.0,
                          child: GestureDetector(
                            onTap: () {},
                            child: Center(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'SEP',
                                    style: getCustomTextProperties(
                                        Colors.black, 14, "Schyler", 1),
                                  ),
                                  Text(
                                    '29',
                                    style: getCustomTextProperties(
                                        Colors.black, 24, "Schyler", 1),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      onTap: () => _navigateToNextScreen(context),
                    ));
                  }),
            ),
          )
        ]);
  }

  void _navigateToNextScreen(BuildContext context) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => EventsDetails()));
  }
}
