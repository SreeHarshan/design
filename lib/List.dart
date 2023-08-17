import 'package:flutter/material.dart';

import 'Card.dart';

class ListVw extends StatefulWidget {
  const ListVw({super.key});

  @override
  list createState() => list();
}

// ignore: camel_case_types
class list extends State<ListVw> {
  // ignore: non_constant_identifier_names
  List<CardIt> card_list = [];

  list() {
    card_list.add(CardIt(
        name: "Blue Small House",
        addr: "232 Despard Street, Atlanta, GA",
        bed: 3,
        bath: 3,
        cost: 3927,
        dist: 3.3,
        img_path: "house.jpg"));
        card_list.add(CardIt(
        name: "Blue Small House",
        addr: "1994 Charmaine Lane, Lublock ",
        bed: 3,
        bath: 3,
        cost: 4213,
        dist: 3.3,
        img_path: "house.jpg"));
        card_list.add(CardIt(
        name: "Blue Small House",
        addr: "232 Despard Street, Atlanta, GA",
        bed: 3,
        bath: 3,
        cost: 3927,
        dist: 3.3,
        img_path: "house.jpg"));
  }
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return card_list[index];
      },
      itemCount: card_list.length,
    );
  }
}
