import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:date_picker_timeline/date_picker_timeline.dart';
import 'constants_materials.dart';
import 'package:table_calendar/table_calendar.dart';

class EditTask extends StatefulWidget {
  EditTask({Key key}) : super(key: key);

  @override
  _EditTaskState createState() => _EditTaskState();
}

class _EditTaskState extends State<EditTask> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          title: SafeArea(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    child: Text('Cancel', style:TextStyle(
                      color: Colors.red,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    )
                    ),
                    onPressed: ()=>{},
                  ),
                  Text('Edit Task',
                      style: TextStyle(
                        color: Color(0xFF000000),
                        fontSize: 24,
                      )
                  ),
                  TextButton(
                    child: Text('Save', style: TextStyle(
                      color: Colors.blueAccent,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                    ),
                    onPressed: ()=>{},
                  ),
                ],
              )
          ),
          centerTitle: true,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
                margin: EdgeInsets.only(
                  left: 11.0,
                  top: 10.0,
                ),
                child: Text(
                  'Task Title',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                )),
            Container(
              margin: EdgeInsets.all(10),
              height: 50,
              child: ReusableField(hint: 'Title'),
            ),
            Container(
                margin: EdgeInsets.only(
                  left: 11.0,
                  top: 10.0,
                ),
                child: Text(
                  'Task Description',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                )
            ),
            Container(
              margin: EdgeInsets.all(10),
              height: 50,
              child: ReusableField( hint: 'Description',),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                    margin: EdgeInsets.only(
                      left: 11.0,
                      top: 5.0,
                    ),
                    child: Text(
                      'Task Date and Time',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                ),
                Row(
                    children: <Widget>[
                      Container(
                          height: 35,
                          width: 110,
                          child: TextField(
                            readOnly: true,
                            decoration: InputDecoration(
                              labelText: TimeOfDay(hour: 12, minute: 0).format(context).toString(),
                              fillColor: Colors.black,
                              hintStyle: TextStyle(
                                color: Colors.black54,
                              ),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5.0),
                                  borderSide: BorderSide(color: Colors.black)),
                              focusedBorder:
                              OutlineInputBorder(borderRadius: BorderRadius.circular(5.0)),
                            ),
                          )
                      ),
                      IconButton(
                        onPressed: () => {},
                        color: Colors.black87,
                        hoverColor: Colors.yellow,
                        iconSize: 25,
                        icon: Icon(Icons.watch_later_outlined),
                        alignment: AlignmentDirectional.centerEnd,
                      ),
                    ]
                ),
              ],
            ),
            Expanded(
              child: Container(
                child: TableCalendar(
                  focusedDay: DateTime.now(),
                  firstDay: DateTime.now(),
                  lastDay: DateTime.utc(2025, 01, 01),
                  calendarStyle: CalendarStyle(
                    selectedTextStyle: TextStyle(color: Colors.white),
                  ),
                  shouldFillViewport: true,
                  daysOfWeekHeight: 15.0,
                ),
              ),
            ),
          ],
        )
    );
  }
}
