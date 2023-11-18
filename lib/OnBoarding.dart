

import 'package:dress/Login.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({super.key});

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        body: GestureDetector(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (contex)=> Login()));
          },
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/landingBackground.png"),
                  fit: BoxFit.cover
              )
            ),

            child: Stack(
              children: [
                Positioned(
                  top: 70,
                  child: Image.asset("assets/images/HomeText.png",
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                    fit: BoxFit.cover,),
                ),
              Positioned(
                top: 40,
                child: Image.asset("assets/images/HomeModel.png",
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                fit: BoxFit.cover,),
              ),
                Positioned(
                  top: 60,
                    right: MediaQuery.of(context).size.width*.36,
                    child: Row(
                      children: [
                        Container(
                            width: 60,
                            child: Text("Dress &Impress"
                              ,style: TextStyle(fontSize: 12),overflow: TextOverflow.clip,textDirection: TextDirection.ltr,)
                        ),
                        SizedBox(width: 4,),
                      SvgPicture.asset("assets/images/logo.svg",height: 35,width: 35,),


                      ],
                    ),
                ),
                Positioned(
                  bottom: 30,
                  left: 0,
                  right: 0,
                  child: Padding(
                    padding: const EdgeInsets.all(26.0),
                    child: Container(
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.5),
                          borderRadius: BorderRadius.circular(10)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 22),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                            Text("مزايا التطبيق",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                            SizedBox(height: 8,),
                              Text("هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى، حيث يمكنك أن تولد مثل هذا النص أو العديد من النصوص الأخرى إضافة إلى زيادة عدد الحروف التى يولدها التطبيق.إذا كنت تحتاج إلى عدد أكبر من الفقرات يتيح لك مولد النص العربى زيادة عدد ",
                                style: TextStyle(fontSize: 11, color: Colors.black54),)

              ],
                          ),
                        ),
                      ),
                    ),
                  ),
                )
              ],
      ),
          ),
        )
      ),
    );
  }
}
