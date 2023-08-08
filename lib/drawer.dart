import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class DrawerIcon extends StatelessWidget {
  final String title;
  final IconData icon;
  const DrawerIcon({super.key, required this.title, required this.icon});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){},
      child: Padding(
        padding: const EdgeInsets.only(bottom: 25),
        child: Row(
          children: [
            Icon(icon,
            color: Colors.white,
            size: 20,),
            SizedBox(
              width: 56,
            ),
            Text(title,
            style: TextStyle(color: Colors.white,fontSize: 16),)
          ],
        ),
      ),
    );;
  }
}