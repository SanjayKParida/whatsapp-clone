import 'package:flutter/material.dart';
import 'package:whatsapp_clone/colors.dart';

import '../info.dart';

class ContactList extends StatelessWidget {
  const ContactList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(top: 10),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: info.length,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {},
                    child: ListTile(
                        title: Text(info[index]['name'].toString(),
                            style: const TextStyle(fontSize: 18)),
                        subtitle: Padding(
                          padding: const EdgeInsets.only(top: 6.0),
                          child: Text(
                            info[index]['message'].toString(),
                            style: const TextStyle(fontSize: 15),
                          ),
                        ),
                        leading: CircleAvatar(
                          backgroundImage: NetworkImage(
                              info[index]['profilePic'].toString()),
                        ),
                        trailing: Text(info[index]['time'].toString(),
                            style: const TextStyle(
                                fontSize: 13, color: Colors.grey))),
                  );
                },
              ),
            ),
            const Divider(
              color: dividerColor,
              indent: 85,
            )
          ],
        ));
  }
}
