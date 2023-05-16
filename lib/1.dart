import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:swiggy/home.dart';

class PowerPage extends StatefulWidget {
  const PowerPage({super.key});

  @override
  State<PowerPage> createState() => _PowerPageState();
}

class _PowerPageState extends State<PowerPage> {
  final TextEditingController namecontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        SizedBox(
          height: 60,
          width: 150,
          child: TextFormField(
            controller: namecontroller,
            decoration: const InputDecoration(hintText: 'your name'),
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        SizedBox(
          height: 40,
          width: 80,
          child: MaterialButton(
              color: Colors.red,
              child: const Text(
                "Sign In",
                style: TextStyle(color: Colors.blue),
              ),
              onPressed: () {
                if (namecontroller.text.isEmpty) {
                  Fluttertoast.showToast(msg: "user empty");
                } else if (namecontroller.text.contains('joju jose joseph')) {
                  Fluttertoast.showToast(msg: "password empty");
                } else {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const HomePage()));
                }
              }),
        ),
        const SizedBox(
          height: 30,
        ),
        SizedBox(
          child: ListView.builder(
              scrollDirection: Axis.vertical,
              physics: const AlwaysScrollableScrollPhysics(),
              itemCount: 10,
              itemBuilder: (BuildContext context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Stack(
                    children: [
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 12,
                        width: MediaQuery.of(context).size.width / 1,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text((index + 1).toString()),
                        ),
                      ),
                      Positioned(
                          left: MediaQuery.of(context).size.width / 3,
                          child: const CircleAvatar(
                            backgroundColor: Colors.amber,
                          )),
                      Positioned(
                          right: MediaQuery.of(context).size.width / 3,
                          child: const Text('name')),
                    ],
                  ),
                );
              }),
        ),
      ],
    ));
  }
}
