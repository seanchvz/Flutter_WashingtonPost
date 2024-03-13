import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('Home', style: TextStyle(color: Colors.white)),
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.white), // Set the color of the drawer icon
      ),
      drawer: MediaQuery.of(context).size.width <= 600 ? CustomDrawer() : null,
      body: Row(
        children: [
          MediaQuery.of(context).size.width > 600
              ? Expanded(
                  child: CustomDrawer(),
                )
              : SizedBox(), // Empty placeholder for smaller screens
          Expanded(
            flex: 2,
            child: Card(
              margin: EdgeInsets.symmetric(horizontal: 16.0),
              child: Container(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Text(
                      'Chavez',
                      style: TextStyle(
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 16.0),
                    // Add your image here
                    Image.asset('assets/logo.png'), // Adjust the path as necessary
                    // Add your content here
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({Key? key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage('https://i.imgur.com/H1uSBNu.jpeg'),
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
              // Navigator.pushNamed(context, '/home');
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
  }
}
