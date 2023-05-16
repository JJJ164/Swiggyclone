import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:swiggy/bloc/regbloc.dart';
import 'package:swiggy/dropdown.dart';
import 'package:swiggy/Login.dart';

String jd = "";
const List<String> list = <String>[
  'Kasaragod',
  'Kannur',
  'Wayanad',
  'Kozhikode',
  'Malappuram',
  'Palakkad',
  'Thrissur',
  'Ernakulam',
  'Idukki',
  'Kottayam',
  'Alappuzha',
  'Pathanamthitta',
  'Kollam',
  'Thiruvananthapuram',
];

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController usernamecontroller = TextEditingController();
  final TextEditingController passwordcontroller = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  String value = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      appBar: AppBar(title: const Text('Register')),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 52,
              ),
              const SizedBox(
                height: 88,
                width: 6,
              ),
              const Text(
                "PROFILE",
                style: TextStyle(
                    color: Color.fromARGB(255, 187, 26, 26), fontSize: 32),
                textAlign: TextAlign.left,
              ),
              Form(
                key: _formKey,
                child: Column(children: [
                  SizedBox(
                    height: 40,
                    width: 154,
                    child: TextFormField(
                      // controller: usernamecontroller,
                      decoration: const InputDecoration(hintText: "Name"),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please enter valid date';
                        }
                        ////
                        return null;
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    height: 40,
                    width: 154,
                    child: TextFormField(
                      // controller: usernamecontroller,
                      decoration:
                          const InputDecoration(hintText: "Restaurant Name"),
                    ),
                  ),

                  const SizedBox(
                    height: 20,
                  ),
                  const SizedBox(
                    height: 40,
                    width: 154,
                    child: DropdownButtons(),
                  ),
                  SizedBox(
                    height: 40,
                    width: 154,
                    child: TextFormField(
                      // controller: usernamecontroller,
                      decoration: const InputDecoration(hintText: "State"),
                    ),
                  ),
                  // const SizedBox(
                  //   height: 20,
                  // ),
                  SizedBox(
                    height: 40,
                    width: 154,
                    child: TextFormField(
                      // controller: passwordcontroller,
                      decoration: const InputDecoration(hintText: "Password"),
                    ),
                  ),
                  SizedBox(
                    height: 40,
                    width: 154,
                    child: TextFormField(
                      onChanged: (text) {
                        value = text;
                      },
                      decoration:
                          const InputDecoration(hintText: "Re-Password"),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                      height: 30,
                      width: 150,
                      child: MaterialButton(
                        onPressed: () {
                          BlocProvider.of<RegBloc>(context).add(VerifyPassword(
                            name: dropdownValue,
                          ));
                        },
                        color: Colors.red,
                        child: BlocConsumer<RegBloc, RegStates>(
                            builder: (context, state) {
                          if (state is Loading) {
                            return const CircularProgressIndicator();
                          }
                          return const Text(
                            "Register",
                            style: TextStyle(color: Colors.blue),
                          );
                        }, listener: (context, state) {
                          if (state is RegSuccess) {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const LoginPage()));
                          } else {
                            Fluttertoast.showToast(msg: "Invalid District ");
                          }
                        }),
                      ))
                ]),
              )
            ],
          ),
        ),
      ),
    );
  }
}
