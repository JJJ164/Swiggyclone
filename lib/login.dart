import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:swiggy/bloc/signinbloc.dart';
import 'package:swiggy/bottomnav.dart';
import 'package:swiggy/reg.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController usernamecontroller = TextEditingController();
  final TextEditingController passwordcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFF3A3A4D),
//      appBar: AppBar(
//        backgroundColor: const Color(0xFF3A3A4D),
//        leading: const CircleAvatar(
//          backgroundImage: AssetImage('assets/hu.jpg'),
//        ),
//        title: const Text("CYBER HAWK",),
//      ),
        drawer: const Drawer(),

        // bottomNavigationBar: Container(
        //   height: 10,
        //   width: 300,
        //   color: Colors.green,
        // ),
        body: Column(children: [
          const SizedBox(
            height: 52,
          ),
          Row(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              const SizedBox(
                width: 20,
              ),
              const CircleAvatar(
                backgroundImage: AssetImage('assets/hu.jpg'),
              ),
              const SizedBox(
                width: 7,
              ),
              const Text(
                "CYBER HAWK",
                style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
              ),
            ],
          ),
          const SizedBox(
            height: 88,
            width: 6,
          ),
          const Text(
            "Login",
            style: TextStyle(
                color: Color.fromARGB(255, 255, 255, 255), fontSize: 32),
            textAlign: TextAlign.left,
          ),
          SizedBox(
            height: 40,
            width: 150,
            child: TextFormField(
              controller: usernamecontroller,
              decoration: const InputDecoration(hintText: "Name"),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 40,
            width: 150,
            child: TextFormField(
              controller: passwordcontroller,
              decoration: const InputDecoration(hintText: "Password"),
              obscureText: false,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width / 1.3,
              ),
              InkWell(
                child: const Text(
                  "register here",
                  style: TextStyle(color: Colors.white),
                ),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const RegisterPage()));
                },
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
              height: 30,
              width: 150,
              child: MaterialButton(
                onPressed: () {
                  BlocProvider.of<LoginBloc>(context).add(VerifyPassword(
                      name: usernamecontroller.text.toString(),
                      password: passwordcontroller.text.toString()));
                },
                color: Colors.red,
                child: BlocConsumer<LoginBloc, LoginStates>(
                    builder: (context, state) {
                  if (state is Loading) {
                    return const CircularProgressIndicator();
                  }
                  return const Text(
                    "Sign in",
                    style: TextStyle(color: Colors.blue),
                  );
                }, listener: (context, state) {
                  if (state is LoginSuccess) {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                const BottomNavigationBarExampleApp()));
                  } else {
                    Fluttertoast.showToast(msg: "Invalid Username ");
                    print("erroe");
                  }
                }),
              ))
        ]));
  }
}
