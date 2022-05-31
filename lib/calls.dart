import 'package:flutter/material.dart';

class Calls extends StatelessWidget {
  final String? chatMessage;
  final String? chatTitle;
  final String? callStatus;
  final String? imageUrl;
  final String? callType;

  const Calls({
    Key? key,
    this.chatMessage,
    this.chatTitle,
    this.callStatus,
    this.imageUrl,
    this.callType,
  }) : super(key: key);
  // Masukkan coding disini
  //
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NotificationListener<OverscrollIndicatorNotification>(
        onNotification: (_) {
          _.disallowGlow();
          return true;
        },
        child: ListView(
          children: const [
            Calls(
              callStatus: 'Outgoing',
              callType: 'Audio',
              chatMessage: 'Today, 12:28 PM',
              chatTitle: 'Arya Stark',
              imageUrl: 'https://static-koimoi.akamaized.net/wp-content/new-galleries/2020/09/maisie-williams-aka-arya-stark-of-game-of-thrones-someone-told-me-in-season-three-that-i-was-going-to-kill-the-night-king001.jpg',
            ),
            Calls(
              callStatus: 'Incoming',
              callType: 'Video',
              chatMessage: 'Today, 01:11 AM',
              chatTitle: 'Cersei Lannister',
              imageUrl: 'https://pyxis.nymag.com/v1/imgs/8a2/6a6/8ddcaf4454e34b72484c5393560af17366-09-cersei-lannister.rsquare.w700.jpg',
            ),
            Calls(
              callStatus: 'Incoming',
              callType: 'Video',
              chatMessage: 'Today, 5:28 AM',
              chatTitle: 'Red Woman',
              imageUrl: 'https://upload.wikimedia.org/wikipedia/en/8/80/Melisandre-Carice_van_Houten.jpg',
            ),
            Calls(
              callStatus: 'Outgoing',
              callType: 'Audio',
              chatMessage: 'Today, 12:28 PM',
              chatTitle: 'The Mountain',
              imageUrl: '/data/FLUTTER REVIVAL/whatsapp_ui/lib/assets/images/Mountains.jpg',
            ),
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            backgroundColor: Colors.white,
            focusElevation: 0.0,
            onPressed: () {},
            child: Icon(
              Icons.video_call,
              color: Colors.teal.shade900,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          FloatingActionButton(
            backgroundColor: Colors.green,
            onPressed: () {},
            child: Icon(
              Icons.add_call,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
