import 'package:duolingo_event_app/global/widget/appBar.dart';
import 'package:duolingo_event_app/global/widget/button.dart';
import 'package:flutter/material.dart';
import '../../global/style.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: CustomedAppBar(),
          body: Padding(
            padding: const EdgeInsets.all(16.0),
            child: SingleChildScrollView(
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        InkWell(
                            onTap: () {}, //Tap to go to homescreen
                            child:
                                Text("EVENTS HOME", style: whiteBtnTextStyle)),
                        Text(" / ONLINE EVENT", style: disabledBtnTextStyle),
                      ],
                    ),
                    SizedBox(height: 16.0),
                    Text("Duolingo Online Events", style: headerTextStyle),
                    SizedBox(height: 16.0),
                    IconText(
                        label: "Thursday March 4 at 9:30 PM to 10:30 PM GMT+07",
                        icon: Icons.watch_later),
                    SizedBox(height: 16.0),
                    IconText(label: "22 spots left", icon: Icons.person),
                    SizedBox(height: 16.0),
                    Button(label: "RESERVE SPOT", type: "PRIMARY"),
                    Divider(height: 20, thickness: 1),
                    Text("Details", style: headerTextStyle),
                    SizedBox(height: 16.0),
                    Text("24 attending", style: defaultBoldWashTextStyle),
                    SizedBox(height: 16.0),
                    Container(
                      width: 258.0,
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            AvatarContainer(),
                            AvatarContainer(),
                            AvatarContainer(),
                            AvatarContainer(),
                            AvatarContainer(),
                          ]),
                    ),
                    SizedBox(height: 16),
                    IconText(label: "Hosted in Spanish", icon: Icons.messenger),
                    SizedBox(height: 16.0),
                    IconText(label: "Beginner", icon: Icons.people),
                    Divider(height: 20, thickness: 1),
                    Text(
                      "About the event",
                      style: headerTextStyle,
                    ),
                    SizedBox(height: 16.0),
                    Text(
                      "Hola a Spanish Lovers 👋 !\n"
                      "Improve your spoken Spanish! You are studying Spanish but you don't get a chance to practice speaking? Our dynamic conversation class is aimed at",
                      style: defaultParaStyle,
                    ),
                    SizedBox(height: 16.0),
                    Button(label: "READ MORE", type: "PRIMARY"),
                    Divider(height: 20, thickness: 1),
                    Text("About the Host", style: headerTextStyle),
                    SizedBox(height: 16.0),
                    Container(
                      width: double.infinity,
                      height: 90.0,
                      child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            AvatarContainer(),
                            SizedBox(width: 16.0),
                            Expanded(
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Jackson", style: headerTextStyle),
                                  Text(
                                      "We’re group of language enthusiasts. We speak France, Spanish, English. We’re excited to help you improve your language skills.",
                                      style: defaultParaStyle)
                                ],
                              ),
                            )
                          ]),
                    ),
                    SizedBox(height: 16.0),
                    Button(
                        label: "CONTACT HOST",
                        type: "WHITE",
                        onPressed: () => showDialog(
                            context: context,
                            builder: (BuildContext context) =>
                                MessageHostModal())),
                  ],
                ),
              ),
            ),
          )),
    );
  }
}

class IconText extends StatelessWidget {
  const IconText({
    Key key,
    this.label,
    this.icon,
  }) : super(key: key);

  final String label;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(icon, color: iconColor),
        SizedBox(width: 8.0),
        Text(label, style: defaultTextStyle),
      ],
    );
  }
}

class AvatarContainer extends StatelessWidget {
  const AvatarContainer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 46.0,
        width: 46.0,
        decoration: BoxDecoration(
            color: iconColor, borderRadius: BorderRadius.circular(50)));
  }
}

class MessageHostModal extends StatelessWidget {
  const MessageHostModal({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
          height: 349.0,
          width: 346.0,
          color: defaultBackgroundColor,
          child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Message host", style: headerTextStyle),
                    Container(
                        height: 139.0,
                        decoration: BoxDecoration(
                            color: borderColor,
                            borderRadius: BorderRadius.circular(8))),
                    Button(label: "SEND MESSAGE", type: "PRIMARY"),
                    Text("CANCEL", style: whiteBtnTextStyle),
                  ]))),
    );
  }
}
