import 'package:first_priority_app/models/event.dart';
import 'package:first_priority_app/models/meeting_role.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../../Constants.dart';

class MeetingDetails extends StatelessWidget {
  final Meeting meeting;

  MeetingDetails({Key key, @required this.meeting}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  DateFormat('EEEE, MMMM d').format(meeting.time).toUpperCase(),
                  style: getCustomTextProperties(
                      Colors.black54, 16, fontSchylerRegular, 1),
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  meeting.week,
                  style: getCustomTextProperties(
                      Colors.black, 30, fontSchylerRegular, 1),
                ),
                SizedBox(
                  height: 8.0,
                ),
                Text(
                  '${DateFormat('h:mma').format(meeting.time).toLowerCase()} • ${meeting.room}',
                  style: getCustomTextProperties(
                      Colors.black54, 16, fontSchylerRegular, 1),
                ),
                SizedBox(
                  height: 10.0,
                ),
                SizedBox(height: 10),
                Text(
                  'Roles',
                  style: Theme.of(context).textTheme.headline1,
                ),
                ...List.generate(meeting.roles.length, (index) {
                  return _roleDisplay(meeting.roles[index]);
                }),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _roleDisplay(MeetingRole role) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            role.role,
            style: getCustomTextProperties(
                Colors.black, 16, fontSchylerRegular, 0),
          ),
          Text(
            role.name,
            style: getCustomTextProperties(colorLightDark, 14, "Schyler", 0),
          ),
        ],
      ),
    );
  }
}
