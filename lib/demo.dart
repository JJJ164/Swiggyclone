import 'package:flutter/material.dart';
import 'package:swiggy/home.dart';

class DemoPage extends StatefulWidget {
  const DemoPage({super.key});

  @override
  State<DemoPage> createState() => _DemoPageState();
}

class _DemoPageState extends State<DemoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: 360,
              height: 360,
              color: Colors.red,
              child: Column(
                children: [
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    children: [
                      const SizedBox(
                        width: 150,
                      ),
                      InkWell(
                        child: const CircleAvatar(
                          radius: 30,
                          backgroundColor: Colors.amber,
                        ),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const HomePage()));
                        },
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 60,
                  ),
                  Row(
                    children: const [
                      SizedBox(
                        width: 30,
                      ),
                      CircleAvatar(
                        radius: 30,
                        backgroundColor: Colors.amber,
                      ),
                      SizedBox(
                        width: 60,
                      ),
                      CircleAvatar(
                        radius: 30,
                        backgroundColor: Colors.amber,
                      ),
                      SizedBox(
                        width: 60,
                      ),
                      CircleAvatar(
                        radius: 30,
                        backgroundColor: Colors.amber,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 60,
                  ),
                  Row(
                    children: const [
                      SizedBox(
                        width: 150,
                      ),
                      CircleAvatar(
                        radius: 30,
                        backgroundColor: Colors.amber,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 9,
            ),
            SizedBox(
              height: 60,
              width: 300,
              child: MaterialButton(
                  color: Colors.red,
                  child: const Text(
                    "Sign Up",
                    style: TextStyle(color: Colors.blue),
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const HomePage()));
                  }),
            ),
            SizedBox(
              height: 500,
              child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  physics: const AlwaysScrollableScrollPhysics(),
                  itemCount: 100,
                  itemBuilder: (BuildContext context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 18,
                        width: 20,
                        color: Colors.green,
                        child: Padding(
                          padding: const EdgeInsets.all(.0),
                          child: Center(child: Text("Ssi".toString())),
                        ),
                      ),
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
