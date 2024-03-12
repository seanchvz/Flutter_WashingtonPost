import 'package:flutter/material.dart';

class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {
     return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('About', style: TextStyle(color: Colors.white)),
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
                              // Navigator.pushNamed(context, '/about');
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
                              'About',
                              style: TextStyle(
                                fontSize: 24.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 16.0),
                            Image.asset('assets/logo.png'),
                            // Add your content here
                            Text(
                              '1. Reflecting on my first time developing with flutter, I have encountered many problems with decorating my respective screen but I was able to run the setup smoothly.',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 18.0,
                                fontWeight: FontWeight.w200,
                              ),
                            ),

                            Text(
                              '2. The building and running experience with flutter has been very efficient for me, for it has the hot reload feature, which is a game changer when it comes to creating a web app. ',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 18.0,
                                fontWeight: FontWeight.w200,
                              ),
                            ),
                            Text(
                              '3. At first, I was puzzled when I started working on flutter. It is very different from any other software developing program, then using a Mac device for this subject gives me a learning gap. I had to learn as I do my projects, but in this current time, I am able to work with flutter the way I can be familiar with. ',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 18.0,
                                fontWeight: FontWeight.w200,
                              ),
                            ),
                            Text(
                              '4. the first bug was the time my running project keeps on crashing, then I feel assured since I was able to screen record my output as a backup. ',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 18.0,
                                fontWeight: FontWeight.w200,
                              ),
                            ),
                            Text(
                              '5. The first euraka moment is running the prject :D',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 18.0,
                                fontWeight: FontWeight.w200,
                              ),
                            ),
                            
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            );

          }

      ),
    );
  }
}
