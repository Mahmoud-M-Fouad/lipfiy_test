import 'package:flutter/material.dart';
import 'package:lipfiy01/screens/sentence_structure_screen.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'Welcome to TOS',
                style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              Flexible(
                child: Hero(
                  tag: 'logo',
                  child: Image.asset(
                    'images/logo.jpg',
                    width: 200.0,
                  ),
                ),
              ),
              const Text(
                'Your Lip Reading Assistant',
                style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        elevation: 4.0,
// icon: Icon(Icons.record_voice_over),
// label: Text('Sentence Structure'),
        child: const Icon(Icons.arrow_forward_ios),
        onPressed: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => SentenceStructureScreen(),
          ),
        ),
      ),
    );
  }
}




