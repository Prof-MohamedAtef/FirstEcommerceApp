import 'package:project4/widgets/default_text.dart';
import 'package:flutter/material.dart';

import 'model/onboarding_model.dart';

class BuilderOnBoarding extends StatelessWidget {
   OnBoardingModel onBoardingModel;
   BuilderOnBoarding({super.key ,required this.onBoardingModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:const  EdgeInsets.all(20),
      height: double.infinity,
      width: double.infinity ,
      color: Colors.grey[200],
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(onBoardingModel.image),
         const SizedBox(height:40,),
         DefaultText(text: onBoardingModel.dis ,
           fontWeight: FontWeight.w600,
             color: Colors.grey, fontSize: 15, )
        ],

      ),
    );
  }
}
