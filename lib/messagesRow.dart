import 'package:chat_ui_app/useravathar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class MessagesRow extends StatelessWidget {
  const MessagesRow({super.key, required this.name, required this.Messages, required this.filename, required this.msgCount});
  final String name;
  final String Messages;
  final String filename;
  final int msgCount;


  @override
  Widget build(BuildContext context) {
        return Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              UserAvatar(filename: filename),
                              SizedBox(width: 15,),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children:  [
                                   Text(
                            name,
                            style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
                          ),
                          SizedBox(
                            height:5 ,
                          ),
                          Text(
                            Messages,
                            style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
                          ),

                                ],
                              )
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right :25 ,top: 5.0),
                            child: Column(
                              children: [
                                Text('10:30 am',style: TextStyle(
                                  fontSize: 10,
                                ) ,),
                                const SizedBox(
                                  height: 15,
                                ),
                                if(msgCount>0)
                                CircleAvatar(
                                  radius: 7,
                                  backgroundColor: Color(0xFF27c1a9),
                                  child: Text(
                                    msgCount.toString(),
                                    style: TextStyle(
                                      fontSize: 10,color: Colors.white,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          )

                        ],
                      ),
                      Divider(
                        indent: 70,
                      )
                    ],
                  );;
  }
}