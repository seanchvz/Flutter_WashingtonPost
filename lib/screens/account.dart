import 'package:flutter/material.dart';

class MyAccount extends StatelessWidget {
  const MyAccount({super.key});

  @override
  Widget build(BuildContext context) {
return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('My Account', style: TextStyle(color: Colors.white)),
        centerTitle: true,
        // Adding hamburger icon button to toggle the drawer
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: Icon(Icons.menu, color: Colors.white),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            );
          },
        ),
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth > 600) {
            return Drawer(
              child: ListView(
                padding: EdgeInsets.zero,
                children: <Widget>[
                  DrawerHeader(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(
                            'https://i.imgur.com/DnS3zq9.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Text(
                      'Hello, Sean!',
                      style: TextStyle(
                        color: Colors.grey[200],
                        fontSize: 24,
                      ),
                    ),
                  ),
                  ListTile(
                    leading: Icon(Icons.home),
                    title: Text('Home'),
                    onTap: () {
                      Navigator.pushNamed(context, '/home');
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.newspaper),
                    title: Text('News'),
                    onTap: () {
                      Navigator.pushNamed(context, '/news');
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.info),
                    title: Text('About'),
                    onTap: () {
                      Navigator.pushNamed(context, '/about');
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.person),
                    title: Text('My Account'),
                    onTap: () {
                      Navigator.pushNamed(context, '/account');
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.logout),
                    title: Text('Log Out'),
                    onTap: () {
                      Navigator.pushNamed(context, '/login');
                    },
                  ),
                ],
              ),
            );
          } else {
            return Container();
          }
        },
      ),
    );
  }
}