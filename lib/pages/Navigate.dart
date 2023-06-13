import 'package:flutter/material.dart';
import 'package:untitled/pages/signInPage.dart';
import 'package:untitled/pages/map.dart';
import 'package:untitled/pages/HomePage.dart';
import 'package:untitled/pages/plans.dart';
import 'package:untitled/pages/home2.dart';
import 'package:untitled/pages/FavoritePage.dart';




class navigate extends StatefulWidget {
  const navigate({Key? key}) : super(key: key);

  @override
  State<navigate> createState() => _navigateState();
}

class _navigateState extends State<navigate> {
  int _selectedIndex = 0;
  void _navBottonBar(int index){
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _pages =[
    home2(),
    Favorite(),
    MapsPage(),
    PlansPage(),

  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey[850],
          elevation: 10,
          title: Center(child: Text ('Avventura')),
          // leading: IconButton(
          //   onPressed: () { },
          //   icon: Icon(Icons.menu),
          // ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(Icons.person)
            ),

          ],
        ),
        body: _pages[_selectedIndex],

///////////////////////////////////////////////////////////////////////////////////


        drawer: Drawer(child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const UserAccountsDrawerHeader(
              accountName: Text('John Doe'),
              accountEmail: Text('johndoe@example.com'),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                  'https://example.com/profile.jpg',
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Profile'),
              onTap: () {
                // Navigate to the profile screen
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
              onTap: () {
                // Navigate to the settings screen
              },
            ),
            ListTile(
              leading: Icon(Icons.help),
              title: Text('Help & Support'),
              onTap: () {
                // Navigate to the help & support screen
              },
            ),
            ListTile(
              leading: Icon(Icons.info),
              title: Text('About'),
              onTap: () {
                // Navigate to the about screen
              },
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text('Logout'),
              onTap: () {
                // Logout the user and navigate to the login screen
              },
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.share),
              title: Text('Share'),
              onTap: () {
                // Share the app with friends and family
              },
            ),
            ListTile(
              leading: Icon(Icons.star),
              title: Text('Rate & Review'),
              onTap: () {
                // Navigate to the app store to rate and review the app
              },
            ),
            ListTile(
              leading: Icon(Icons.privacy_tip),
              title: Text('Legal'),
              onTap: () {
                // Navigate to the legal information screen
              },
            ),
          ],
        )),

        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: _navBottonBar,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.favorite), label: 'Favorite'),
            BottomNavigationBarItem(icon: Icon(Icons.location_city), label: 'Map'),
            BottomNavigationBarItem(icon: Icon(Icons.bookmark), label: 'Plans'),

          ],
        // ),

        ),


      ),

    );
  }
}
