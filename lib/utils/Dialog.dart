import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sare/constants/Sizes.dart';
import 'package:sare/screen/BottomNavigationScreen.dart';
import 'package:sare/screen/MainScreen.dart';

void OkDialog(BuildContext context,String title, String content, ) {

  showDialog(
      context: context,
      child:  CupertinoAlertDialog(
        title: Text(title,style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 18),),
        content: Column(
          children: [
            SizedBox(height: size.height*(5/640),),
            Text(content,style: TextStyle(fontSize: 14,color: Color(0xff666666)),),
          ],
        ),
        actions: <Widget>[
          CupertinoDialogAction(
              textStyle: TextStyle(color: Colors.red),
              isDefaultAction: true,
              onPressed: () async {
                Navigator.pop(context);
              },
              child: Text("확인",style: TextStyle(color: Colors.black),)
          ),
        ],
      ));
}