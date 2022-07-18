import 'package:flutter/material.dart';
class LanguageSetting extends StatefulWidget {
  const LanguageSetting({Key? key}) : super(key: key);

  @override
  State<LanguageSetting> createState() => _LanguageSettingState();
}

class _LanguageSettingState extends State<LanguageSetting> {
  String dropdownValue = 'Englis()';

  List<String> a = ["United States","Viet Nam","中国",'ZamDizh'];
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        },
            icon: Icon(Icons.arrow_back_ios_new,size: 20,color: Colors.white,)) ,
        backgroundColor: Color.fromRGBO(105, 160, 58, 1),
        title: Text("Language Setting",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w600,color: Colors.white),),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 15,left: 20,right: 20),
        child: ListView(
          children: [
            Container(
              height: size.height*0.03,
              //color: Colors.red,
              child: Text('Language',style: TextStyle(color: Color.fromRGBO(166,161, 161, 1),fontSize:15, ),),

            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Container(
                height: size.height*0.07,
                width: size.width*0.9,
                //color: Colors.red,
                child: Row(
                  //mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                        width: size.width*0.2,
                       // color: Colors.amber,
                        child: Text('Language',style: TextStyle(color: Colors.black,fontSize:15,fontWeight: FontWeight.w600 ),)),
                    Container(
                      width: size.width*0.695,
                      height: size.height*0.1,

                      alignment: Alignment.centerRight,
                      //color: Colors.amber,

                      child: Row(
                        children: [
                          SizedBox(
                            width: size.width*0.18,
                          ),
                          Text("English",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w600),),
                          Text("(United Stated)",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w600,color: Colors.black38),),
                          IconButton(onPressed: (){}, icon:Icon(Icons.navigate_next))

                        ],
                      ),
                      //child: ,
                    )
                  ]

              ),
            ),),
          ],
        ),
      ),
    );
  }
}
