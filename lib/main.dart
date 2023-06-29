
import 'package:crudproyecto/pages/add_name_page.dart';
import 'package:crudproyecto/pages/edit_name_page.dart';
import 'package:crudproyecto/pages/home_pages.dart';
import 'package:flutter/material.dart';
//importacones de firebase
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
   WidgetsFlutterBinding.ensureInitialized();
   await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
  }

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: 'Material App',
      initialRoute: '/',
      routes: {
        '/': (context) => const Home(),
        '/add': (context) => const AddNamePage(),
        '/edit': (context) => const EditNamePage(),

      },
    );
  }
}

