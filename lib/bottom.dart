import 'package:flutter/material.dart';

class Bottonsheet extends StatelessWidget {
  final List Namess = ['Home', 'Discover', 'Profile'];
  List<IconData> Iconss = [
    Icons.home_max_outlined,
    Icons.explore,
    Icons.account_circle_outlined
  ];
  Bottonsheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width,
        child: ListView.builder(
            itemCount: Namess.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: ((context, index) {
              return Column(
                children: [Icon(Iconss[index]), Text(Namess[index])],
              );
            })));
  }
}
