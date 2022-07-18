import 'package:flutter/material.dart';
import 'package:flutter_app/my_Account/settings/account_settings.dart';
import 'package:flutter_app/my_Account/my_AccountScreen.dart';
import 'package:flutter_app/my_Account/language_settings/language_setting.dart';
import 'package:flutter_app/my_Account/notification_settings/notification_setting.dart';
import 'package:flutter_app/my_Account/change_address/change_addesssetting.dart';
class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(105, 160, 58, 1),
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        },
            icon: Icon(Icons.arrow_back_ios_new,size: 20,color: Colors.white,)) ,
        title: Text("Settings",style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.w600),),
      ),
      body: Container(
        //color: Colors.amber,
        child: ListView(
          children: [
            Container(
              color: Colors.white,
              height: size.height*0.07,
              width: double.infinity,
              child: TextButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> AccountSetting()));
              },
                  child: Row(
                    children: [
                      SizedBox(width: 20,),
                      ImageIcon(AssetImage("assets/images/ic_profile.png"),color: Color.fromRGBO(105, 160, 58, 1),),
                      SizedBox(width: 10,),
                      Text("  Account",style: TextStyle(color: Colors.black,fontSize:15 ),),
                    ],
                  )),

            ),
            Container(height: 1,width: double.infinity,color: Color.fromRGBO(209, 209, 209, 1)),
            Container(
              color: Colors.white,
              height: size.height*0.07,
              width: double.infinity,
              child: TextButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> NotificationSetting()));
              },
                  child: Row(
                    children: [
                      SizedBox(width: 20,),
                      ImageIcon(AssetImage("assets/images/ic_alarmsetting.png"),color: Color.fromRGBO(105, 160, 58, 1),),
                      SizedBox(width: 10,),
                      Text("  Notification",style: TextStyle(color: Colors.black,fontSize:15 ),),
                    ],
                  )),

            ),
            Container(height: 1,width: double.infinity,color: Color.fromRGBO(209, 209, 209, 1)),
            Container(
              color: Colors.white,
              height: size.height*0.07,
              width: double.infinity,
              child: TextButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> LanguageSetting()));
              },
                  child: Row(
                    children: [
                      SizedBox(width: 20,),
                      ImageIcon(AssetImage("assets/images/ic_language.png"),color: Color.fromRGBO(105, 160, 58, 1),),
                      SizedBox(width: 10,),
                      Text("  Language",style: TextStyle(color: Colors.black,fontSize:15 ),),
                    ],
                  )),

            ),
            Container(height: 1,width: double.infinity,color: Color.fromRGBO(209, 209, 209, 1)),
            Container(
              color: Colors.white,
              height: size.height*0.07,
              width: double.infinity,
              child: TextButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> ChangeAddress()));
              },
                  child: Row(
                    children: [
                      SizedBox(width: 20,),
                      ImageIcon(AssetImage("assets/images/ic_changaAddress.png"),color: Color.fromRGBO(105, 160, 58, 1),),
                      SizedBox(width: 10,),
                      Text("  Change Address",style: TextStyle(color: Colors.black,fontSize:15 ),),
                    ],
                  )),

            ),
          ],
        ),
      ),
    );
  }
}
