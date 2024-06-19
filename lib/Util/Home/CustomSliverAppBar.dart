import 'package:flutter/material.dart';

class CustomSliverAppbar extends StatelessWidget {
  const CustomSliverAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Colors.white,
      floating: true,
      leading: const Icon(
        Icons.menu,
        color: Colors.black,
      ),
      title: const Text(
        'El - Agam',
        style: TextStyle(color: Colors.black),
      ),
      // actions: [
      //   Padding(
      //     padding: const EdgeInsets.all(8.0),
      //     child: Container(
      //       height: 50.h,
      //       width: 50.w,
      //       decoration: BoxDecoration(
      //           shape: BoxShape.circle,
      //           boxShadow: [
      //             BoxShadow(
      //                 blurRadius: 10,
      //                 offset: const Offset(-5, -3),
      //                 color: Colors.amber.withOpacity(0.2))
      //           ],
      //           image: const DecorationImage(
      //               fit: BoxFit.fill,
      //               image: NetworkImage(
      //                   'https://imgs.search.brave.com/RzIWR9xu25qCMQTkRDeUVzIksUdUIEJ9qwXG828gfcY/rs:fit:860:0:0/g:ce/aHR0cHM6Ly93YWxs/cGFwZXJjYXZlLmNv/bS93cC93cDk4MDEw/MzEuanBn'))),
      //     ),
      //   )
      // ],
    );
  }
}
