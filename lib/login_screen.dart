import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:gdsc_task/main.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            ClipPath(
              clipper: WaveClipperTwo(),
              child: Container(
                child: Container(
                  height: MediaQuery.of(context).size.height / 4.3,
                  color: Colors.deepPurple,
                  child: const Center(
                    child: Text('Register',
                        style: TextStyle(color: Colors.white, fontSize: 28)),
                  ),
                ),
              ),
            ),
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.grey[200],
                          prefixIcon: const Icon(Icons.mail_outline_rounded,
                              color: Colors.deepPurple),
                          hintText: 'Email',
                          hintStyle: const TextStyle(color: Colors.deepPurple),
                          border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(8))),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.grey[200],
                          prefixIcon: const Icon(Icons.person_2_outlined,
                              color: Colors.deepPurple),
                          hintText: 'Full Name',
                          hintStyle: const TextStyle(color: Colors.deepPurple),
                          border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(8))),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.grey[200],
                          prefixIcon:
                              const Icon(Icons.phone, color: Colors.deepPurple),
                          hintText: 'Phone Number',
                          hintStyle: const TextStyle(color: Colors.deepPurple),
                          border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(8))),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.grey[200],
                          suffixIcon: const Icon(Icons.remove_red_eye_rounded),
                          prefixIcon: const Icon(Icons.lock_outline_rounded,
                              color: Colors.deepPurple),
                          hintText: 'Password',
                          hintStyle: const TextStyle(color: Colors.deepPurple),
                          border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(8))),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.grey[200],
                          suffixIcon: const Icon(Icons.remove_red_eye_rounded),
                          prefixIcon: const Icon(Icons.vpn_key_outlined,
                              color: Colors.deepPurple),
                          hintText: 'Confirm Password',
                          hintStyle: const TextStyle(color: Colors.deepPurple),
                          border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(8))),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: const Text('Register',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold)),
                        style: ButtonStyle(
                            padding: MaterialStateProperty.all(
                                const EdgeInsets.all(25)),
                            backgroundColor:
                                MaterialStateProperty.all(Colors.deepPurple)),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return MyHomePage();
                          }));
                        },
                        child: const Text(
                          'Login',
                          style: TextStyle(
                              color: Colors.deepPurple,
                              fontWeight: FontWeight.bold),
                        ),
                        style: ButtonStyle(
                            side: MaterialStateProperty.all(
                                const BorderSide(color: Colors.deepPurple)),
                            padding: MaterialStateProperty.all(
                                const EdgeInsets.all(25)),
                            backgroundColor:
                                MaterialStateProperty.all(Colors.white)),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
