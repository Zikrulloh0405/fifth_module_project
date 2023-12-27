// import 'package:fifth_module_project/pages/instagram_project/post_page.dart';
import 'package:fifth_module_project/pages/instagram_project/post_page.dart';
import 'package:fifth_module_project/widgets/register_page_widgets.dart';
import 'package:fifth_module_project/widgets/widgets.dart';
// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InstagramPage extends StatefulWidget {
  const InstagramPage({super.key});
  static const String id = "instagram_page";
  @override
  State<InstagramPage> createState() => _InstagramPageState();
}

class _InstagramPageState extends State<InstagramPage> {
  final _pages = [
    const StoryPage(),
    const StoryPage(),
    const StoryPage(),
    const StoryPage(),
    const StoryPage(),
  ];

  int currentPage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
            onPressed: () {}, icon: icons(Icons.camera_alt_outlined, size: 27)),
        title: text('Instagram', Colors.white,
            fontWeight: FontWeight.w300, fontSize: 25),
        centerTitle: true,
        actions: [
          IconButton(onPressed: () {}, icon: icons(Icons.tv_rounded, size: 27)),
          IconButton(
              onPressed: () {}, icon: icons(Icons.send_outlined, size: 27)),
        ],
      ),
      body: _pages[currentPage],
      bottomNavigationBar: BottomNavigationBar(
          onTap: (i) {
            setState(() {
              currentPage = i;
            });
          },
          backgroundColor: Colors.transparent,
          currentIndex: currentPage,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          type: BottomNavigationBarType.fixed,
          unselectedItemColor: Colors.grey,
          selectedItemColor: Colors.white,
          items: [
            BottomNavigationBarItem(
              label: 'Home',
              icon: icons(
                Icons.home,
              ),
            ),
            BottomNavigationBarItem(
              label: 'Home',
              icon: icons(Icons.search),
            ),
            BottomNavigationBarItem(
              label: 'Home',
              icon: icons(
                Icons.add,
              ),
            ),
            BottomNavigationBarItem(
              label: 'Home',
              icon: icons(Icons.favorite),
            ),
            BottomNavigationBarItem(
              label: 'Home',
              icon: icons(
                Icons.person,
              ),
            ),
          ]),
    );
  }
}
