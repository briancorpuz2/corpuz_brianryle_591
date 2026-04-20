import 'package:flutter/material.dart';
import 'package:modelhandling/screen/chat_screen.dart';
import 'package:modelhandling/screen/login_screen.dart';
import 'package:modelhandling/screen/signup_screen.dart';
import 'package:modelhandling/screen/student_screen.dart';
import 'package:supabase_flutter/supabase_flutter.dart';


void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Supabase.initialize(url: 'https://ezzkxgnaweclcuvehnec.supabase.co' , anonKey: ' eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImV6emt4Z25hd2VjbGN1dmVobmVjIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NzIzOTYyMTUsImV4cCI6MjA4Nzk3MjIxNX0.V0OjmRQ_jiVeRhMmTL92vXEZ1Q0pa2wI1J0YlmN7tGs');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.deepPurple),),
      debugShowCheckedModeBanner: false,
      home: ChatPage(username: 'User1'),
    );
  }
}
