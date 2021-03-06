import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:rentx/styles/app_colors.dart';
import 'package:table_calendar/table_calendar.dart';

class CalendarWidget extends StatefulWidget {
  final Function(String) onChangeStart;
  final Function(String) onChangeEnd;

  const CalendarWidget(
      {Key? key, required this.onChangeStart, required this.onChangeEnd})
      : super(key: key);

  @override
  _CalendarWidgetState createState() => _CalendarWidgetState();
}

class _CalendarWidgetState extends State<CalendarWidget> {
  CalendarFormat _calendarFormat = CalendarFormat.month;
  RangeSelectionMode _rangeSelectionMode = RangeSelectionMode.toggledOn;
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;
  DateTime? _rangeStart;
  DateTime? _rangeEnd;

  @override
  Widget build(BuildContext context) {
    return TableCalendar(
      headerStyle: HeaderStyle(
          titleTextStyle: TextStyle(color: AppColors.grayTitle, fontSize: 20)),
      locale: 'pt_BR',
      calendarStyle: CalendarStyle(
          canMarkersOverflow: false,
          todayDecoration: BoxDecoration(color: AppColors.grayTextDetails),
          rangeHighlightColor: AppColors.hoverRed,
          rangeEndDecoration: BoxDecoration(color: AppColors.primary),
          rangeStartDecoration: BoxDecoration(color: AppColors.primary)),
      firstDay: DateTime.utc(2010, 10, 16),
      lastDay: DateTime.utc(2030, 3, 14),
      focusedDay: _focusedDay,
      selectedDayPredicate: (day) => isSameDay(_selectedDay, day),
      rangeStartDay: _rangeStart,
      rangeEndDay: _rangeEnd,
      calendarFormat: _calendarFormat,
      rangeSelectionMode: _rangeSelectionMode,
      onDaySelected: (selectedDay, focusedDay) {
        if (!isSameDay(_selectedDay, selectedDay)) {
          setState(() {
            _selectedDay = selectedDay;
            _focusedDay = focusedDay;
            _rangeStart = null; // Important to clean those
            _rangeEnd = null;
            _rangeSelectionMode = RangeSelectionMode.toggledOff;
          });
        }
      },
      onRangeSelected: (start, end, focusedDay) {
        setState(() {
          _selectedDay = null;
          _focusedDay = focusedDay;
          _rangeStart = start;
          _rangeEnd = end;
          _rangeSelectionMode = RangeSelectionMode.toggledOn;

          if (_rangeStart != null) {
            final dateStart =
                DateFormat("d MMMM y", "pt_BR").format(_rangeStart!);

            widget.onChangeStart(dateStart);
          }

          if (_rangeEnd != null) {
            final dateEnd = DateFormat("d MMMM y", "pt_BR").format(_rangeEnd!);
            widget.onChangeEnd(dateEnd);
          }
        });
      },
      onFormatChanged: (format) {
        if (_calendarFormat != format) {
          setState(() {
            _calendarFormat = format;
          });
        }
      },
      onPageChanged: (focusedDay) {
        _focusedDay = focusedDay;
      },
    );
  }
}
