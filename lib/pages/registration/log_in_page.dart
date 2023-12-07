import 'package:flutter/material.dart';

class LogInPage extends StatefulWidget {
  const LogInPage({super.key});

  static const String id = "log_in_page";

  @override
  State<LogInPage> createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
          Colors.green[900]!,
          Colors.green[500]!,
          Colors.green[400]!
        ], begin: Alignment.topCenter)),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const SizedBox(
            height: 50,
          ),
          //! #login #welcome text
          const Padding(
            padding: EdgeInsets.all(25),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text('Login',
                  style: TextStyle(color: Colors.white, fontSize: 40)),
              SizedBox(
                height: 10,
              ),
              Text('Welcome Back',
                  style: TextStyle(color: Colors.white, fontSize: 20)),
            ]),
          ),
          const SizedBox(
            height: 50,
          ),
          Expanded(
              child: Container(
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50))),
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 50,
                    ),
                    //! #email #password textFields
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: const [
                            BoxShadow(
                                color: Color.fromRGBO(171, 171, 171, .7),
                                blurRadius: 20,
                                offset: Offset(0, 10)),
                          ]),
                      child: Column(
                        children: [
                          //! #email textField
                          Container(
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                border: Border(
                                    bottom:
                                        BorderSide(color: Colors.grey[200]!))),
                            child: const TextField(
                              decoration: InputDecoration(
                                  hintText: 'Email', border: InputBorder.none),
                            ),
                          ),
                          //! #password textField
                          Container(
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                border: Border(
                                    bottom: BorderSide(
                              color: Colors.grey[200]!,
                            ))),
                            child: const TextField(
                              decoration: InputDecoration(
                                  hintText: 'Password',
                                  border: InputBorder.none),
                            ),
                          )
                        ],
                      ),
                    ),

                    const SizedBox(
                      height: 50,
                    ),
                    //! #login button
                    Container(
                        width: double.infinity,
                        margin: const EdgeInsets.symmetric(horizontal: 50),
                        // color: Colors.amber,
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(50)),
                        child: TextButton(
                            onPressed: () {},
                            child: const Text(
                              'Login',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 19),
                            ))),
                    const SizedBox(
                      height: 50,
                    ),
                    //! #sns
                    const Text(
                      'Sign up with SNS',
                      style: TextStyle(
                          color: Colors.grey, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    //! #facebook, #amazon buttons
                    Row(
                      children: [
                        Expanded(
                            child: Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(50)),
                          child: TextButton(
                            onPressed: () {},
                            child: const Text(
                              'Facebook',
                              style:
                                  TextStyle(fontSize: 19, color: Colors.white),
                            ),
                          ),
                        )),
                        const SizedBox(
                          width: 10,
                        ),
                        Expanded(
                            child: Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: Colors.amber,
                              borderRadius: BorderRadius.circular(50)),
                          child: TextButton(
                            onPressed: () {},
                            child: const Text(
                              'Amazon',
                              style:
                                  TextStyle(fontSize: 19, color: Colors.black),
                            ),
                          ),
                        )),
                      ],
                    )
                  ],
                ),
              ),
            ),
          )),
        ]),
      ),
    );
  }
}
