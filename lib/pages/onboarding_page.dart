import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../bulider_onboarding.dart';
import '../model/onboarding_model.dart';
import '../widgets/default_text.dart';

class OnBoardingScreen extends StatefulWidget{
  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  var pageController = PageController();

  bool isLast = false;
  int i = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  Colors.grey[200],
      appBar: AppBar(
        systemOverlayStyle: const SystemUiOverlayStyle(
            statusBarColor : Colors.grey
        ),
        //backgroundColor: Colors.grey[200],
        backgroundColor: Colors.transparent,
        actions: [
          TextButton(onPressed: (){
            Navigator.pushAndRemoveUntil(context,
                MaterialPageRoute(builder: (_)=>
                const LoginPage()),
                    (route) => false);
          },
              child: DefaultText(text:"Skip",
                fontSize: 20,color: Colors.teal,
                fontWeight: FontWeight.w600,))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          // crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height *0.7 ,
              //width: MediaQuery.of(context).size.width,
              child: PageView.builder(
                controller: pageController,
                itemCount: onBoardingItem.length,
                itemBuilder: (context ,index){
                  return BuilderOnBoarding(
                    onBoardingModel: onBoardingItem[index],);
                },
                onPageChanged: (int index){
                  if(index == onBoardingItem.length-1){
                    setState(() {
                      isLast= true;
                      CacheHelper.putBool(value: isLast ,
                          key:SharedKeys.onBoardingIsLast ); // save

                      // CacheHelper.putInt(value: i, key: 1);
                      // CacheHelper.getInt(key: 1);
                    });

                  }else{
                    setState(() {
                      isLast = false;
                    });

                  }

                },
              ),
            ),
            // Expanded(
            //   child: Container(
            //     // height: 100,
            //     color: Colors.cyan,
            //   ),
            // )
            SmoothPageIndicator(
              controller: pageController,
              count:  onBoardingItem.length,
              axisDirection: Axis.horizontal,
              effect: const JumpingDotEffect(
                dotHeight: 20,
                dotWidth: 20,
                jumpScale: .7,
                verticalOffset: 15,
              ),

              // const SlideEffect(
              //     spacing:  8.0,
              //     radius:  5.0,
              //     dotWidth:  24.0,
              //     dotHeight:  16.0,
              //     paintStyle:  PaintingStyle.stroke,
              //     strokeWidth:  1.5,
              //     dotColor:  Colors.grey,
              //     activeDotColor:  Colors.indigo
              // ),
            ),
            const SizedBox(height: 20,),
            Align(
              alignment: Alignment.topRight,
              child: Visibility(
                visible: isLast, // condition
                // replacement: Text("HI"),
                child: ElevatedButton(onPressed: (){},
                    child: DefaultText(text: "Next",fontSize: 17,)),
              ),
            )
          ],
        ),
      ),
    );
  }
}