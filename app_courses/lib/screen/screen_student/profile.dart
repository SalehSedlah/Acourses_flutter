import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';

class profile extends StatefulWidget {
  const profile({super.key});

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
        backgroundColor: Color.fromARGB(62, 23, 39, 67),
      ),
      body: Container(
        color: Color.fromARGB(111, 248, 246, 246),
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              CircleAvatar(
                radius: 70,
                backgroundImage: AssetImage('assets/images/profile.jpg'),
              ),
              SizedBox(
                height: 50,
              ),
              itemPrfile("Name", "Saleh Alsedlah", CupertinoIcons.person),
              SizedBox(
                height: 10,
              ),
              itemPrfile("Deparment", "IT ", CupertinoIcons.phone),
              SizedBox(
                height: 10,
              ),
              itemPrfile("Level", "Forth ", CupertinoIcons.location),
              SizedBox(
                height: 10,
              ),
              itemPrfile("Email", "saleh@gmail.com ", CupertinoIcons.mail),
            ],
          ),
        ),
      ),
    );
  }
}

itemPrfile(String title, String subtitle, IconData iconData) {
  return Container(
    decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 5),
            color: Color.fromARGB(255, 14, 1, 184).withOpacity(.2),
            spreadRadius: 2,
            blurRadius: 10,
          )
        ]),
    child: ListTile(
      title: Text(title),
      subtitle: Text(subtitle),
      leading: Icon(iconData),
      trailing: Icon(
        Icons.arrow_forward,
        color: Color.fromRGBO(242, 179, 179, 1),
      ),
      tileColor: Colors.white,
    ),
  );
}
