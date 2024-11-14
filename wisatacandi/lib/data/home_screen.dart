import 'package:flutter/material.dart';
import 'package:widget_dasar_flutter2/data/candi_data.dart';
import 'package:wisatacandi/data/candi_data.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Wisata Candi'),
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      padding: const EdgeInsets.all(8),
      itemCount: candiList.length,
      itemBuilder: (context, index) => 
      
         ),
      );
    ),
  }
}
