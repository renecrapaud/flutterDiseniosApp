import 'dart:ui';

import 'package:flutter/material.dart';

class CardTable extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Table(
      children: [
        TableRow(children: [
          _SingleCard(
              color: Colors.blue, icon: Icons.border_all, text: 'General'),
          _SingleCard(
              color: Colors.pinkAccent,
              icon: Icons.car_rental,
              text: 'Transport'),
        ]),
        TableRow(children: [
          _SingleCard(color: Colors.purple, icon: Icons.shop, text: 'Shopping'),
          _SingleCard(
              color: Colors.purpleAccent,
              icon: Icons.document_scanner,
              text: 'Bill'),
        ]),
        TableRow(children: [
          _SingleCard(
              color: Colors.deepPurple,
              icon: Icons.movie,
              text: 'Entretainment'),
          _SingleCard(
              color: Colors.purpleAccent,
              icon: Icons.food_bank_outlined,
              text: 'Grocery'),
        ]),
        TableRow(children: [
          _SingleCard(
              color: Colors.blue, icon: Icons.border_all, text: 'General'),
          _SingleCard(
              color: Colors.pinkAccent,
              icon: Icons.car_rental,
              text: 'Transport'),
        ]),
      ],
    );
  }
}

class _SingleCard extends StatelessWidget {
  final IconData icon;
  final Color color;
  final String text;

  const _SingleCard(
      {super.key, required this.icon, required this.color, required this.text});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
          child: Container(
            height: 180,
            decoration: BoxDecoration(
                color: Color.fromRGBO(62, 66, 107, 0.7),
                borderRadius: BorderRadius.circular(20)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundColor: this.color,
                  child: Icon(this.icon, size: 35),
                  radius: 30,
                ),
                SizedBox(height: 10),
                Text(this.text,
                    style: TextStyle(color: this.color, fontSize: 18))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
