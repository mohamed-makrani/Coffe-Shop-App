import 'package:flutter/material.dart';

class HomeBottomBar extends StatelessWidget {
  const HomeBottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      height: 80,
      decoration: BoxDecoration(
        color: const Color.fromARGB(149, 0, 0, 0),
        boxShadow: [
          BoxShadow(
            color: const Color.fromARGB(149, 0, 0, 0).withOpacity(0.5),
            spreadRadius: 1,
            blurRadius: 8,
          ),
        ],
      ),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
                Icon(Icons.home ,
                 color: Color.fromARGB(255, 225, 139, 10),
                 size: 35,
                ),
                 Icon(Icons.favorite ,
                 color: Color.fromARGB(255, 225, 139, 10),
                 size: 35,
                ),
                 Icon(Icons.notification_add ,
                 color: Color.fromARGB(255, 225, 139, 10),
                 size: 35,
                ), Icon(Icons.person ,
                 color: Color.fromARGB(255, 225, 139, 10),
                 size: 35,
                ),

        ],
      ),
    );
  }
}
