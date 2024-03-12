import 'package:flutter/material.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
   appBar: AppBar(
        backgroundColor: Colors.black,
        title:
            Text('The Washington Post', style: TextStyle(color: Colors.white), ),
        centerTitle: true,
    ),
    
            drawer: Drawer(
      ),
  
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
                'https://i.imgur.com/DnS3zq9.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Container(
            width: 450, //
            height: 650, //
            child: Card(
                child: Expanded(
                    child: Container(
                        color: Colors.grey[50],
                        child: Column(
                          children: [
                          SizedBox(height:8),
                            Text(
                              "Sign Up",
                              style: TextStyle(
                                  fontSize: 30, fontWeight: FontWeight.bold),
                            ),
                            SizedBox( // para naay gap idk how padding works :P
                              height: 16, //
                            ),
                          Container(
                            height: 45,
                            width: 300,
                            decoration: BoxDecoration(
                              border: Border.all(width: 1, color: Colors.blue),
                              color: Colors.grey[200],
                              borderRadius: BorderRadius.circular(3),
                            ),
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 8.0),
                              child: TextField(
                                decoration: InputDecoration(
                                  border: InputBorder.none, 
                                  hintText: 'First Name',
                                  hintStyle: TextStyle(fontSize: 12, color: Colors.blue),
                                ),
                                style: TextStyle(fontSize: 12, color: Colors.blue), 
                              ),
                            ),
                          ),

                            SizedBox( // para naay gap idk how padding works :P
                              height: 16, //
                            ),

                            Container(
                            height: 45,
                            width: 300,
                            decoration: BoxDecoration(
                              border: Border.all(width: 1, color: Colors.blue),
                              color: Colors.grey[200],
                              borderRadius: BorderRadius.circular(3),
                            ),
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 8.0),
                              child: TextField(
                                decoration: InputDecoration(
                                  border: InputBorder.none, 
                                  hintText: 'Last Name',
                                  hintStyle: TextStyle(fontSize: 12, color: Colors.blue),
                                ),
                                style: TextStyle(fontSize: 12, color: Colors.blue), 
                              ),
                            ),
                          ),

                                 SizedBox( // para naay gap idk how padding works :P
                              height: 16, //
                            ),

                            Container(
                            height: 45,
                            width: 300,
                            decoration: BoxDecoration(
                              border: Border.all(width: 1, color: Colors.blue),
                              color: Colors.grey[200],
                              borderRadius: BorderRadius.circular(3),
                            ),
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 8.0),
                              child: TextField(
                                decoration: InputDecoration(
                                  border: InputBorder.none, 
                                  hintText: 'Email Address',
                                  hintStyle: TextStyle(fontSize: 12, color: Colors.blue),
                                ),
                                style: TextStyle(fontSize: 12, color: Colors.blue), 
                              ),
                            ),
                          ),

                                   SizedBox( // para naay gap idk how padding works :P
                              height: 16, //
                            ),

                            Container(
                            height: 45,
                            width: 300,
                            decoration: BoxDecoration(
                              border: Border.all(width: 1, color: Colors.blue),
                              color: Colors.grey[200],
                              borderRadius: BorderRadius.circular(3),
                            ),
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 8.0),
                              child: TextField(
                                decoration: InputDecoration(
                                  border: InputBorder.none, 
                                  hintText: 'Username',
                                  hintStyle: TextStyle(fontSize: 12, color: Colors.blue),
                                ),
                                style: TextStyle(fontSize: 12, color: Colors.blue), 
                              ),
                            ),
                          ),

                                     SizedBox( // para naay gap idk how padding works :P
                              height: 16, //
                            ),

                            Container(
                            height: 45,
                            width: 300,
                            decoration: BoxDecoration(
                              border: Border.all(width: 1, color: Colors.blue),
                              color: Colors.grey[200],
                              borderRadius: BorderRadius.circular(3),
                            ),
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 8.0),
                              child: TextField(
                                obscureText: true,        
                                decoration: InputDecoration(
                                  border: InputBorder.none, 
                                  hintText: 'Password',
                                  hintStyle: TextStyle(fontSize: 12, color: Colors.blue),
                                  
                                ),
                                style: TextStyle(fontSize: 12, color: Colors.blue), 
                              ),
                            ),
                          ),

                                                               SizedBox( // para naay gap idk how padding works :P
                              height: 16, //
                            ),

                            Container(
                            height: 45,
                            width: 300,
                            decoration: BoxDecoration(
                              border: Border.all(width: 1, color: Colors.blue),
                              color: Colors.grey[200],
                              borderRadius: BorderRadius.circular(3),
                            ),
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 8.0),
                              child: TextField(
                                obscureText: true,
                                decoration: InputDecoration(
                                  border: InputBorder.none, 
                                  hintText: 'Confirm Password',
                                  hintStyle: TextStyle(fontSize: 12, color: Colors.blue),
                                ),
                                style: TextStyle(fontSize: 12, color: Colors.blue), 
                              ),
                            ),
                          ),



                          SizedBox(
                            height: 16,
                          ),
                          


                          ElevatedButton(
                                onPressed: () {
                            Navigator.pushNamed(context, '/home');
                          },
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50),
                              ),
                              primary: Colors.blue[500],
                              minimumSize: Size(300, 40),
                            ),
                            child: Text(
                              'Sign Up',
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),


                          SizedBox(
                            height: 16,
                          ),
                          
                          ],
                        )))

                // inside login
                ),
          ),
        ),
      ),
    );
  }
}