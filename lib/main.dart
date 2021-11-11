import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:evaluacion/google_sign_in_firebase/home_google_sign_in.dart';

/// Dart's starting point.
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(MyApp());
}

/// It is the root of the project.
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Evaluacion',
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
      home: HomeGoogleSignIn(),
    );
  }
}

class _Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Widget List with all _RouteLisTile.

    // Scaffold contain the ListView with routes.
    return Scaffold(
      appBar: AppBar(
        title: const Text('Examen'),
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text('Google Sing in'),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => HomeGoogleSignIn()));
            },
          )
        ],
      ),
    );
  }
}
