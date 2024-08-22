import 'package:ticket_app/screens/home_screen.dart';
import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  //list is iterated using index
  final appScreens =[
    const HomeScreen(),
    const Center(child: Text("Search")),
    const Center(child: Text("Airplane")),
    const Center(child: Text("Person"))
  ];

  //change our index for BottonNavBar
  int selectedIndex = 0;

  void _onItemTapped(int index){
    setState(() {
      selectedIndex = index;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text("Ticket App"),
      ),
      body: appScreens[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
         currentIndex: selectedIndex,
        onTap: _onItemTapped,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.blueAccent,
        showSelectedLabels: false,
        items:const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label:"Home"),
          BottomNavigationBarItem(icon: Icon(Icons.chat), label:"Search"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label:"Airplane"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label:"Person"),
        ],
      ),
    );
  }
}
