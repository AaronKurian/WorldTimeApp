import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {


  Map<String, dynamic> data = {};

  @override
  Widget build(BuildContext context) {

    final args = ModalRoute.of(context)?.settings.arguments;
    if (args != null && args is Map) {
      data = Map<String, dynamic>.from(args);
    }
    print(data);

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0.0, 120.0, 0.0, 0.0),
          child: Column(
            children: [
              ElevatedButton.icon(
                onPressed: () {
                  Navigator.pushNamed(context, '/location');
                },
                icon: Icon(Icons.edit_location),
                label: Text('Edit Location'),
              ),
              SizedBox(height: 20.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    data['location'] ?? 'Unknown Location',
                    style: TextStyle(
                      fontSize: 28.0,
                      letterSpacing: 2.0,
                    ),
                  )
                ],
              ),
              SizedBox(height: 20.0),
              Text(
                data['time'] ?? 'Unknown Time',
                style: TextStyle(
                  fontSize: 66.0,
                  letterSpacing: 2.0,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}