import 'package:fifth_module_project/widgets/register_page_widgets.dart';
import 'package:fifth_module_project/widgets/widgets.dart';
import 'package:flutter/material.dart';

class FacebookPage extends StatefulWidget {
  const FacebookPage({super.key});

  @override
  State<StatefulWidget> createState() => _FacebookPageState();
}

class _FacebookPageState extends State<FacebookPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        title: text('facebook', Colors.blue,
            fontSize: 25, fontWeight: FontWeight.bold),
        actions: [
          icons(Icons.search, color: Colors.grey, size: 30),
          space(false, 15),
          icons(Icons.camera_alt, color: Colors.grey, size: 30),
          space(false, 15),
        ],
      ),
      body: ListView(
        children: [
          //! searchplace
          Container(
            padding: const EdgeInsets.all(10),
            color: Colors.black,
            child: Column(
              children: [
                Row(
                  children: [
                    avatar(
                        avaImage: "assets/images/facebook_images/user_5.jpeg"),
                    space(false, 10),
                    Expanded(
                        child: Container(
                      padding: const EdgeInsets.only(left: 15, top: 5),
                      height: 60,
                      decoration: BoxDecoration(
                        border: Border.all(width: 1.5, color: Colors.grey),
                        borderRadius: const BorderRadius.horizontal(
                            left: Radius.circular(50),
                            right: Radius.circular(50)),
                        color: Colors.black,
                      ),
                      child: const TextField(
                        decoration: InputDecoration(
                            hintText: "What's on your mind?",
                            hintStyle:
                                TextStyle(color: Colors.grey, fontSize: 20),
                            border: InputBorder.none),
                      ),
                    )),
                  ],
                ),
                space(true, 10),
                Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        // crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          icons(Icons.video_call, color: Colors.red),
                          space(false, 10),
                          text('Live', Colors.grey)
                        ],
                      ),
                    ),
                    Container(
                      height: 40,
                      width: 2,
                      color: Colors.grey,
                    ),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        // crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          icons(Icons.photo, color: Colors.green),
                          space(false, 10),
                          text('Photo', Colors.grey)
                        ],
                      ),
                    ),
                    Container(
                      height: 40,
                      width: 2,
                      color: Colors.grey,
                    ),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        // crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          icons(Icons.location_on, color: Colors.red),
                          space(false, 10),
                          text('Location', Colors.grey)
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          space(true, 10),
          Container(
            color: Colors.black,
            padding: const EdgeInsets.all(20),
            height: 250,
            child: ListView(scrollDirection: Axis.horizontal, children: [
              stories(
                  avaImage: "assets/images/facebook_images/user_5.jpeg",
                  bcgImage: "assets/images/facebook_images/story_5.jpeg",
                  userName: "User Five"),
              stories(
                  avaImage: "assets/images/facebook_images/user_4.jpeg",
                  bcgImage: "assets/images/facebook_images/story_4.jpeg",
                  userName: "User Four"),
              stories(
                  avaImage: "assets/images/facebook_images/user_3.jpeg",
                  bcgImage: "assets/images/facebook_images/story_3.jpeg",
                  userName: "User Three"),
              stories(
                  avaImage: "assets/images/facebook_images/user_2.jpeg",
                  bcgImage: "assets/images/facebook_images/story_2.jpeg",
                  userName: "User Two"),
              stories(
                  avaImage: "assets/images/facebook_images/user_1.jpeg",
                  bcgImage: "assets/images/facebook_images/story_1.jpeg",
                  userName: "User Two"),
            ]),
          ),
          space(true, 10),
          //! post
          Container(
            padding: EdgeInsets.all(20),
            color: Colors.black,
            // height: 200,
            child: Column(
              children: [
                //! app
                ListTile(
                  hoverColor: Colors.white,
                  // contentPadding: EdgeInsets.zero,
                  title: text('User', Colors.white, fontSize: 20),
                  subtitle: text('1hr ago', Colors.white),
                  leading: avatar(
                      avaImage: "assets/images/facebook_images/user_3.jpeg"),
                  trailing: icons(Icons.more_horiz, color: Colors.white),
                ),
                //! content text
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: text(
                      'All the Lorem Ipsum generators on the Internet tend to repeat predefined.',
                      Colors.white),
                ),
                space(true, 15),
                //! content image
                Container(
                  child: Row(
                    children: [
                      Expanded(
                        child: Image.asset(
                          "assets/images/facebook_images/story_1.jpeg",
                          // height: 150,
                          // fit: BoxFit.cover,
                        ),
                      ),
                      Expanded(
                        child: Image.asset(
                          "assets/images/facebook_images/story_2.jpeg",
                          // height: 150,
                          // fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                ),

                //! like comment love share
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        children: [
                          //! make like
                          Container(
                            height: 35,
                            width: 35,
                            decoration: BoxDecoration(
                              color: Colors.blue,
                              shape: BoxShape.circle,
                              border: Border.all(width: 1, color: Colors.white),
                            ),
                            child: IconButton(
                              // padding: EdgeInsets.zero,
                              icon: icons(Icons.thumb_up,
                                  color: Colors.white, size: 18),
                              onPressed: () {},
                            ),
                          ),
                          Transform.translate(
                            offset: const Offset(-6, 0),
                            child: Container(
                              height: 35,
                              width: 35,
                              decoration: BoxDecoration(
                                  border:
                                      Border.all(width: 1, color: Colors.white),
                                  color: Colors.red,
                                  shape: BoxShape.circle),
                              child: IconButton(
                                  onPressed: () {},
                                  icon: icons(Icons.favorite,
                                      color: Colors.white, size: 18)),
                            ),
                          )
                        ],
                      ),
                      //! num of likes
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: text('2.5k', Colors.grey, fontSize: 17),
                      ),

                      //! comments
                      Container(
                        // padding: const EdgeInsets.only(left: 140),
                        child: text('400 comments', Colors.grey),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget avatar({required String avaImage, double? height, double? width}) {
    return Container(
      padding: const EdgeInsets.all(1),
      height: height ?? 60,
      width: width ?? 60,
      decoration: BoxDecoration(
          border: Border.all(width: 1, color: Colors.blue),
          shape: BoxShape.circle,
          color: Colors.white,
          image:
              DecorationImage(image: AssetImage(avaImage), fit: BoxFit.cover)),
    );
  }

  Widget stories(
      {required String avaImage,
      required String bcgImage,
      required String userName}) {
    return Container(
      margin: const EdgeInsets.only(right: 15),
      width: 150,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: Colors.amber,
          image:
              DecorationImage(image: AssetImage(bcgImage), fit: BoxFit.cover)),
      child: Container(
        padding: const EdgeInsets.only(top: 10, bottom: 10, left: 20),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            gradient: const LinearGradient(
                begin: Alignment.bottomRight,
                colors: [Colors.black38, Colors.black26])),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            avatar(avaImage: avaImage, height: 40, width: 40),
            text(userName, Colors.white, fontSize: 17)
          ],
        ),
      ),
    );
  }

  Widget makePost() {
    return Container();
  }
}
