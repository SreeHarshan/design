import 'package:flutter/material.dart';

class Ad extends StatefulWidget {
  const Ad({super.key});

  @override
  ad createState() => ad();
}

class ad extends State<Ad> {
  List<String> paths = ["ad.png", "ad.png", "ad.png"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 137, 166, 186),
        body: Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(15)),
              color: Colors.white,
            ),
            child: Column(children: [
              _buildCarousel(context),
              Expanded(
                  child: Container(
                      margin: const EdgeInsets.symmetric(horizontal: 30),
                      child: Column(
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          const Text(
                            "Simplify your life",
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(height: 20),
                          const Text(
                              "Browse through thousands of properties and make offers on-the-go, all from your phone"),
                          const Spacer(flex: 1),
                          GestureDetector(
                            child: Container(
                              height: 50,
                              decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: const Center(
                                child: Text(
                                  "Continue",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ),
                            onTap: () {
                              Navigator.pop(context);
                            },
                          ),
                          GestureDetector(
                            child: Container(
                              height: 50,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: const Center(
                                child: Text("Skip"),
                              ),
                            ),
                            onTap: () {
                              Navigator.pop(context);
                            },
                          ),
                          const Spacer(flex: 2),
                        ],
                      ))),
            ])));
  }

  Widget _buildCarousel(BuildContext context) {
    return Expanded(
      child: PageView.builder(
        itemCount: 3,
        controller: PageController(viewportFraction: 0.8),
        itemBuilder: (BuildContext context, int itemIndex) {
          return Image.asset(paths[itemIndex], fit: BoxFit.fitWidth);
        },
        pageSnapping: true,
      ),
    );
  }
}
