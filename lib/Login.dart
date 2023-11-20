

import 'package:dress/Registration.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
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
                  child: Text('Sign In',style: TextStyle(fontSize: 32,color: Colors.white),),
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
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text("Forget password?",style: TextStyle(fontSize: 13,color: Color(0xff7e809a),),),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 18),
                  child: Row(
                    children: [
                      Expanded(
                        child: TextButton(
                            onPressed: (){},
                            child: Text("Sign In", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold,color: Colors.white),),
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
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 24),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(width: MediaQuery.of(context).size.width*.38, height: 0.6,color:Color(0xff7e809a)),
                      Text(" or ",style: TextStyle(fontSize: 13,color: Color(0xff7e809a)),),
                      Container(width: MediaQuery.of(context).size.width*.38,height: 0.6,color:Color(0xff7e809a)),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 18),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        backgroundColor: Color(0xfff9d133),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: SvgPicture.asset("assets/images/apple.svg",height: 50,width: 50,color: Colors.white,),
                          )),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 24),
                        child: CircleAvatar(
                            //0xffF0A500
                            backgroundColor: Color(0xfff9d133),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: SvgPicture.asset("assets/images/facebook.svg",height: 50,width: 50,color: Colors.white,),
                            )),
                      ),
                      CircleAvatar(
                          backgroundColor: Color(0xfff9d133),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: SvgPicture.asset("assets/images/google.svg",height: 50,width: 50,color: Colors.white,),
                          )),
                    ],
                  ),
                ),
                Flexible(
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 60),
                    child: InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (contex)=> Registration()));
                      },
                        child: Align(
                          alignment: Alignment.bottomCenter,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Don't have an account?",style: TextStyle(fontSize: 11,color: Color(0xff7e809a)),),
                          Text(" Create new one",style: TextStyle(fontSize: 11,color: Color(0xfff9d133)),),

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
