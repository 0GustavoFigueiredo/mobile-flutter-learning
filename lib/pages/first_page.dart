import 'package:flutter/material.dart';
import 'package:mobile_projects/pages/second_page.dart';

class FirstPage extends StatelessWidget {
    const FirstPage({super.key});

    @override
    Widget build(BuildContext context) {
        return Scaffold(
          backgroundColor: Colors.grey[800],
          appBar: AppBar(
            title: Text("To do"),
            titleTextStyle: TextStyle(
              color: Colors.white70, // titleText color
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
            centerTitle: true,
            backgroundColor: Colors.grey[900],
            leading: Icon(Icons.menu),
            actions: [IconButton(onPressed: () {}, icon: Icon(Icons.logout))],
            iconTheme: IconThemeData(
              color: Colors.white70, // Icons Colors
            ),
          ),
          body: Center(
            child: ElevatedButton(
              child: Text("Enter"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SecondPage(),
                  ),
                );
              },
            ),
          ),
        );
    }

}