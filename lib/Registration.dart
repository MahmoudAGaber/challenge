

import 'package:dress/AccountType.dart';
import 'package:dress/Login.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Registration extends StatefulWidget {
  const Registration({super.key});

  @override
  State<Registration> createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
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
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 40,right: 40, top: 50),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20),
                      child: SvgPicture.asset("assets/images/logo.svg",height: 53,width: 67,),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 12),
                      child: Text('اشتـراك',style: TextStyle(fontSize: 32,color: Color(0xff656565)),),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 14,vertical: 12),
                          child: Text("اسم المستخدم",style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold,color: Color(0xff484541)),),
                        ),
                        Container(
                          height: 51,
                          child: TextFormField(
                            textInputAction: TextInputAction.done,
                            keyboardType: TextInputType.phone,
                            textDirection: TextDirection.rtl,
                            cursorColor: Colors.grey,
                            decoration: InputDecoration(
                                contentPadding: EdgeInsets.symmetric(horizontal: 20),
                                fillColor: Colors.white,
                                filled: true,
                                hintTextDirection: TextDirection.rtl,
                                hintText: "الاسم",
                                hintStyle: TextStyle(color: Color(0xff484541),fontSize: 11),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(26),
                                    borderSide: BorderSide(
                                      color: Colors.white,
                                    )
                                ),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(26),
                                    borderSide: BorderSide(
                                        color: Theme.of(context).primaryColor
                                    )
                                )
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 14,vertical: 12),
                          child: Text("كلمة المرور",style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold,color: Color(0xff484541)),),
                        ),
                        Container(
                          height: 51,
                          child: TextFormField(
                            textInputAction: TextInputAction.done,
                            keyboardType: TextInputType.phone,
                            textDirection: TextDirection.rtl,
                            cursorColor: Colors.grey,
                            decoration: InputDecoration(
                                contentPadding: EdgeInsets.symmetric(horizontal: 20),
                                fillColor: Colors.white,
                                filled: true,
                                hintTextDirection: TextDirection.rtl,
                                hintText: "كلمة المرور الخاصة بك",
                                hintStyle: TextStyle(color: Color(0xff484541),fontSize: 11),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(26),
                                    borderSide: BorderSide(
                                      color: Colors.white,
                                    )
                                ),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(26),
                                    borderSide: BorderSide(
                                        color: Theme.of(context).primaryColor
                                    )
                                )
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 14,vertical: 12),
                          child: Text("كلمة المرور",style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold, color: Color(0xff484541)),),
                        ),
                        Container(
                          height: 51,
                          child: TextFormField(
                            textInputAction: TextInputAction.done,
                            keyboardType: TextInputType.phone,
                            textDirection: TextDirection.rtl,
                            cursorColor: Colors.grey,
                            decoration: InputDecoration(
                                contentPadding: EdgeInsets.symmetric(horizontal: 20),
                                fillColor: Colors.white,
                                filled: true,
                                hintTextDirection: TextDirection.rtl,
                                hintText: "كلمة المرور الخاصة بك",
                                hintStyle: TextStyle(color: Color(0xff484541),fontSize: 11),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(26),
                                    borderSide: BorderSide(
                                      color: Colors.white,
                                    )
                                ),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(26),
                                    borderSide: BorderSide(
                                        color: Theme.of(context).primaryColor
                                    )
                                )
                            ),
                          ),
                        ),
                      ],
                    ),

                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 50),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            TextButton(
                                onPressed: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (contex)=> AccountType()));
                                },
                                child: Text("اشتراك", style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold,color: Colors.white),),
                                style: TextButton.styleFrom(
                                  fixedSize: Size(279,59),
                                  backgroundColor: Colors.black,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(26),
                                  ),
                                ))]),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 0),
                      child: InkWell(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (contex)=> Login()));
                          },
                          child: Text("لديك حساب؟ سجل الآن",style: TextStyle(fontSize: 13,color: Color(0xff484541)),)),
                    ),

                  ],
                ),
              ),

              Expanded(
                child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Image.asset("assets/images/test.png",)),
              )
            ],
          ),),
      ),
    );
  }
}
