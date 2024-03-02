import 'package:flutter/material.dart';
import 'Widget/bulletcatagory.dart';
import 'Widget/bookadv.dart';
import 'overview.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

int currentIndex = 0;

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "GDSC Bookstore",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        leading: const Icon(
          Icons.sort,
          color: Colors.black,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white60,
                    borderRadius: BorderRadius.circular(15)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                        padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                        width: MediaQuery.of(context).size.width * 0.75,
                        child: const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: TextField(
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: 'Looking for...',
                                  ),
                                ),
                              ),
                              Icon(Icons.search)
                            ])),
                    Container(
                      width: 57,
                      height: 57,
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(5)),
                      child: const Icon(
                        Icons.tune,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Card(
              shadowColor: Colors.black,
              child: Container(
                decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Color.fromARGB(255, 0, 103, 188),
                        Color.fromARGB(255, 67, 170, 255),
                      ],
                    ),
                    borderRadius: BorderRadius.circular(16.0)),
                width: MediaQuery.of(context).size.width * 0.85,
                height: 215,
                child: const Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            "December 26, 2023",
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Today a reader,",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 7,
                          ),
                          Text(
                            "Tomorrow a leader",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.bookmark,
                                size: 40,
                                color: Colors.white,
                              ),
                              Icon(
                                Icons.share,
                                size: 40,
                                color: Colors.white,
                              )
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [Text("Categories", style: TextStyle(fontSize: 25))],
              ),
            ),
            Wrap(
              children: [
                bulletCategory(Icons.biotech, "Health"),
                bulletCategory(Icons.science, "Science"),
                bulletCategory(Icons.precision_manufacturing, "Technology"),
                bulletCategory(Icons.school, "Educational"),
                bulletCategory(Icons.abc, "Fictional"),
              ],
            ),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Recommendations", style: TextStyle(fontSize: 25)),
                  Icon(Icons.arrow_forward_ios)
                ],
              ),
            ),
            SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const SizedBox(
                      width: 16,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          PageRouteBuilder(
                            pageBuilder:
                                (context, animation, secondaryAnimation) =>
                                    PageDetail(),
                            transitionsBuilder: (context, animation,
                                secondaryAnimation, child) {
                              var tween = Tween(
                                      begin: Offset(1.0, 0.0), end: Offset.zero)
                                  .chain(CurveTween(
                                      curve: Curves.fastEaseInToSlowEaseOut));

                              return SlideTransition(
                                position: animation.drive(tween),
                                child: child,
                              );
                            },
                          ),
                        );
                      },
                      child: bookAdv(
                          'assets/images/papillon.png', "Le Papillon", "5.0"),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    bookAdv(
                        'assets/images/yebedel.png', "Yebedel Menged", "4.0"),
                    const SizedBox(
                      width: 10,
                    ),
                    bookAdv('assets/images/mahlet.png', "Mahlet", "3.5"),
                    const SizedBox(
                      width: 10,
                    ),
                    bookAdv('assets/images/richdad.png', "Rich Dad Poor Dad",
                        "3.5"),
                    const SizedBox(
                      width: 16,
                    ),
                  ],
                )),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("New", style: TextStyle(fontSize: 25)),
                  Icon(Icons.arrow_forward_ios)
                ],
              ),
            ),
            SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const SizedBox(
                      width: 16,
                    ),
                    bookAdvWithoutRating(
                        'assets/images/richdad.png', "Rich Dad Poor Dad"),
                    const SizedBox(
                      width: 10,
                    ),
                    bookAdvWithoutRating('assets/images/piasa.png', "Piyasa"),
                    const SizedBox(
                      width: 10,
                    ),
                    bookAdvWithoutRating(
                        'assets/images/bornacrime.png', "Born a Crime"),
                    const SizedBox(
                      width: 10,
                    ),
                    bookAdvWithoutRating(
                        'assets/images/papillon.png', "Le Papillon"),
                    const SizedBox(
                      width: 16,
                    ),
                  ],
                )),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Trending", style: TextStyle(fontSize: 25)),
                  Icon(Icons.arrow_forward_ios)
                ],
              ),
            ),
            SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const SizedBox(
                      width: 16,
                    ),
                    bookAdv('assets/images/yetekolefe_ menged.png',
                        "Yetekolefe Menged", "5.0"),
                    const SizedBox(
                      width: 10,
                    ),
                    bookAdv(
                        'assets/images/bornacrime.png', "Born a Crime", "4.0"),
                    const SizedBox(
                      width: 10,
                    ),
                    bookAdv('assets/images/lelasew.png', "Lela Sew", "4.5"),
                    const SizedBox(
                      width: 10,
                    ),
                    bookAdv('assets/images/papillon.png', "Le Papillon", "3.5"),
                    const SizedBox(
                      width: 16,
                    ),
                  ],
                )),
            const SizedBox(
              height: 16,
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (int currentIndex) {},
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.web_rounded, color: Colors.black), label: ''),
          BottomNavigationBarItem(
              icon: Icon(Icons.auto_stories_rounded, color: Colors.black),
              label: ''),
          BottomNavigationBarItem(
              icon: Icon(Icons.home_rounded, color: Colors.black), label: ''),
          BottomNavigationBarItem(
              icon: Icon(Icons.library_books_rounded, color: Colors.black),
              label: ''),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_rounded, color: Colors.black), label: ''),
        ],
      ),
    );
  }
}