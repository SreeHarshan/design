import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class CardIt extends StatefulWidget {
  final String name, addr;
  final int bed, bath;
  final double dist;
  late String cost;
  // ignore: non_constant_identifier_names
  final String img_path;
  CardIt(
      {super.key,
      required this.name,
      required this.addr,
      required this.bed,
      required this.bath,
      required int cost,
      required this.dist,
      // ignore: non_constant_identifier_names
      required this.img_path}) {
    var formatter = NumberFormat('#,##,000');
    this.cost = formatter.format(cost);
  }

  @override
  card createState() => card();
}

class card extends State<CardIt> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {},
        child: Card(
            child: Row(
          children: [
            Image.asset(
              widget.img_path,
              width: 100,
              height: 150,
            ),
            Container(
              padding: const EdgeInsets.only(left: 15),
              child: Expanded(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    widget.name,
                    style: const TextStyle(
                        fontSize: 17, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 7,
                  ),
                  Row(
                    children: [
                      const Icon(Icons.bedroom_baby_outlined),
                      Text(widget.bed.toString()),
                      const SizedBox(
                        width: 5,
                      ),
                      const Icon(Icons.bathroom_outlined),
                      Text(widget.bath.toString()),
                      const SizedBox(
                        width: 5,
                      ),
                      const Icon(Icons.location_on_outlined),
                      Text("${widget.dist}KM"),
                    ],
                  ),
                  const SizedBox(
                    height: 7,
                  ),
                  Text(widget.addr),
                  const SizedBox(
                    height: 7,
                  ),
                  Text(
                    "\$${widget.cost}",
                    style: const TextStyle(
                        color: Colors.blue,
                        fontSize: 17,
                        fontWeight: FontWeight.bold),
                  )
                ],
              )),
            )
          ],
        )));
  }
}
