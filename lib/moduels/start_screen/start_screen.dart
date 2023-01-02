import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:irl_graduation_project/moduels/home_page/home_screen.dart';

class StartScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) =>
      SafeArea(child:
      IntroductionScreen(
        pages: [
          PageViewModel(
            title: 'IN REAL LIFE',
            body: 'To Bring You A Real Beauty Life ... ',
            image: buildImage('assets/images/IRL (5) 1.png'),
            decoration: getPageDecoration(),
          ), PageViewModel(
            title: 'IN REAL LIFE',
            body: 'Easily brows For products from your favorite cosmetic stores ... ',
            image: buildImage('assets/images/Group 121.png'),
            decoration: getPageDecoration(),
          ), PageViewModel(
            title: 'IN REAL LIFE',
            body: 'Save time and hassle with our convenient booking app! ',
            image: buildImage('assets/images/Group 1.png'),
            decoration: getPageDecoration(),
          )
        ],
        done:Text('Next',style: TextStyle(fontWeight:FontWeight.w700,color: Colors.brown,fontFamily: 'Lora',fontSize: 20),),
        onDone: (){
          Navigator.push(context, MaterialPageRoute(builder:(context) => HomeScreen(), ));
        },
        showSkipButton: true,
        skip: Text('Skip',style: TextStyle(color: Colors.brown),),
        next: Icon(Icons.arrow_forward,color: Colors.brown,),
        showNextButton: true,
        dotsDecorator: getDotDecoration(),
        animationDuration: 7,
      )

      );

  Widget buildImage(String path)=>Center(child: Image.asset(path,width:600,height: 300,),);
  DotsDecorator getDotDecoration()=>DotsDecorator(
    activeShape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24),),
    color: Colors.brown.shade300,
    activeColor: Colors.brown,
    activeSize: Size(20,10),
    size: Size(10,10),
  );

  PageDecoration getPageDecoration()=>PageDecoration(
    titleTextStyle: TextStyle(fontSize: 50,fontWeight: FontWeight.bold,fontFamily: 'Lora',color: Colors.brown.shade700),
    bodyTextStyle: TextStyle(fontSize: 35,fontFamily: 'Lora',fontWeight: FontWeight.w500),
    // descriptionPadding:EdgeInsets.all(16).copyWith(bottom: 0),
    imagePadding: EdgeInsets.fromLTRB(0, 0, 0,70),
    pageColor: Colors.brown.shade200,


  );
}