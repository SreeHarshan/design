import 'package:flutter/material.dart';

class Discover extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("bg.jpg"),
          fit: BoxFit.cover,
        ),
      ),
      padding: const EdgeInsets.only(top: 45.0, left: 20.0, right: 20.0),
      height: 450,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          const Text(
            "Discover",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 15.0,
          ),
          const Text("Find best property on your location"),
          const Spacer(flex: 2),
          TextField(
            decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                hintText: "Street,Address,City...",
                prefixIcon: const Icon(Icons.location_on_outlined)),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 20),
            child: Row(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.only(right: 10),
                    child: TextField(
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)),
                          hintText: "House Type",
                          prefixIcon: const Icon(Icons.apartment_outlined)),
                    ),
                  ),
                ),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)),
                        hintText: "Price Range",
                        prefixIcon: const Icon(Icons.monetization_on_outlined)),
                  ),
                )
              ],
            ),
          ),
          GestureDetector(
            child: Container(
              height: 50,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Center(
                child: Text("Find"),
              ),
            ),
          ),
          const Spacer()
        ],
      ),
    );
  }
}
