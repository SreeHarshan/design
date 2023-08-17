import 'package:flutter/material.dart';

import 'ad_page.dart';
import 'discover.dart';
import 'List.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _home createState() => _home();
}

// ignore: camel_case_types
class _home extends State<Home> {
  int _selectedidx = 0;

  void _ontapped(int idx) {
    setState(() {
      _selectedidx = idx;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Discover(),
          Container(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  const Text(
                    "Search Nearby",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  GestureDetector(
                      child: const Text(
                    "See all >",
                    style: TextStyle(color: Colors.blue),
                  ))
                ],
              )),
          const Expanded(
            child: ListVw(),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Discover',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_outline),
            label: 'Saved',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            label: 'Messages',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        selectedItemColor: Colors.blueAccent,
        unselectedItemColor: Colors.grey,
        currentIndex: _selectedidx,
        onTap: _ontapped,
        showUnselectedLabels: true,
        selectedFontSize: 12.0,
        unselectedFontSize: 12.0,
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(top: 50.0),
        child: FittedBox(
          child: Stack(
            alignment: const Alignment(1, -0.9),
            children: [
              FloatingActionButton(
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Ad()));
                },
                backgroundColor: Colors.white,
                child: const Icon(Icons.notifications_active_outlined,
                    color: Colors.grey),
              ),
              Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        spreadRadius: 1,
                        blurRadius: 5,
                        color: Colors.black.withAlpha(50))
                  ],
                  borderRadius: BorderRadius.circular(16),
                  color: Colors.blue,
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
    );
  }
}
