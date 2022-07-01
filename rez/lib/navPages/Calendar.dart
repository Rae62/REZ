import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

//selected day for event
// void _onDaySelected(DateTime selectedDay, DateTime focusedDay) {
// if (!isSameDay(_selectedDay, selectedDay)) {
//   setState(() {
//     _focusedDay = focusedDay;
//     _selectedDay = selectedDay;
//     _selectedEvents = _getEventsForDay(selectedDay);
//     });
//   }
// }

class CalendarPage extends StatelessWidget {
  const CalendarPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          backgroundColor: Color.fromARGB(255, 247, 246, 248),
          shadowColor: Colors.grey,
          title: Text(
            'Calendrier',
            style: TextStyle(color: Colors.black),
          ),
          iconTheme: IconThemeData(
            color: Colors.black,
          ),
          centerTitle: true),
      body: Container(
          child: TableCalendar(
        firstDay: DateTime.utc(2010, 10, 16),
        lastDay: DateTime.utc(2030, 3, 14),
        focusedDay: DateTime.now(),
        // locale: 'fr_FR',
      )),
    );
  }
}
