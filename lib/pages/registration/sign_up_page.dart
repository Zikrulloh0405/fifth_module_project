import 'package:fifth_module_project/widgets/register_page_widgets.dart';
import 'package:fifth_module_project/widgets/widgets.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  static const String id = "sign_up_page";

  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
          Colors.black87,
          Colors.black12,
        ], begin: Alignment.topCenter)),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.end,
          // crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            const SizedBox(
              height: 50,
            ),

            //! #signup #welcome text
            // ignore: sized_box_for_whitespace
            Container(
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.all(40),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      //! #signup text
                      text('Sign Up', Colors.white, fontSize: 40),
                      space(true, 10),
                      //! #welcome text
                      text('Welcome', Colors.white, fontSize: 20),
                    ],
                  ),
                )),
            Expanded(
              child: Container(
                  width: double.infinity,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(50),
                          topRight: Radius.circular(50))),
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.all(40),
                      child: Column(children: [
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: const [
                                BoxShadow(
                                    color: Color.fromRGBO(171, 171, 171, .7),
                                    blurRadius: 20,
                                    offset: Offset(0, 10)),
                              ]),
                          child: Column(children: [
                            //! #fullname
                            textField(Colors.grey[200]!, 'Fullname'),
                            //! #email
                            textField(Colors.grey[200]!, 'Email'),
                            //! #phone
                            textField(Colors.grey[200]!, 'Phome'),
                            //! #password
                            textField(Colors.grey[200]!, 'Password'),
                          ]),
                        ),
                        space(true, 30),
                        Container(
                            margin: const EdgeInsets.symmetric(horizontal: 50),
                            child:
                                // #signup textButton
                                textButton(
                                    title: 'Sign Up',
                                    buttonColor: Colors.grey,
                                    textColor: Colors.white,
                                    fontSize: 20)),
                        space(true, 30),
                        text('Sign Up with SNS', Colors.grey,
                            fontWeight: FontWeight.bold),
                        space(true, 30),
                        Row(
                          children: [
                            Expanded(
                                // #facebook textButton
                                child: textButton(
                              title: 'Facebook',
                              buttonColor: Colors.blue,
                              textColor: Colors.white,
                              fontSize: 15,
                            )),
                            space(false, 10),
                            Expanded(
                                // #google textButton
                                child: textButton(
                                    title: 'Google',
                                    buttonColor: Colors.red,
                                    textColor: Colors.white,
                                    fontSize: 15)),
                            space(false, 10),
                            Expanded(
                                // #apple textButton
                                child: textButton(
                                    title: 'Apple',
                                    buttonColor: Colors.black,
                                    textColor: Colors.white,
                                    fontSize: 15)),
                          ],
                        )
                      ]),
                    ),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
