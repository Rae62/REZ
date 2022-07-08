import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';
import 'package:flutter_neat_and_clean_calendar/flutter_neat_and_clean_calendar.dart';

class CalendarPage extends StatelessWidget {
  const CalendarPage({Key? key}) : super(key: key);

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          elevation: 0,
          backgroundColor: Color.fromARGB(255, 247, 246, 248),
          shadowColor: Colors.grey,
          title: const Text(
            "Calendrier",
            style: TextStyle(color: Colors.black),
          ),
          iconTheme: const IconThemeData(
            color: Colors.black,
          ),
          centerTitle: true),

      body: SafeArea(
        child: Calendar(
          startOnMonday: true,
          weekDays: ['lu', 'Ma', 'Me', 'Je', 'Ve', 'Sa', 'De'],
          eventsList: _eventList,
          isExpandable: true, // bar ou ya la date
          eventDoneColor: Colors.green,
          selectedColor: Colors.pink,
          selectedTodayColor: Colors.red,
          todayColor: Colors.blue,
          eventColor: null,
          locale: 'fr_BE',

          // todayButtonText: 'Heute',
          // allDayEventText: 'Soirée top chef ',
          multiDayEndText: 'End',
          isExpanded: true,
          expandableDateFormat: 'EEEE, dd. MMMM yyyy',
          datePickerType: DatePickerType.date,
          dayOfWeekStyle: TextStyle(
              color: Color.fromARGB(255, 9, 9, 9),
              fontWeight: FontWeight.w800,
              fontSize: 11),
        ),
      ),
      //  ////////////// Boutton Ajout
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
        backgroundColor: Color.fromARGB(255, 134, 31, 217),
      ),
      //  ////////////// Boutton Ajout

    );
  }
}

final List<NeatCleanCalendarEvent> _eventList = [
  NeatCleanCalendarEvent(
    startTime: DateTime(
        DateTime.now().year, DateTime.now().month, DateTime.now().day, 9, 0),
    endTime: DateTime(DateTime.now().year, DateTime.now().month,
        DateTime.now().day + 0, 11, 1),
    color: Color.fromARGB(255, 34, 163, 214),
    'Lille-Lens',
  ),
  NeatCleanCalendarEvent(
    startTime: DateTime(
        DateTime.now().year, DateTime.now().month, DateTime.now().day, 9, 0),
    endTime: DateTime(DateTime.now().year, DateTime.now().month,
        DateTime.now().day + 0, 11, 1),
    color: Color.fromARGB(255, 252, 3, 15),
    'Soirée Karaoké',
  ),
  // NeatCleanCalendarEvent('Lille-Lens',
  //     startTime: DateTime(
  //         DateTime.now().year, DateTime.now().month, DateTime.now().day, 20, 0),
  //     endTime: DateTime(DateTime.now().year, DateTime.now().month,
  //         DateTime.now().day + 2, 12, 0),
  //     color: Color.fromARGB(255, 7, 108, 223),
  //     isMultiDay: true),
];
