import 'package:flutter/material.dart';

class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {
     return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title:
            Text('About', style: TextStyle(color: Colors.white)),
        centerTitle: true,
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
    
            return Container(



              
            );
          }
        },
      ),
    );
  }
}
