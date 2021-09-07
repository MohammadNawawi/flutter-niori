import 'package:flutter/material.dart';
import 'package:niori/theme.dart';

class MainPage extends StatelessWidget {

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
            type: BottomNavigationBarType.fixed,
            items: [
            BottomNavigationBarItem(
              icon: Image.asset(
                  'assets/images/iclog/icon_home.png',
                  width: 20,
                ),
              label: '',
              ),
            BottomNavigationBarItem(
              icon: Image.asset(
                  'assets/images/iclog/icon_chat.png',
                  width: 20,
                ),
              label: '',
              ),
            BottomNavigationBarItem(
              icon: Image.asset(
                  'assets/images/iclog/icon_wishlist.png',
                  width: 20,
                ),
              label: '',
              ),
            BottomNavigationBarItem(
              icon: Image.asset(
                  'assets/images/iclog/icon_profile.png',
                  width: 20,
                ),
              label: '',
              ),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      floatingActionButton: cartButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: customBottomNav(),
      body: Center(child: Text('Main Page')),
    );
  }
}