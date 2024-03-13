  import 'package:flutter/material.dart';
  import 'package:chavez_1_login/models/card.dart';

  class cardWidget extends StatelessWidget {
    final CardModel card;

    const cardWidget({Key? key, required this.card}) : super(key: key);

    @override
    Widget build(BuildContext context) {
      return Card(
        margin: EdgeInsets.all(10.0),
        
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Padding(
          padding: EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                card.title,
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 23.0,
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                card.body,
                style: TextStyle(fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                'User ID: ${card.userId}',
                style: TextStyle(
                  fontSize: 14.0,
                  fontStyle: FontStyle.italic,
                  color: Colors.blue[900],
                ),
              ),
            ],
          ),
        ),
      );
    }
  }