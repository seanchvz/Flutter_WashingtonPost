import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:chavez_1_login/models/about.dart';
import 'package:chavez_1_login/widgets/card-about.dart';

class About extends StatefulWidget {
  @override
  _AboutState createState() => _AboutState();
}

class _AboutState extends State<About> {
  late Future<List<Photo>> _fetchPhotos;

  @override
  void initState() {
    super.initState();
    _fetchPhotos = _fetchData();
  }

  Future<List<Photo>> _fetchData() async {
    final response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/photos'));

    if (response.statusCode == 200) {
      List<dynamic> data = json.decode(response.body);
      return data.map((item) => Photo.fromJson(item)).toList();
    } else {
      throw Exception('Failed to load data');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('About', style: TextStyle(color: Colors.white)),
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.white),
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
                              '5. The first euraka moment is running the project :D',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 18.0,
                                fontWeight: FontWeight.w200,
                              ),
                            ),



                    SizedBox(height: 16.0),
                    // Add your image here
                    Image.asset('assets/logo.png'), // Adjust the path as necessary
                    SizedBox(height: 16.0),
                    // Add your FutureBuilder here
                    FutureBuilder<List<Photo>>(
                      future: _fetchPhotos,
                      builder: (context, snapshot) {
                        if (snapshot.connectionState == ConnectionState.waiting) {
                          return CircularProgressIndicator();
                        } else if (snapshot.hasError) {
                          return Text('Error: ${snapshot.error}');
                        } else {
                          return Expanded(
                            child: ListView.builder(
                              itemCount: snapshot.data!.length,
                              itemBuilder: (context, index) {
                                final photo = snapshot.data![index];
                                return ListTile(
                                  leading: Image.network(photo.thumbnailUrl),
                                  title: Text(photo.title),
                                );
                              },
                            ),
                          );
                        }
                      },
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
    );
  }
}
