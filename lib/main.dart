import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Business Card',
      theme: ThemeData(
        primarySwatch: Colors.yellow,
        fontFamily: 'FiraCode',
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow.shade400,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CircleAvatar(
                radius: 100.0,
                backgroundImage: AssetImage('assets/me.jpg'),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 10.0),
              ),
              const Text(
                'Merih Çavdar',
                style: TextStyle(
                  fontSize: 36.0,
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(
                  top: 10.0,
                ),
              ),
              const Text(
                'FLUTTER DEVELOPER',
                style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.black54,
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(
                  top: 10.0,
                ),
              ),
              SizedBox(
                width: 300.0,
                child: Divider(
                  color: Colors.yellow.shade600,
                  thickness: 1.0,
                ),
              ),
              Card(
                color: Colors.white,
                margin: const EdgeInsets.symmetric(
                  vertical: 6.0,
                  horizontal: 25.0,
                ),
                child: ListTile(
                  tileColor: Colors.yellow.shade50,
                  leading: Icon(
                    Icons.email,
                    color: Colors.yellow.shade600,
                  ),
                  title: const Text(
                    'merih.cavdar@isbank.com.tr',
                    style: TextStyle(
                      color: Colors.black54,
                    ),
                  ),
                ),
              ),
              Card(
                margin: const EdgeInsets.symmetric(
                  vertical: 6.0,
                  horizontal: 25.0,
                ),
                child: ListTile(
                  tileColor: Colors.yellow.shade50,
                  leading: Icon(
                    Icons.phone,
                    color: Colors.yellow.shade600,
                  ),
                  title: const Text(
                    '+90 555 595 87 35',
                    style: TextStyle(
                      color: Colors.black54,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
