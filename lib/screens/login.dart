import 'package:flutter/material.dart';


class LoginScreen extends StatelessWidget {

  const LoginScreen({super.key});
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title:
            Text('The Washington Post', style: TextStyle(color: Colors.white), ),
        centerTitle: true,
        
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
                              "Chavez",
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
                          ElevatedButton(
                                onPressed: () {
                            Navigator.pushNamed(context, '/home');
                          },
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50),
                              ),
                              backgroundColor: Colors.blue[500],
                              minimumSize: Size(300, 40),
                            ),
                            child: Text(
                              'Login',
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
                          ElevatedButton(
                            onPressed: () {
                              Navigator.pushNamed(context, '/signup');
                              print('Sign Up');
                            },
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50),
                              ),
                              backgroundColor: Colors.grey[200],
                              side: BorderSide(color: Colors.grey),
                              minimumSize: Size(300, 45),
                            ),
                            child: Text(
                              'Sign Up',
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                            SizedBox( // para naay gap idk how padding works :P
                              height: 16, //
                            ),
                            Row(children: <Widget>[
                              Expanded(child: Divider()),
                              Text("or"),
                              Expanded(child: Divider()),
                            ]),


                        Container(
                              height: 45,
                              width: 300,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  ),
                              child: Center(
                                child: Text(
                                  'To connect a sign in method, the email must match one on your Washington Post account.',
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.grey[600],
                                      fontWeight: FontWeight.bold,
                                      ),
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
                                border: Border.all(width: 1, color: Colors.grey),
                                  color: Colors.grey[200],
                                  borderRadius: BorderRadius.circular(50)),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [ 
                                Icon(Icons.shop, color: Colors.black,),
                                SizedBox(width:8),
                              Text(
                                    'Continue with Amazon',
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox( // para naay gap idk how padding works :P
                              height: 16, //
                            ),
                            Container(
                              height: 45,
                              width: 300,
                              decoration: BoxDecoration(
                                border: Border.all(width: 1, color: Colors.grey),
                                color: Colors.grey[200],
                                borderRadius: BorderRadius.circular(50)),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                Icon(Icons.facebook, color: Colors.blue.shade400,),
                                SizedBox(width:8),
                                  Text(
                                    'Continue with Facebook',
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox( // para naay gap idk how padding works :P
                              height: 16, //
                            ),
                            Container(
                              height: 45,
                              width: 300,
                              decoration: BoxDecoration(
                                border: Border.all(width: 1, color: Colors.grey),
                                  color: Colors.grey[200],
                                  borderRadius: BorderRadius.circular(50)),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.search, color: Colors.red,),
                                  SizedBox(width:8),
                                  Text(
                                  'Continue with Google',
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.black,
                                  ),
                                ),
                                ]
                              ),
                            ),
                            SizedBox( // para naay gap idk how padding works :P
                              height: 16, //
                            ),
                            Container(
                              height: 45,
                              width: 300,
                              decoration: BoxDecoration(
                                border: Border.all(width: 1, color: Colors.grey),
                                color: Colors.grey[200],
                                borderRadius: BorderRadius.circular(50),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                Icon(Icons.apple, color: Colors.black,),
                                SizedBox(width:8),
                                  Text(
                                    'Continue with Apple',
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox( // para naay gap idk how padding works :P
                              height: 16, //
                            ),
                            Text(
                              "Need an account? Sign up",
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.w100),
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
