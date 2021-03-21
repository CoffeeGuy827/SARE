import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'package:sare/constants/Sizes.dart';
import 'package:sare/constants/SvgImages.dart';
import 'package:sare/provider/NavigationNumProvider.dart';
import 'package:sare/screen/MainScreen.dart';
import 'package:sare/screen/SettingScreen.dart';
import 'package:sare/screen/TotalShoppingScreen.dart';
import 'package:sare/utils/Dialog.dart';

import 'EventScreen.dart';

class BottomNavigationScreen extends StatefulWidget {
  @override
  _BottomNavigationScreenState createState() => _BottomNavigationScreenState();
}


class _BottomNavigationScreenState extends State<BottomNavigationScreen> {



  static List<Widget> bottomNavigationPages = <Widget>[
    MainScreen(),
    TotalShoppingScreen(),
    EventScreen(),
    SettingScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    final navigationNumProvider = Provider.of<NavigationNumProvider>(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body:  bottomNavigationPages[
      navigationNumProvider.getNum()],
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Colors.white,
          primaryColor: Colors.black,
          textTheme: Theme.of(context).textTheme.copyWith(caption: TextStyle(color: Color(0xff888888)))
        ),
        child: Container(
          height: 61,
          child: Column(
            children: [
              Container(width: size.width*(320/360),height: 1,color: Color(0xffcccccc),),
              BottomNavigationBar(
                elevation: 0.0,
                showSelectedLabels: false,
                // <-- HERE
                showUnselectedLabels:false,
                type: BottomNavigationBarType.fixed,
                onTap: (index) async{
                  navigationNumProvider.setNum(index);
                 setState(() {

                 });
                },
                currentIndex:
                navigationNumProvider.getNum(),

                items: [
                  new BottomNavigationBarItem(
                    icon: Column(
                      children: [
                        SizedBox(height: 1),
                        SvgPicture.asset(
                          home,
                          color: navigationNumProvider.getNum() == 0?Colors.black:Color(0xff888888),
                          width: MediaQuery.of(context).size.width*(20/360),
                          height:  MediaQuery.of(context).size.height*(22/640),
                        ),
                        SizedBox(height: 12),
                      ],
                    ),
                    title: Text('Home',style: TextStyle(fontSize: 0)),
                  ),
                  new BottomNavigationBarItem(
                    icon: Column(
                      children: [
                        SizedBox(height: 1),
                        SvgPicture.asset(
                         shopping,
                          color: navigationNumProvider.getNum() == 1?Colors.black:Color(0xff888888),
                          height:  MediaQuery.of(context).size.height*(26/640),
                        ),
                        SizedBox(height: 12),
                      ],
                    ),
                    title: Text('Home',style: TextStyle(fontSize: 0)),
                  ),
                  new BottomNavigationBarItem(
                    icon: Column(
                      children: [
                        SizedBox(height: 1),
                        SvgPicture.asset(
                          coupon,

                          color: navigationNumProvider.getNum() == 2?Colors.black:Color(0xff888888),
                          height:  MediaQuery.of(context).size.height*(21/640),
                        ),
                        SizedBox(height: 12),
                      ],
                    ),
                    title: Text('Home',style: TextStyle(fontSize: 0)),
                  ),
                  new BottomNavigationBarItem(
                    icon: Column(
                      children: [
                        SizedBox(height: 1),
                        SvgPicture.asset(
                          setting,

                          color: navigationNumProvider.getNum() == 3?Colors.black:Color(0xff888888),
                          height:  MediaQuery.of(context).size.height*(22/640),
                        ),
                        SizedBox(height: 12),
                      ],
                    ),
                    title: Text('Home',style: TextStyle(fontSize: 0)),
                  ),

                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
