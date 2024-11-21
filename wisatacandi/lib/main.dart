import 'package:flutter/material.dart';
import 'package:wisata_candi_rizky/data/candi_data.dart';
import 'package:wisata_candi_rizky/screens/home_screen.dart';
import 'package:wisata_candi_rizky/screens/profile_screen.dart';
import 'package:wisata_candi_rizky/screens/search_screen.dart';
import 'package:wisata_candi_rizky/screens/sign_in_screen.dart';
import 'package:wisata_candi_rizky/screens/sign_up_screen.dart';
import 'package:wisata_candi_rizky/screens/search_screen.dart';
import 'package:wisata_candi_rizky/screens/favorite_screen.dart';
import 'screens/detail_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wisata Candi',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          iconTheme: IconThemeData(color: Colors.deepPurple),
          titleTextStyle: TextStyle(
            color: Colors.deepPurple,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        colorScheme:
            ColorScheme.fromSeed(seedColor: Colors.deepPurple).copyWith(
          primary: Colors.deepPurple,
          surface: Colors.deepPurple[50],
        ),
      ),
      // home: DetailScreen(candi: candiList[0],),
      // home: const ProfileScreen(),
      home: SignUpScreen(),
    );
  }
}

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  //TODO 1. deklarasi variable
  int _currentIndex = 0;
  final List<Widget> _children = [
    HomeScreen(),
    SearchScreen(),
    FavoriteScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //TODO 2. buat properti body berupa widget yang dapat ditampilkan
      body: _children[_currentIndex],
      //TODO 3. buat properti bottomNavigationBar dengan nilai theme
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(canvasColor: Colors.deepPurple[50]),
        child: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          items: const [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Colors.deepPurple,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.search,
                color: Colors.deepPurple,
              ),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Colors.deepPurple,
              ),
              label: 'Favorite',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                color: Colors.deepPurple,
              ),
              label: 'Profile',
            ),
          ],
          //TODO 4. buat data dan child dati Theme
          selectedItemColor: Colors.deepPurple,
          unselectedItemColor: Colors.deepPurple[100],
          showUnselectedLabels: true,
        ),
      ),
    );
  }
}
