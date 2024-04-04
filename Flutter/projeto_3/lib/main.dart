import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('jpedro03'),
        ),
        body: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              CommentWidget(
                profileImage: 'assets/profile1.jpg',
                text: '@claraLuzia: linda amorzinho te amo',
              ),
              SizedBox(height: 20), // Espaçamento entre os comentários
              CommentWidget(
                profileImage: 'assets/profile2.jpg',
                text: '@leninha_matos: lindinho da mãe',
              ),
              SizedBox(height: 20), // Espaçamento entre os comentários
              CommentWidget(
                profileImage: 'assets/images.jpeg',
                text: '@endrick: fera mano!',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CommentWidget extends StatelessWidget {
  final String profileImage;
  final String text;

  const CommentWidget({
    required this.profileImage,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CircleAvatar(
          backgroundImage: AssetImage(profileImage),
          radius: 20,
        ),
        SizedBox(width: 10),
        Expanded(
          child: Text(
            text,
            style: TextStyle(fontSize: 16),
          ),
        ),
      ],
    );
  }
}