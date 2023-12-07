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
                      _text('Sign Up', Colors.white, fontSize: 40),
                      _space(true, 10),
                      //! #welcome text
                      _text('Welcome', Colors.white, fontSize: 20),
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
                            _textField(Colors.grey[200]!, 'Fullname'),
                            //! #email
                            _textField(Colors.grey[200]!, 'Email'),
                            //! #phone
                            _textField(Colors.grey[200]!, 'Phome'),
                            //! #password
                            _textField(Colors.grey[200]!, 'Password'),
                          ]),
                        ),
                        _space(true, 30),
                        Container(
                            margin: const EdgeInsets.symmetric(horizontal: 50),
                            child:
                                // #signup textButton
                                _textButton(
                                    title: 'Sign Up',
                                    buttonColor: Colors.grey,
                                    textColor: Colors.white,
                                    fontSize: 20)),
                        _space(true, 30),
                        _text('Sign Up with SNS', Colors.grey,
                            fontWeight: FontWeight.bold),
                        _space(true, 30),
                        Row(
                          children: [
                            Expanded(
                                // #facebook textButton
                                child: _textButton(
                              title: 'Facebook',
                              buttonColor: Colors.blue,
                              textColor: Colors.white,
                              fontSize: 15,
                            )),
                            _space(false, 10),
                            Expanded(
                                // #google textButton
                                child: _textButton(
                                    title: 'Google',
                                    buttonColor: Colors.red,
                                    textColor: Colors.white,
                                    fontSize: 15)),
                            _space(false, 10),
                            Expanded(
                                // #apple textButton
                                child: _textButton(
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

// text widget
Widget _text(String title, Color color,
    {double? fontSize, FontWeight? fontWeight}) {
  return Text(
    title,
    style: TextStyle(fontSize: fontSize, color: color, fontWeight: fontWeight),
  );
}

// widget for putting space
Widget _space(side, double size) {
  // if side is true => height
  if (side) {
    // if side is false => width
    return SizedBox(
      height: size,
    );
  }
  return SizedBox(
    width: size,
  );
}

// textField widget
Widget _textField(Color color, String hintTexts) {
  return Container(
    padding: EdgeInsets.all(10),
    decoration: BoxDecoration(border: Border(bottom: BorderSide(color: color))),
    child: TextField(
      decoration:
          InputDecoration(hintText: hintTexts, border: InputBorder.none),
    ),
  );
}

// textButton widget
Widget _textButton(
    {required String title,
    required Color buttonColor,
    required Color textColor,
    double? fontSize = 15,
    FontWeight? fontWeight}) {
  return Container(
    width: double.infinity,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(50),
      color: buttonColor,
    ),
    child: TextButton(
      onPressed: () {},
      child: Text(
        title,
        style: TextStyle(
            fontSize: fontSize, color: textColor, fontWeight: fontWeight),
      ),
    ),
  );
}
