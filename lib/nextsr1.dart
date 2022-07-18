import 'package:flutter/material.dart';
import 'package:flutter_app/indicator screen/page1.dart';
import "package:flutter_app/loginmarket/home.dart";
import 'package:flutter_app/indicator screen/page2.dart';
import 'package:flutter_app/indicator screen/page3.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
class Nextsr1 extends StatefulWidget {

  @override
  State<Nextsr1> createState() => _Nextsr1State();
}

class _Nextsr1State extends State<Nextsr1> {
  final _controller = PageController();
  bool checkpage = true;
  bool checkpagemain = true;
  PageController _pageViewController = PageController(initialPage: 0);
  int pageIndex = 0;
  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController();
    return Stack(

        children: [
          PageView(
            onPageChanged: (int index){
              setState((){
                if(index <=1 )
                  checkpage = true;


                else
                  checkpage = false;
                pageIndex = index;

              });
            },
            /// [PageView.scrollDirection] defaults to [Axis.horizontal].
            /// Use [Axis.vertical] to scroll vertically.
            controller: _pageViewController,// _controller,
            //physics: NeverScrollableScrollPhysics(),
            children:  <Widget>[
              Page1(),
              Page2(),
              Page3(),

            ],
          ),

          Center(
            child: Container(
              margin: EdgeInsets.only(top: 300),
              child: SmoothPageIndicator(
                controller:_pageViewController,//_controller,//_pageViewController,
                count: 3,
                //axisDirection: Axis.vertical,
                //_controller.nextPage(duration: duration, curve: curve)
                effect:
                  const SlideEffect(
                    dotWidth:10,
                    dotHeight: 10,
                    offset: 10,
                    dotColor: Colors.grey,
                    strokeWidth: 1.5,
                    paintStyle: PaintingStyle.stroke,
                    activeDotColor:Color.fromRGBO(105, 160, 58, 1),

                  ),
                // SwapEffect(  // conra  nhieu dang do effect smoothpage....rrr
                //   activeDotColor: Colors.black54,
                //   dotColor: Colors.yellow,
                //   dotHeight: 10,
                //   dotWidth: 10,
                // ),
              ),
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top :550),
              child: SizedBox(
                  height: 45,
                  width: 130,

                  child: ElevatedButton(onPressed: (){
                    checkpage ?
                    _pageViewController.nextPage(duration: Duration(milliseconds: 500), curve: Curves.bounceInOut) : Navigator.push(
                        context, MaterialPageRoute(builder: (context)=>Homepage() ));

                  },

                    style: ElevatedButton.styleFrom(
                        primary:const Color.fromRGBO(105, 160, 58, 1)
                    ),
                    child: Text(
                      checkpage ? "Next" : "Get stated", style: TextStyle(fontSize:14,fontWeight: FontWeight.bold, color: Colors.white ),
                    )
                    ,)
              ),
            ),
          )
        ],

    );
  }
}
