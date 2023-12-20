import 'package:fifth_module_project/animations/fade_animation.dart';
import 'package:fifth_module_project/widgets/register_page_widgets.dart';
import 'package:fifth_module_project/widgets/widgets.dart';
import 'package:flutter/material.dart';

class PartyUIPage extends StatefulWidget {
  const PartyUIPage({super.key});

  @override
  State<StatefulWidget> createState() => _PartyUIPageState();
}

class _PartyUIPageState extends State<PartyUIPage> {
  bool isLoginned = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/im_party.jpeg"),
                fit: BoxFit.cover)),
        child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(begin: Alignment.bottomCenter, colors: [
            Colors.black.withOpacity(.1),
            Colors.black.withOpacity(.2),
            Colors.black.withOpacity(.5),
          ])),
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const Spacer(),
                FadeAnimation(
                  delay: 1,
                  child: text(
                    'Find the best parties near you.',
                    Colors.yellow,
                    fontSize: 40,
                  ),
                ),
                space(true, 20),
                FadeAnimation(
                  delay: 1.5,
                  child: text(
                      "Let us find you a party for your interest", Colors.green,
                      fontSize: 25, fontWeight: FontWeight.w400),
                ),
                const Spacer(),
                const Spacer(),
                isLoginned
                    ? FadeAnimation(
                        delay: 1.8,
                        child: _button(
                            nameOfButton: 'Start', colors: Colors.yellow[900]!),
                      )
                    : FadeAnimation(
                        delay: 1.8,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                                child: _button(
                                    nameOfButton: 'Google',
                                    colors: Colors.red)),
                            Expanded(
                                child: _button(
                                    nameOfButton: 'Facebook',
                                    colors: Colors.blue))
                          ],
                        ),
                      ),
                space(true, 10)
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _button(
      {Navigator? navigation,
      required String nameOfButton,
      required Color colors}) {
    return MaterialButton(
      onPressed: () {},
      child: Container(
        height: 55,
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
              color: Colors.black.withOpacity(.4),
              offset: const Offset(1, .9),
              blurRadius: 10),
        ], color: colors, borderRadius: BorderRadius.circular(50)),
        child: Center(child: text(nameOfButton, Colors.white, fontSize: 18)),
      ),
    );
  }
}
