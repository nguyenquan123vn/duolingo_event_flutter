import 'package:duolingo_event_app/models/duolingoUser.dart';
import 'package:duolingo_event_app/service/data_services/data_service.dart';
import 'package:flutter/material.dart';
import 'package:duolingo_event_app/global/style.dart';
import 'package:duolingo_event_app/global/widget/button.dart';
import 'package:duolingo_event_app/global/widget/iconText.dart';
import 'package:provider/provider.dart';

class Header extends StatefulWidget {
  const Header(
      {Key key,
      this.title,
      this.date,
      this.spotLeft,
      this.eventId,
      this.reservationCount})
      : super(key: key);

  final String title;
  final DateTime date;
  final int spotLeft;
  final String eventId;
  final int reservationCount;

  @override
  _HeaderState createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  @override
  Widget build(BuildContext context) {
    DataService data = context.read<DataService>();
    final user = context.read<DuolingoUser>();
    bool isAttendOnClick = false;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.title,
          style: headerTextStyle,
        ),
        SizedBox(height: 16.0),
        IconText(
          label:
              '${widget.date.day}/${widget.date.month}/${widget.date.year} - ${widget.date.hour}h${widget.date.minute}',
          icon: Icons.watch_later,
        ),
        SizedBox(height: 16.0),
        IconText(
          label: "${widget.spotLeft} spots left",
          icon: Icons.person,
        ),
        SizedBox(height: 16.0),

        //Reserve event spot -----------------
        FutureBuilder(
            future: data.isUserAttend(user.uid, widget.eventId),
            builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
              if (snapshot.hasData) {
                bool isAttend = snapshot.data["isAttend"];
                String reservationId = snapshot.data["reservationId"];
                print(snapshot.data);
                return Button(
                  label: widget.spotLeft != 0
                      ? isAttendOnClick || isAttend
                          ? "ATTENDED"
                          : "RESERVE SPOT"
                      : "IS FULL",
                  type: widget.spotLeft != 0
                      ? isAttendOnClick || isAttend
                          ? "HOST"
                          : "PRIMARY"
                      : "WHITE",
                  onPressed: () async {
                    widget.spotLeft != 0
                        ? isAttendOnClick || isAttend
                            ? await data
                                .cancelEventReservation(
                                    reservationId,
                                    widget.eventId,
                                    user.uid,
                                    widget.reservationCount)
                                .then((value) =>
                                    setState(() => isAttendOnClick = value))
                            : await data
                                .eventReservation(
                                    user.uid,
                                    widget.eventId,
                                    widget
                                        .reservationCount) //số người tham gia chưa cập nhật sau khi reserve/cancel => tham số reservationCount sai => cập nhật firestore sai;
                                .then((value) =>
                                    setState(() => isAttendOnClick = value))
                        : null;
                  },
                );
              } else {
                return Button(
                  label: ".....",
                  type: "PRIMARY",
                  onPressed: () {},
                );
              }
            }),
      ],
    );
  }
}
