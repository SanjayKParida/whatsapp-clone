import 'package:flutter/material.dart';
import 'package:whatsapp_clone/widgets/contact_list.dart';

class WebScreenLayout extends StatelessWidget {
  const WebScreenLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Row(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Column(
          children: [
            //WEB PROFILE BAR

            //WEB SEARCH BAR

            //WEB CONTACT LIST
            ContactList()
          ],
        ),
        Container(
          width: MediaQuery.sizeOf(context).width * 0.75,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/backgroundImage.png'),
                  fit: BoxFit.cover)),
        )
      ],
    ));
  }
}
