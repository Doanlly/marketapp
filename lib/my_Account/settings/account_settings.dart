import 'package:flutter/material.dart';
import 'package:flutter_app/my_Account/settings/security_settings.dart';
import 'package:flutter_app/my_Account/settings/deactivate_account.dart';
import 'package:flutter_app/my_Account/settings/delete_account.dart';
import 'package:flutter_app/my_Account/Settings.dart';

class AccountSetting extends StatefulWidget {
  const AccountSetting({Key? key}) : super(key: key);

  @override
  State<AccountSetting> createState() => _AccountSettingState();
}

class _AccountSettingState extends State<AccountSetting> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back_ios_new,
              size: 20,
              color: Colors.white,
            )),
        backgroundColor: Color.fromRGBO(105, 160, 58, 1),
        title: Text(
          "Account Setting",
          style: TextStyle(
              color: Colors.white, fontSize: 15, fontWeight: FontWeight.w600),
        ),
      ),
      body: Container(
        child: ListView(
          children: [
            Container(
              color: Colors.white,
              height: size.height * 0.07,
              width: double.infinity,
              child: TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Security()));
                  },
                  child: Row(
                    children: [
                      SizedBox(
                        width: 20,
                      ),
                      ImageIcon(
                        AssetImage("assets/images/ic_secure.png"),
                        color: Color.fromRGBO(105, 160, 58, 1),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "  Security",
                        style: TextStyle(color: Colors.black, fontSize: 15),
                      ),
                    ],
                  )),
            ),
            Container(
                height: 1,
                width: double.infinity,
                color: Color.fromRGBO(209, 209, 209, 1)),
            Container(
              color: Colors.white,
              height: size.height * 0.07,
              width: double.infinity,
              child: TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Deactiavate()));
                  },
                  child: Row(
                    children: [
                      SizedBox(
                        width: 20,
                      ),
                      ImageIcon(
                        AssetImage("assets/images/ic_delete1.png"),
                        color: Color.fromRGBO(105, 160, 58, 1),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "  Deactivate Account",
                        style: TextStyle(color: Colors.black, fontSize: 15),
                      ),
                    ],
                  )),
            ),
            Container(
                height: 1,
                width: double.infinity,
                color: Color.fromRGBO(209, 209, 209, 1)),
            Container(
              color: Colors.white,
              height: size.height * 0.07,
              width: double.infinity,
              child: TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DeleteAccount()));
                  },
                  child: Row(
                    children: [
                      SizedBox(
                        width: 20,
                      ),
                      ImageIcon(
                        AssetImage("assets/images/ic_delete2.png"),
                        color: Color.fromRGBO(105, 160, 58, 1),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "  Delete Account",
                        style: TextStyle(color: Colors.black, fontSize: 15),
                      ),
                    ],
                  )),
            ),
            Container(
                height: 1,
                width: double.infinity,
                color: Color.fromRGBO(209, 209, 209, 1)),
          ],
        ),
      ),
    );
  }
}
