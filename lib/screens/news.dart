import 'package:flutter/material.dart';
import 'package:sidebarx/sidebarx.dart';

class NewsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('News', style: TextStyle(color: Colors.white)),
        centerTitle: true,
      
        leading: MediaQuery.of(context).size.width <= 600
            ? Builder(
                builder: (BuildContext context) {
                  return IconButton(
                    icon: Icon(Icons.menu, color: Colors.white),
                    onPressed: () {
                      Scaffold.of(context).openDrawer();
                    },
                  );
                },
              )
            : null,
      ),
 
      drawer: MediaQuery.of(context).size.width > 600
          ? Drawer(
              child: ListView(
                padding: EdgeInsets.zero,
                children: <Widget>[
                  DrawerHeader(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(
                            'https://i.imgur.com/H1uSBNu.jpeg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Text(
                      'Hello, Sean!',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
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
            )
          : null,
      body: LayoutBuilder(
        builder: (context, constraints) {
            return Container(
              padding: EdgeInsets.all(16.0),
              child: Row(
                children: [
                  Container(
                    child: Drawer(
                      child: ListView(
                        padding: EdgeInsets.zero,
                        children: <Widget>[
                          DrawerHeader(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: NetworkImage(
                                    'https://i.imgur.com/H1uSBNu.jpeg'),
                                fit: BoxFit.cover,
                              ),
                            ),
                            child: Text(
                              'Hello, Sean!',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w400,
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
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Card(
                      margin: EdgeInsets.symmetric(horizontal: 16.0),
                      child: Container(
                        padding: EdgeInsets.all(16.0),
                        child: Column(
                          children: [
                            Text(
                              'News',
                              style: TextStyle(
                                fontSize: 24.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 16.0),
                            // Add your content here
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            );
          
        },
      ),
    );
  }
}
