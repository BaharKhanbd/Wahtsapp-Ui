// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Home_Page extends StatefulWidget {
  const Home_Page({super.key});

  @override
  State<Home_Page> createState() => _Home_PageState();
}

// ignore: camel_case_types
class _Home_PageState extends State<Home_Page> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text("WhatsApp"),
          bottom: TabBar(tabs:
              // ignore: prefer_const_literals_to_create_immutables
              [
            Tab(
              icon: Icon(Icons.camera_alt),
            ),
            Tab(
              child: Text("CHATS"),
            ),
            Tab(
              child: Text("STATUS"),
            ),
            Tab(
              child: Text("CALLS"),
            ),
          ]),
          // ignore: prefer_const_literals_to_create_immutables
          actions: [
            Icon(Icons.search),
            SizedBox(
              width: 10,
            ),
            PopupMenuButton(
                icon: Icon(Icons.more_horiz),
                itemBuilder: (context) => [
                      PopupMenuItem(value: 1, child: Text("New Group")),
                      PopupMenuItem(value: 2, child: Text("Setting")),
                      PopupMenuItem(value: 3, child: Text(" Dark Mode")),
                    ]),
            SizedBox(
              width: 10,
            ),
          ],
        ),
        // ignore: prefer_const_literals_to_create_immutables
        body: TabBarView(children: [
          Icon(Icons.camera_alt),
          ListView.builder(
              itemCount: 100,
              itemBuilder: ((context, index) {
                return ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
                  ),
                  title: Text("Bahar Khan"),
                  subtitle: Text("Hi! Good Morning"),
                  trailing: Text("6 pm"),
                );
              })),
          Text("1"),
          ListView.builder(
              itemCount: 100,
              itemBuilder: ((context, index) {
                return ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
                  ),
                  title: Text("Bahar Khan"),
                  subtitle: Text("25 june 5.07pm"),
                  trailing: Icon(Icons.video_call),
                );
              })),
        ]),
      ),
    );
  }
}
