import 'package:flutter/material.dart';
import 'package:flutter_timer/config/colors.dart';
import 'package:flutter_timer/models/timed_event.dart';
import 'package:flutter_timer/services/timer_service.dart';
import 'package:provider/provider.dart';

import 'event_item.dart';

class EventList extends StatelessWidget {
  const EventList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TimerService timerService = context.watch<TimerService>();

    List<TimedEvent> timedEvents = timerService.timedEvents;

    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10),
      color: Colors.white,
      child: ListView.separated(
        shrinkWrap: true,
        separatorBuilder: (context, index) => const Divider(
          height: 1,
        ),
        itemCount: timedEvents.length + 1,
        itemBuilder: (context, index) {
          if (index == 0) {
            return Stack(
              children: [
                Align(
                  alignment: Alignment.center,
                  child: IconButton(
                    onPressed: () {
                      timerService.addNew();
                    },
                    icon: Icon(
                      Icons.add_circle_outline,
                      size: 35,
                      color: context.watch<TimerService>().timerActive
                          ? AppColours.grey
                          : AppColours.blue,
                    ),
                  ),
                ),
              ],
            );
          } else {
            return EventItem(event: timedEvents[index - 1]);
          }
        },
      ),
    );
  }
}
