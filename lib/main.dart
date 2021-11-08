import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'package:provider/provider.dart';
import 'package:todo_app/page/splashscreen.dart';
import 'package:todo_app/provider/todos.dart';

Future main() async { 
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  
  

  @override
  Widget build(BuildContext context) => ChangeNotifierProvider(
        create: (context) => TodosProvider(),
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            primarySwatch: Colors.indigo,
            scaffoldBackgroundColor: Color(0xFFC5CAE9),
          ),
          home: SplashScreen(),
        ),
      );
}
