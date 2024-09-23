import 'package:clean_snap/src/common/const/global_variable.dart';
import 'package:clean_snap/src/common/providers/bottam_bar/bottam_bar_provider.dart';
import 'package:clean_snap/src/features/booking/booking_screen.dart';
import 'package:clean_snap/src/features/home/pages/home_screen.dart';
import 'package:clean_snap/src/features/notification/notitication_screen.dart';
import 'package:clean_snap/src/features/profile/profile_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';



Color iconColor = Colors.white;

class BottamBarWidget extends StatefulWidget {
  const BottamBarWidget({super.key});

  @override
  State<BottamBarWidget> createState() => _BottamBarWidgetState();
}

class _BottamBarWidgetState extends State<BottamBarWidget> {


  List<Widget> screens = [
    HomeScreen(),
    BookingScreen(),
    NotificationScreen(),
    ProfileScreen(),
  ];

  int selectValue = 0;

  onChange(value){
    setState(() {
      selectValue = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    print('object');
    final provider = Provider.of<BottamBarProvider>(context,listen: false);
    return Scaffold(
      bottomNavigationBar: Consumer<BottamBarProvider>(
        builder: (context, value, child) {
        return BottomNavigationBar(
          currentIndex: provider.selectIndex,
            unselectedItemColor: colorScheme(context).secondary,
            showUnselectedLabels: true,
            showSelectedLabels: true,
            selectedItemColor: colorScheme(context).primary,
            backgroundColor: colorScheme(context).onPrimary,
            type: BottomNavigationBarType.fixed,
            onTap: (value){
            provider.onTap(value);
            },
            selectedLabelStyle: TextStyle(fontWeight: FontWeight.w500,fontSize: 13,color: Colors.white),
            items: [
              BottomNavigationBarItem(
                  icon: provider.selectIndex == 0 ?  Icon(CupertinoIcons.house_alt_fill) : Icon(CupertinoIcons.house),
                  label: 'Home'
              ),
              BottomNavigationBarItem(
                icon: provider.selectIndex == 1 ? Icon(FontAwesomeIcons.broom) : Icon(FontAwesomeIcons.broom),
                label: 'Booking',
              ),
              BottomNavigationBarItem(
                icon: provider.selectIndex == 2 ? Icon(Icons.notifications_rounded) : Icon(Icons.notifications_none_sharp),
                label: 'Notification',
              ),
              BottomNavigationBarItem(
                icon: provider.selectIndex == 3 ? Icon(CupertinoIcons.person_fill) : Icon(CupertinoIcons.person),
                label: 'Profile',
              ),
            ]
        );
      },),
      body: Consumer<BottamBarProvider>(
          builder: (context, value, child) {
            return screens[value.selectIndex];
          },
      ),
    );
  }
}
