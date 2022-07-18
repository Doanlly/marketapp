import 'package:flutter/material.dart';
class ChangeAddress extends StatefulWidget {
  const ChangeAddress({Key? key}) : super(key: key);

  @override
  State<ChangeAddress> createState() => _ChangeAddressState();
}

class _ChangeAddressState extends State<ChangeAddress> {
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
        title: Text("Change Address",style: TextStyle(fontSize: 15.5,fontWeight: FontWeight.w600,color: Colors.white),),
      ),
      body: Container(

        padding: EdgeInsets.only(top: 20,right: 15,left: 15),
          alignment: Alignment.bottomLeft,
          child: Column(

            children: [
              Container(
                padding: EdgeInsets.only(bottom: 15),
                child: Align(
                    alignment: Alignment.bottomLeft,
                    child: Text("Address",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600),)),
              ),
              Container(

                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(14),
                    border: Border.all(color: Colors.black26)
                ),
                padding: EdgeInsets.only(top: 5,left: 10),
                child: TextField(
                  minLines: 5,
                  maxLines: 6,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                  ),
                ),
              ),
              Container(height: size.height*0.2,),
              Container(
                //padding: EdgeInsets.only(top:200 ),
                width:double.infinity ,
                height: size.height*0.065,
                decoration: BoxDecoration(
                    color: Color.fromRGBO(105, 160, 58, 1),
                    border: Border.all(width: 0,color: Color.fromRGBO(105, 160, 58, 1),)
                    ,borderRadius: BorderRadius.circular(10)
                ),
                child: TextButton(onPressed: (){}, child: Text(
                  "CHANGE",style:
                TextStyle(color: Colors.white,fontWeight: FontWeight.w600,fontFamily: "Poppin",fontSize: 15),

                )),
              )
            ],
          ),
      ),
    );
  }
}
