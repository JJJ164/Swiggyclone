// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:swiggy/demo.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 60,
        leading: Row(children: const [
          Text("Other"),
          Icon(Icons.arrow_drop_down),
        ]),
        actions: const [Icon(Icons.local_offer), Text("offer")],
      ),
      drawer: const Drawer(),
      // body: Center(
      //   child: Text(
      //       "WE ARE NOW DELIVERING FOOD\nGROCERIES AND OTHER ESSENTIALS\nfood & genie service (mon-sat)-6:00am to 9:00"),
      // ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 20,
                  height: 20,
                ),
                Container(
                  color: Colors.red,
                  width: 4,
                  height: 150,
                ),
                const SizedBox(
                  width: 10,
                ),
                Column(children: const [
                  Text(
                    "WE ARE NOW DELIVERING FOOD\nGROCERIES AND OTHER ESSENTIALS\n",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "food & genie service (mon-sat)-6:00am to\n9:00pm. Groceries & Meat (Mon-Sat)-6:00 am to\n6:00pm. Dairy (Mon-Sat)-6:00 am to 6:00pm\nSun)-6:00 am to 12:00 pm ",
                    textAlign: TextAlign.center,
                  ),
                ])
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Column(
              children: [
                Container(
                    height: 150,
                    width: 350,
                    color: Colors.red,
                    child: Row(
                      children: [
                        Column(
                          children: [
                            const SizedBox(height: 10),
                            const Text(
                              "RESTAURANTS",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 17),
                              textAlign: TextAlign.left,
                            ),
                            const Text(
                              "No Contact Delivery Available",
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(
                              height: 70,
                            ),
                            InkWell(
                              child: Row(children: const [
                                Text("view all"),
                                Icon(Icons.arrow_right),
                              ]),
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: ((context) =>
                                            const DemoPage())));
                              },
                            )
                          ],
                        ),
                        const SizedBox(
                          width: 30,
                        ),
                        const CircleAvatar(
                          radius: 50,
                          backgroundImage: AssetImage('assets/download1.jpeg'),
                        ),
                      ],
                    )),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Row(children: [
              const SizedBox(
                width: 20,
              ),
              Container(
                height: 20,
                width: 90,
                color: Colors.red,
                child: const Text("genie"),
              ),
              const SizedBox(
                width: 20,
              ),
              Container(
                height: 20,
                width: 90,
                color: Colors.red,
                child: const Text("grocery"),
              ),
              const SizedBox(
                width: 20,
              ),
              Container(
                height: 20,
                width: 90,
                color: Colors.red,
                child: const Text("meat"),
              ),
            ]),
            Row(children: [
              const SizedBox(
                width: 20,
              ),
              Container(
                height: 90,
                width: 90,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/download2.jpeg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              // children: [Image.asset("assets/download2.jpeg")])),
              const SizedBox(
                width: 20,
              ),
              Container(
                height: 90,
                width: 90,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/download3.jpeg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Container(
                height: 90,
                width: 90,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/download4.jpeg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ]),
            Row(children: [
              const SizedBox(
                width: 20,
              ),
              Container(
                height: 40,
                width: 90,
                child: const Text(
                  "anything you need,\ndelivered",
                  style: TextStyle(fontSize: 10),
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Container(
                height: 40,
                width: 90,
                child: const Text(
                  "essentials delivered,\nin 2 hours",
                  style: TextStyle(fontSize: 10),
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Container(
                height: 40,
                width: 90,
                child: const Text(
                  "fresh meat,\ndelivered safe",
                  style: TextStyle(fontSize: 10),
                ),
              ),
            ]),

            // Stack(
            //   children: [
            //     Container(
            //       height: 100,
            //       width: 330,
            //       color: Colors.red,
            //     ),
            //     Container()
            //   ],
            // )
            //  Stack(
            //   children: [
            //     Container(
            //       height: 150,
            //       width: 300,
            //       color: Colors.amber,
            //     ),
            //     Positioned(
            //       bottom: 100,
            //       child: Container(
            //         height: 120,
            //         width: 200,
            //         color: Colors.black,
            //       ),
            //     ),
            //     const Positioned(
            //         right: 10,
            //         top: 25,
            //         child: CircleAvatar(
            //           backgroundColor: Colors.blue,
            //           radius: 50,
            //         ))
            //   ],
            // )
            Row(
              children: const [Icon(Icons.thumb_up), Text('Top Picks For You')],
            ),
            Container(
              margin: const EdgeInsets.symmetric(
                vertical: 25.0,
              ),
              height: 125.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  for (var i = 0; i < 10; i++)
                    Stack(
                      children: [
                        Container(
                          width: 120.0,
                          height: 140,
                        ),
                        Positioned(
                          left: 10,
                          child: Container(
                            height: 90,
                            width: 120,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/download4.jpeg'),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                            top: 90,
                            left: 50,
                            child: Container(
                              height: 20,
                              child: const Text('noodle'),
                            )),
                      ],
                    ),
                ],
              ),
            ),

            Container(
              height: 200,
              width: 400,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/download4.jpeg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              height: 10,
              width: MediaQuery.of(context).size.height / 1,
              color: Colors.grey,
            ),

            SizedBox(
              height: 200,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  physics: const AlwaysScrollableScrollPhysics(),
                  itemCount: 10,
                  itemBuilder: (BuildContext context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Stack(
                        children: [
                          Container(
                            width: 120,
                            height: 140,
                          ),
                          const Positioned(
                              child: CircleAvatar(
                            radius: 60,
                            backgroundImage:
                                AssetImage('assets/download4.jpeg'),
                          )),
                          const Positioned(
                              top: 130,
                              left: 48,
                              child: Center(
                                child: Text('food'),
                              ))
                        ],
                      ),
                    );
                  }),
            ),
            Container(
              height: 10,
              width: MediaQuery.of(context).size.height / 1,
              color: Colors.grey,
            ),
            Row(
              children: const [
                Icon(Icons.shopping_basket),
                Text('In The Spotlight!'),
              ],
            ),
            SizedBox(
              height: 200,
              child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  physics: const AlwaysScrollableScrollPhysics(),
                  itemCount: 10,
                  itemBuilder: (BuildContext context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Stack(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.height / 1,
                            height: 100,
                          ),
                          Positioned(
                              child: Container(
                            width: MediaQuery.of(context).size.height / 10,
                            height: MediaQuery.of(context).size.height / 10,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/download4.jpeg'),
                                fit: BoxFit.cover,
                              ),
                            ),
                          )),
                          const Positioned(
                              top: 24,
                              left: 120,
                              child: Center(
                                child: Text('shop name'),
                              ))
                        ],
                      ),
                    );
                  }),
            ),
            Container(
              height: 10,
              width: MediaQuery.of(context).size.height / 1,
              color: Colors.grey,
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'SWIGGY',
              backgroundColor: Colors.amber),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'HOME',
            backgroundColor: Colors.red,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'CART',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_box),
            label: 'ACCOUNT',
          ),
        ],
      ),
    );
  }
}
