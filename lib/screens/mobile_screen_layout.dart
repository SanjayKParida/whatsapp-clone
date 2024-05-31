import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:whatsapp_clone/colors.dart';
import 'package:whatsapp_clone/widgets/contact_list.dart';

class MobileScreenLayout extends StatelessWidget {
  const MobileScreenLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            elevation: 0,
            backgroundColor: appBarColor,
            title: const Text(
              'Whatsapp',
              style: TextStyle(
                  color: Colors.grey,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            actions: [
              IconButton(
                onPressed: () {},
                icon: const Icon(IconlyLight.search, color: Colors.grey),
              ),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    IconlyLight.more_circle,
                    color: Colors.grey,
                  ))
            ],
            bottom: const TabBar(
                labelColor: tabColor,
                indicatorWeight: 4,
                indicatorColor: tabColor,
                labelStyle: TextStyle(fontWeight: FontWeight.bold),
                tabs: [
                  Tab(
                    text: "Chats",
                  ),
                  Tab(
                    text: "Status",
                  ),
                  Tab(
                    text: "Calls",
                  ),
                ]),
          ),
          body: const ContactList(),
        ));
  }
}
