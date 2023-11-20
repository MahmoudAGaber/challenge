

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
      textDirection: TextDirection.ltr,
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              color: Color(0xff1e1e36)
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 40,right: 40, top: 40),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 40),
                  child: Text('Sign Up',style: TextStyle(fontSize: 32,color: Colors.white),),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 51,
                      child: TextFormField(
                        textInputAction: TextInputAction.done,
                        keyboardType: TextInputType.phone,
                        textDirection: TextDirection.rtl,
                        cursorColor: Colors.grey,
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(horizontal: 20),
                            fillColor: Color(0xff242746),
                            filled: true,
                            hintTextDirection: TextDirection.ltr,
                            hintText: "UserName",
                            hintStyle: TextStyle(color: Color(0xff7e809a),fontSize: 11),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(26),
                                borderSide: BorderSide.none
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
                SizedBox(height: 26,),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 51,
                      child: TextFormField(
                        textInputAction: TextInputAction.done,
                        keyboardType: TextInputType.phone,
                        textDirection: TextDirection.rtl,
                        cursorColor: Colors.grey,
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(horizontal: 20),
                            fillColor: Color(0xff242746),
                            filled: true,
                            hintTextDirection: TextDirection.ltr,
                            hintText: "Email",
                            hintStyle: TextStyle(color: Color(0xff7e809a),fontSize: 11),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(26),
                                borderSide: BorderSide.none
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
                SizedBox(height: 26,),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 51,
                      child: TextFormField(
                        textInputAction: TextInputAction.done,
                        keyboardType: TextInputType.phone,
                        textDirection: TextDirection.rtl,
                        cursorColor: Colors.grey,
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(horizontal: 20),
                            fillColor: Color(0xff242746),
                            filled: true,
                            hintTextDirection: TextDirection.ltr,
                            hintText: "Password",
                            hintStyle: TextStyle(color: Color(0xff7e809a),fontSize: 11),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(26),
                                borderSide: BorderSide.none
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
                SizedBox(height: 26,),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 51,
                      child: TextFormField(
                        textInputAction: TextInputAction.done,
                        keyboardType: TextInputType.phone,
                        textDirection: TextDirection.rtl,
                        cursorColor: Colors.grey,
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(horizontal: 20),
                            fillColor: Color(0xff242746),
                            filled: true,
                            hintTextDirection: TextDirection.ltr,
                            hintText: "Confirm Password",
                            hintStyle: TextStyle(color: Color(0xff7e809a),fontSize: 11),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(26),
                                borderSide: BorderSide.none
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
                  padding: const EdgeInsets.symmetric(vertical: 18,),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        child:Checkbox(value: true, onChanged: (value){}),
                      ),
                      Flexible(
                        child: RichText(
                            text: TextSpan(
                              style:TextStyle(height: 1.2),
                                children: [
                                  TextSpan(text: "By singing up you accept the ",style:  TextStyle(fontSize: 13,color: Color(0xff7e809a))),
                                  TextSpan(text: "Terms of service ",style:  TextStyle(fontSize: 13,color: Color(0xfff9d133))),
                                  TextSpan(text: "       and ",style:  TextStyle(fontSize: 13,color: Color(0xff7e809a))),
                                  TextSpan(text: "Privacy Policy",style:  TextStyle(fontSize: 13,color: Color(0xfff9d133)))


                                ])),
                      )
                    ],
                  )

                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 18),
                  child: Row(
                    children: [
                      Expanded(
                        child: TextButton(
                            onPressed: (){},
                            child: Text("Sign Up", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold,color: Colors.white),),
                            style: TextButton.styleFrom(
                              fixedSize: Size.fromHeight(50),
                              backgroundColor: Color(0xfff9d133),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(26),
                              ),
                            )),
                      ),
                    ],
                  ),
                ),

                Flexible(
                  child: Padding(
                      padding: const EdgeInsets.only(bottom: 60),
                      child: InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (contex)=> Login()));
                        },
                        child: Align(
                          alignment: Alignment.bottomCenter,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Aleardy have an account?",style: TextStyle(fontSize: 11,color: Color(0xff7e809a)),),
                              Text(" Sign In",style: TextStyle(fontSize: 11,color: Color(0xfff9d133)),),

                            ],
                          ),
                        ),
                      )
                  ),
                )
              ],
            ),
          ),),
      ),
    );
  }
}
