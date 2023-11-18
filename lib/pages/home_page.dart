import 'package:drive/components/commonWidgets.dart';
import 'package:drive/screens/FileScreen.dart';
import 'package:drive/screens/Home_Screen.dart';
import 'package:drive/screens/SharedScreen.dart';
import 'package:drive/screens/StarredScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int pageindex = 0;
  List pages = [HomeScreen(), StarredScreen(), SharedScreen(), FileScreen()];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
              elevation: 0,
              backgroundColor: Color.fromARGB(255, 147, 46, 254),
              toolbarHeight: 60,
              title: TopNameSection,
              bottom: pageindex == 0
                  ? TabBar(indicatorColor: Colors.white, tabs: [
                      Tab(
                        text: "Recents",
                      ),
                      Tab(
                        text: "Notifications",
                      )
                    ])
                  : null),
          drawer: Drawer(
            child: ListView(
              padding: const EdgeInsets.all(0),
              children: [
                const DrawerHeader(
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 147, 46, 254),
                  ),
                  child: UserAccountsDrawerHeader(
                    decoration:
                        BoxDecoration(color: Color.fromARGB(255, 147, 46, 254)),
                    accountName: Text(
                      "Abhishek Mishra",
                      style: TextStyle(fontSize: 18),
                    ),
                    accountEmail: Text("abhishekm977@gmail.com"),
                    currentAccountPictureSize: Size.square(50),
                    currentAccountPicture: CircleAvatar(
                      backgroundColor: Color.fromARGB(255, 251, 250, 251),
                      child: Text(
                        "A",
                        style: TextStyle(fontSize: 30.0, color: Colors.blue),
                      ),
                    ),
                  ),
                ),
                ListTile(
                  leading: const Icon(Icons.logout),
                  title: const Text('LogOut'),
                  onTap: () {
                    Navigator.of(context).pop();
                    showDialog(
                      barrierColor: Colors.transparent.withOpacity(.2),
                      context: context,
                      builder: (context) => AlertDialog(
                        backgroundColor: Colors.transparent,
                        elevation: 0,
                        content: Center(
                            heightFactor: 3,
                            widthFactor: 1,
                            child: CircularProgressIndicator()),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
          body: pages[pageindex],
          bottomNavigationBar: BottomNavigationBar(
              selectedItemColor: Color.fromARGB(255, 50, 49, 49),
              unselectedItemColor: Color.fromARGB(255, 248, 248, 248),
              backgroundColor: Color.fromARGB(255, 147, 46, 254),
              type: BottomNavigationBarType.fixed,
              currentIndex: pageindex,
              items: [
                BottomNavigationBarItem(
                    icon: IconButton(
                        onPressed: () {
                          setState(() {
                            pageindex = 0;
                          });
                        },
                        icon: Icon(Icons.home)),
                    label: "Home"),
                BottomNavigationBarItem(
                    icon: IconButton(
                        onPressed: () {
                          setState(() {
                            pageindex = 1;
                          });
                        },
                        icon: Icon(Icons.star)),
                    label: "Starred"),
                BottomNavigationBarItem(
                    icon: IconButton(
                        onPressed: () {
                          setState(() {
                            pageindex = 2;
                          });
                        },
                        icon: Icon(Icons.people)),
                    label: "Shared"),
                BottomNavigationBarItem(
                    icon: IconButton(
                        onPressed: () {
                          setState(() {
                            pageindex = 3;
                          });
                        },
                        icon: Icon(Icons.folder)),
                    label: "File"),
              ]),
        ));
  }
}
