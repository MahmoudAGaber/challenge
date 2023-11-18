
import 'package:dress/Cart.dart';
import 'package:dress/Favourites.dart';
import 'package:dress/Home.dart';
import 'package:dress/Profile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int _currentIndex = 0;

  final List<Widget> _tabs = [
    Home(),
    Favourites(),
    Cart(),
    Profile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr,
      child: Scaffold(
        body: _tabs[_currentIndex],
        bottomNavigationBar: Container(
          height: 70,
          color: Colors.white,
          //color: Colors.grey,
          alignment: Alignment.bottomCenter,
          child: BottomNavigationBar(
            backgroundColor: Colors.white,
            selectedIconTheme: IconThemeData(color: Theme.of(context).primaryColor),
            iconSize: 25.0,
            elevation: 0.0,
            type: BottomNavigationBarType.fixed,
            currentIndex: _currentIndex,
            onTap: (index) {
              setState(() {
                _currentIndex = index;
              });
            },
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.home_rounded,),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.favorite_outline,),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset("assets/images/cart.svg", color: _currentIndex == 2 ? null: Colors.grey,),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: CircleAvatar(
                  radius: 14,
                  child: Image.asset("assets/images/profile.png"),),
                label: '',
              ),



            ],
          ),
        ),
      ),
    );
  }
}
