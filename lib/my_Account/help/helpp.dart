import 'package:flutter/material.dart';
class Help extends StatefulWidget {
  const Help({Key? key}) : super(key: key);

  @override
  State<Help> createState() => _HelpState();
}

class _HelpState extends State<Help> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        },
            icon: Icon(Icons.arrow_back_ios_new,size: 20,color: Colors.white,)) ,
        backgroundColor:  Color.fromRGBO(105, 160, 58, 1),
        title: Text("Help",style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.w600),),
      ),
      body: Container(
        height: size.height*0.8,
        //color: Colors.greenAccent,
        width: size.width,
        alignment: Alignment.center,
        child: Padding(
          padding: const EdgeInsets.all(22.0),
          child: Align(
            alignment: Alignment.topLeft,
            child: Text("""
Lorem Ipsum is simply dummy text of the printing 
and typesetting industry. Lorem Ipsum has been 
the industry’s standard dummy text ever since the 
1500s, when an unknown printer took a galley of 
type and scrambled it to make a type specimen 
book. It has survived not only five centuries, but 
also the leap into electronic typesetting, remaining 
essentially unchanged. It was popularised in the 
1960s with the release of Letraset sheets containing 
Lorem Ipsum passages, and more recently with 
desktop publishing software like Aldus PageMaker 
including versions of Lorem Ipsum.
Lorem Ipsum is simply dummy text of the printing 
and typesetting industry. Lorem Ipsum has been 
the industry’s standard dummy text ever since the 
1500s, when an unknown printer took a galley of 
type and scrambled it to make a type specimen 
book. It has survived not only five centuries, but 
also the leap into electronic typesetting, remaining 
essentially unchanged. It was popularised in the 
1960s with the release of Letraset sheets containing 
Lorem Ipsum passages, and more recently with 
desktop publishing software like Aldus PageMaker 
including versions of Lorem Ipsum.
            """,
            style: TextStyle(fontSize:15.0 ),),
          ),
        ),
      ),
    );
  }
}
