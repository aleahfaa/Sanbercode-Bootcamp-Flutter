import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tugas14/home/news.dart';
import 'package:tugas14/search/search.dart';
import 'package:tugas14/setting/setting.dart';
import 'package:tugas14/login/loginscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'SanberNews',
      theme: ThemeData(primarySwatch: Colors.blue),
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: () => const MainPage()),
        GetPage(name: '/news', page: () => const News()),
        GetPage(name: '/search', page: () => const SearchPage()),
        GetPage(name: '/settings', page: () => const SettingPage()),
        // GetPage(name: '/login', page: () => const GetStartedPage()),
      ],
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _currentIndex = 0;
  final List<Widget> _pages = [News(), SearchPage(), SettingPage()];

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('SanberNews')),
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
        currentIndex: _currentIndex,
        onTap: (index) {
          if (index == 0) {
            Get.toNamed('/news');
          } else if (index == 1) {
            Get.toNamed('/search');
          } else if (index == 2) {
            Get.toNamed('/settings');
          }
        },
      ),
    );
  }
}
