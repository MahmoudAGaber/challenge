

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'Requirements.dart';

class AccountType extends StatefulWidget {
  const AccountType({super.key});

  @override
  State<AccountType> createState() => _AccountTypeState();
}

class _AccountTypeState extends State<AccountType> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/background2.png",),
                  fit: BoxFit.fill
              )
          ),
          child: Stack(
            children: [
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 40,right: 40, top: 50,bottom: 30),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 18),
                          child: SvgPicture.asset("assets/images/logo.svg",height: 53,width: 67,),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 12),
                          child: Text('نوع الحساب',style: TextStyle(fontSize: 32,color: Color(0xff656565)),),
                        ),
                        SizedBox(height: 12,),

                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 12),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                TextButton(
                                    onPressed: (){
                                      Navigator.push(context, MaterialPageRoute(builder: (contex)=> Requirements()));
                                    },
                                    child: Padding(
                                      padding: const EdgeInsets.only(right: 12,left: 2),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text("مقدمة خدمة", style: TextStyle(fontSize: 13,color: Colors.white),),
                                          Icon(Icons.arrow_forward_ios,color: Colors.white,size: 18,)
                                        ],
                                      ),
                                    ),
                                    style: TextButton.styleFrom(
                                      fixedSize: Size(279,59),
                                      backgroundColor: Color(0xffB59F7C),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(26),
                                      ),
                                    ))]),
                        ),

                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 12),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                TextButton(
                                    onPressed: (){
                                      Navigator.push(context, MaterialPageRoute(builder: (contex)=> Requirements()));

                                    },
                                    child: Padding(
                                      padding: const EdgeInsets.only(right: 12,left: 2),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text("طـالـبـة خـدمـة", style: TextStyle(fontSize: 13,color: Colors.black),),
                                          Icon(Icons.arrow_forward_ios,color: Colors.black,size: 18,)
                                        ],
                                      ),
                                    ),
                                    style: TextButton.styleFrom(
                                      fixedSize: Size(279,59),
                                      backgroundColor: Colors.white,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(26),
                                      ),
                                    ))]),
                        ),

                      ],
                    ),
                  ),

                ],
              ),
              Positioned(
                top: MediaQuery.of(context).size.height*.48,
                  left: 0,
                  right: 0,
                  child: SvgPicture.asset("assets/images/ATModel.svg")),
              Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Image.asset("assets/images/test.png",),),
            ],
          ),),
      ),
    );
  }
}
