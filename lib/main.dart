import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'book_list_page.dart';

        
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Supabase.initialize(
    url: 'https://eonxmusavpnodjrvfrxa.supabase.co',
    anonKey: 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImVvbnhtdXNhdnBub2RqcnZmcnhhIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MzMxMTcxMTIsImV4cCI6MjA0ODY5MzExMn0.OK_zTR4DwwpZOwIl_nr2wbYZro9Qjnwyy1sXLj2EgDM',
  );
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Digital Library",
      home: BookListPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
