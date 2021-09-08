import 'package:flutter/material.dart';
import 'package:niori/pages/home/chat_page.dart';
import 'package:niori/pages/home/home_page.dart';
import 'package:niori/pages/home/profile_page.dart';
import 'package:niori/pages/home/wishlist_page.dart';
import 'package:niori/theme.dart';
// import 'package:niori/theme.dart';

class MainPage extends StatefulWidget {

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {

    Widget cartButton(){
      return FloatingActionButton(
        onPressed: (){},
        child: Image.asset(
          'assets/images/iclog/icon_cart.png',
          width: 17,
        ),
      );
    }

    Widget customBottomNav(){
      return ClipRRect(
        borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
        child: BottomAppBar(
          shape: CircularNotchedRectangle(),
          notchMargin: 10,
          clipBehavior: Clip.antiAlias,
          child: BottomNavigationBar(
            // backgroundColor: primaryColor,
            currentIndex: currentIndex,
            onTap: (value){
              setState(() {
                currentIndex = value;
              });
            },
            type: BottomNavigationBarType.fixed,
            items: [
            BottomNavigationBarItem(
              icon: Container(
                margin: EdgeInsets.only(top: 20),
                child: Image.asset(
                    'assets/images/iclog/icon_home.png',
                    width: 20,
                    color: currentIndex == 0 ? primaryColor : Color(0xff808191),
                  ),
              ),
              label: '',
              ),
            BottomNavigationBarItem(
              icon: Container(
                margin: EdgeInsets.only(top: 20),
                child: Image.asset(
                    'assets/images/iclog/icon_chat.png',
                    width: 20,
                    color: currentIndex == 1 ? primaryColor : Color(0xff808191),
                  ),
              ),
              label: '',
              ),
            BottomNavigationBarItem(
              icon: Container(
                margin: EdgeInsets.only(top: 20),
                child: Image.asset(
                    'assets/images/iclog/icon_wishlist.png',
                    width: 20,
                    color: currentIndex == 2 ? primaryColor : Color(0xff808191),
                  ),
              ),
              label: '',
              ),
            BottomNavigationBarItem(
              icon: Container(
                margin: EdgeInsets.only(top: 20),
                child: Image.asset(
                    'assets/images/iclog/icon_profile.png',
                    width: 20,
                    color: currentIndex == 3 ? primaryColor : Color(0xff808191),
                  ),
              ),
              label: '',
              ),
            ],
          ),
        ),
      );
    }

    Widget body(){
      switch (currentIndex) {
        case 0:
          return HomePage();
          break;
        case 1:
          return ChatPage();
          break;
        case 2:
          return WishlistPage();
          break;
        case 3:
          return ProfilePage();
          break;
        default:
          return HomePage();
      }
    }

    return Scaffold(
      floatingActionButton: cartButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: customBottomNav(),
      body: body(),
    );
  }
}