import 'package:chat_ui_app/drawer.dart';
import 'package:chat_ui_app/messagesRow.dart';
import 'package:chat_ui_app/useravathar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final GlobalKey<ScaffoldState> _globalKey =GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _globalKey,
        backgroundColor: Color(0xFF171717),
        body: Stack(children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 70, left: 5, right: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                        onPressed: () {
                          _globalKey.currentState!.openDrawer();
                        },
                        icon: const Icon(
                          Icons.menu,
                          color: Colors.white,
                        )),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.search,
                          color: Colors.white,
                        )),
                  ],
                ),
              ),
              SizedBox(
                height: 50,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.only(left: 10),
                  children: [
                    TextButton(
                        onPressed: () {},
                        child: const Text(
                          "Messages",
                          style: TextStyle(color: Colors.white, fontSize: 26),
                        )),
                    const SizedBox(
                      width: 35,
                    ),
                    TextButton(
                        onPressed: () {},
                        child: const Text(
                          "Online",
                          style: TextStyle(color: Colors.grey, fontSize: 26),
                        )),
                    const SizedBox(
                      width: 35,
                    ),
                    TextButton(
                        onPressed: () {},
                        child: const Text(
                          "Group",
                          style: TextStyle(color: Colors.grey, fontSize: 26),
                        )),
                    const SizedBox(
                      width: 35,
                    ),
                    TextButton(
                        onPressed: () {},
                        child: const Text(
                          "More",
                          style: TextStyle(color: Colors.grey, fontSize: 26),
                        )),
                    const SizedBox(
                      width: 35,
                    ),
                  ],
                ),
              )
            ],
          ),
          Positioned(
            top: 190,
            left: 0,
            right: 0,
            child: Container(
              padding: EdgeInsets.only(top: 15, left: 25, right: 25),
              height: 220,
              decoration: BoxDecoration(
                  color: Colors.lightBlue,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40))),
              child: Column(children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Favorite contacts",
                      style: TextStyle(color: Colors.white),
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.more_horiz,
                          color: Colors.white,
                        )),
                  ],
                ),
                SizedBox(
                  height: 90,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      buildContactAvathar('Ettan', 'mohanlal.jpg'),
                      buildContactAvathar('Ikka', 'mamu.jpg'),
                      buildContactAvathar('fafa', 'fafa.jpg'),
                      buildContactAvathar('Ichayan', 'nivin.jpg'),
                      buildContactAvathar('Prithi', 'Prithviraj.jpg'),
                      buildContactAvathar('Loki', 'loki.jpg'),
                      buildContactAvathar('Kallu', 'kalayni.jpg'),
                      buildContactAvathar('DQ', 'dq.jpg'),
                    ],
                  ),
                )
              ]),
            ),
          ),
          Positioned(
              top: 365,
              left: 0,
              right: 0,
              bottom: 0,
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  ),
                  color: Colors.white,
                ),
                child: ListView(
                  padding: EdgeInsets.only(left:25),
                  children: [
                    MessagesRow(Messages: 'mone,ne evdayanu? ', filename: 'mohanlal.jpg', msgCount: 0, name: 'Ettan',),
                     MessagesRow(Messages: 'Abhi..nita shirt onne tharo ', filename: 'mamu.jpg', msgCount: 10, name: 'Ikka',),
                     MessagesRow(Messages: 'Miss you ', filename: 'kalayni.jpg', msgCount: 50, name: 'Kallu',),
                     MessagesRow(Messages: 'bro ', filename: 'loki.jpg', msgCount: 1, name: 'Loki',),
                     MessagesRow(Messages: 'da..nala vtl kanno? ', filename: 'nivin.jpg', msgCount: 0, name: 'Ichayan',),
                     MessagesRow(Messages: 'chuma irikathey kalapakar kelk ', filename: 'dq.jpg', msgCount: 0, name: 'DQ',),
                     MessagesRow(Messages: 'THANK YOU FOR THE WISH ', filename: 'fafa.jpg', msgCount: 1, name: 'fafa',),
                     MessagesRow(Messages: 'da..ne free ano..? ', filename: 'Prithviraj.jpg', msgCount: 12, name: 'Prithi',),
                    


                     
                  ],
                ),
                
              ),
              )
        ],
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endDocked ,
        floatingActionButton: SizedBox(
          height: 65,
          width: 65,
          child: FloatingActionButton(
            backgroundColor: Colors.lightBlue,
            child: Icon(Icons.edit_outlined,size: 30,),
            onPressed: (){},
          ),
        ),
        drawer: Drawer(
          width: 275,
          backgroundColor: Colors.black26,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.horizontal(right: Radius.circular(40)),
          ),
          child: Container(
            decoration: BoxDecoration(
              color: Color(0xF71F1E1E),
               borderRadius: BorderRadius.horizontal(right: Radius.circular(40)),
               boxShadow: [
                BoxShadow(
                  color: Colors.black,spreadRadius: 20,blurRadius: 20,
                )
               ]
            ),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20,50,20,20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Row(
                        children: const[
                          Icon(Icons.arrow_back_ios,
                          color: Colors.white,
                          size: 20,),
                          SizedBox(
                            width: 56,
                          ),
                          Text('Settings',
                          style: TextStyle(color: Colors.white,fontSize: 16),)
                        ],
                      ),
                      SizedBox(height: 30,),
                      Row(
                        children: [
                          UserAvatar(filename: 'mee.jpg'),
                          SizedBox(width:12 ,),
                          Text(
                            'Abhijith',
                            style: TextStyle(color: Colors.white,
                            ),
                            ),],
                      ),
                      SizedBox(
                        height: 35,
                      ),
                      DrawerIcon(icon: Icons.key, title: 'Account',),
                      DrawerIcon(icon: Icons.chat_bubble, title: 'Chat',),
                      DrawerIcon(icon: Icons.notifications, title: 'Notifications',),
                      DrawerIcon(icon: Icons.storage, title: 'Data and Storage',),
                      DrawerIcon(icon: Icons.help, title: 'Help',),
                      Divider(
                        height: 35,
                        color: Colors.lightBlue,
                      ),
                      DrawerIcon(title: 'Invite a friend', icon: Icons.people_outline),
                      
          
                    ],
                  ),
                  DrawerIcon(title: 'Log out', icon: Icons.logout)
                ],
              ),
            ),
          ),
        ),
        );
  }



  Padding buildContactAvathar(String name, String filename) {
    return Padding(
      padding: const EdgeInsets.only(right: 20.0),
      child: Column(
        children: [
          UserAvatar(
            filename: filename,
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            name,
            style: TextStyle(color: Colors.white, fontSize: 16),
          )
        ],
      ),
    );
  }
}

