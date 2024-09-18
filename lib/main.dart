import 'package:flutter/material.dart';

void main() {
  runApp(GreetingApp());
}

class GreetingApp extends StatelessWidget {
  const GreetingApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      home: Home(),
      title: 'Greeting App',
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Greeting App'),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Hello, World!',
              style: TextStyle(
                color: Colors.deepOrange,
                fontWeight: FontWeight.w600,
                fontSize: 20,
              ),),
            Text('Welcome to Flutter!', style: TextStyle(
              color: Colors.black,
              fontSize: 18,
              fontWeight: FontWeight.w400,
            ),),
            SizedBox(height: 10,),
            Image(image: AssetImage('asset/img/flutter.png')),
            SizedBox(height: 10,),
            ElevatedButton(
              onPressed: () {
                showDialog(
                    context: context,
                    barrierDismissible: false,
                    barrierColor: Colors.black54,
                    builder: (ctx) {
                      return AlertDialog(
                        title: Text('Next'),
                        content: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Do you want to proceed?'),
                          ],
                        ),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: Text('Cancel'),
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                              },
                            child: Text('Next'),
                          )
                        ],
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8)),
                        backgroundColor: Colors.white,
                      );
                    });
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
              ),
              child: Text('Press Me'),
            ),
          ],
        ),
      ),
    );
  }
}