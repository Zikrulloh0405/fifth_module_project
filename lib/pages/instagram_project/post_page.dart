import 'package:fifth_module_project/pages/instagram_project/models/posts_model.dart';
import 'package:fifth_module_project/pages/instagram_project/models/stories_model.dart';
import 'package:fifth_module_project/widgets/register_page_widgets.dart';
import 'package:fifth_module_project/widgets/widgets.dart';
import 'package:flutter/material.dart';

class StoryPage extends StatefulWidget {
  const StoryPage({super.key});

  static const String id = "story_page";

  @override
  State<StoryPage> createState() => _StoryPageState();
}

class _StoryPageState extends State<StoryPage> {
  final List<Story> _stories = [
    Story("assets/images/instagram_images/user_1.jpeg", "Jazmin"),
    Story("assets/images/instagram_images/user_2.jpeg", "Sylvester"),
    Story("assets/images/instagram_images/user_3.jpeg", "Lavina"),
    Story("assets/images/instagram_images/user_1.jpeg", "Jazmin"),
    Story("assets/images/instagram_images/user_2.jpeg", "Sylvester"),
    Story("assets/images/instagram_images/user_3.jpeg", "Lavina"),
  ];

  final List<Post> _posts = [
    Post(
        userName: "Brianne",
        userImage: "assets/images/instagram_images/user_1.jpeg",
        userPost: "assets/images/instagram_images/feed_1.jpeg",
        userCaption: "Consequatur nihil aliquid omnis consequatur."),
    Post(
        userName: "Henri",
        userImage: "assets/images/instagram_images/user_2.jpeg",
        userPost: "assets/images/instagram_images/feed_2.jpeg",
        userCaption: "Consequatur nihil aliquid omnis consequatur."),
    Post(
        userName: "Mariano",
        userImage: "assets/images/instagram_images/user_3.jpeg",
        userPost: "assets/images/instagram_images/feed_3.jpeg",
        userCaption: "Consequatur nihil aliquid omnis consequatur."),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            // Divider(),
            //! story watch all stories text
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  text('Stories', Colors.white, fontSize: 18),
                  text('Watch All', Colors.white, fontSize: 18),
                ],
              ),
            ),

            //! storiesPart
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              width: MediaQuery.of(context).size.width,
              height: 110,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: _stories
                    .map((story) => _itemOfStory(story: story))
                    .toList(),
              ),
            ),
            space(true, 10),
            //! posts part
            Container(
              width: MediaQuery.of(context).size.width,
              child: ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: _posts.length,
                  itemBuilder: (context, i) => _itemOfPost(post: _posts[i])),
            ),
          ],
        ),
      ),
    );
  }

  Widget _itemOfStory({required Story story}) {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 10,
      ),
      child: Column(
        children: [
          //! strory
          Container(
            // padding: EdgeInsets.all(1),
            decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(70),
                border: Border.all(width: 3, color: Colors.purple)),
            // height: 70,
            // width: 70,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(70),
              child: Image(
                image: AssetImage(story.image),
                width: 70,
                height: 70,
                fit: BoxFit.cover,
              ),
            ),
          ),
          space(true, 10),
          //! userName
          Container(
            child: text(story.name, Colors.white),
          )
        ],
      ),
    );
  }

  Widget _itemOfPost({required Post post}) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //! appOfPost
          ListTile(
            title: text(post.userName, Colors.white),
            leading: ClipRRect(
              borderRadius: BorderRadius.circular(40),
              child: Image.asset(
                post.userImage,
                width: 40,
                height: 40,
                fit: BoxFit.cover,
              ),
            ),
            trailing:
                icons(Icons.more_horiz, color: Colors.white, size: 29),
          ),

          //! post Image
          FadeInImage(
            placeholder:
            const AssetImage("assets/images/instagram_images/placeholder.png"),
            image: AssetImage(post.userPost),
            width: MediaQuery.of(context).size.width,
          ),

          //! post icons
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              //! three icons
              Row(
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: icons(Icons.favorite_outline,
                          color: Colors.white, size: 29)),
                  IconButton(
                      onPressed: () {},
                      icon: icons(Icons.chat_sharp,
                          color: Colors.white, size: 29)),
                  IconButton(
                      onPressed: () {},
                      icon: icons(Icons.send_outlined,
                          color: Colors.white, size: 29)),
                ],
              ),

              //! save icon
              IconButton(
                onPressed: () {},
                icon: icons(Icons.save, color: Colors.white),
              ),
            ],
          ),

          //!text part
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //! liked by text
                RichText(
                    softWrap: true,
                    overflow: TextOverflow.visible,
                    text: const TextSpan(children: [
                      TextSpan(
                          text: 'Liked By ',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w400)),
                      TextSpan(
                          text: ' Sigmund',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold)),
                      TextSpan(
                          text: ' Yessenia',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold)),
                      TextSpan(
                          text: ' Dayana',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold)),
                      TextSpan(
                          text: ' and',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold)),
                      TextSpan(
                          text: ' 1263 others',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold)),
                    ])),

                space(true, 5),
                //! post caption
                RichText(
                    softWrap: true,
                    overflow: TextOverflow.visible,
                    text: TextSpan(children: [
                      TextSpan(
                          text: post.userName,
                          style: const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold)),
                      TextSpan(
                          text: post.userCaption,
                          style: const TextStyle(
                            color: Colors.white,
                          )),
                    ])),
                space(true, 5),
                //! data
                text('February 2020', Colors.white)
              ],
            ),
          ),
        ]);
  }
}
