

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Cart extends StatefulWidget {
  const Cart({super.key});

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          automaticallyImplyLeading: false,
          title: Text("سـلـة المـشـتـريـات",style: TextStyle(fontSize: 20, color: Color(0xff656565)),),
          centerTitle: true,
          actions: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: SvgPicture.asset("assets/images/menu.svg",height: 16,width: 16,),
            ),
          ],
          leading:IconButton(onPressed: (){},
          icon: Icon(Icons.more_vert_outlined, color: Color(0xff656565),),),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 1),
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount:cartImg.length ,
                      itemBuilder: (contex, index){
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 2),
                      child: Container(
                        height: 95,
                        child: Card(
                          color: Colors.white,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                height: 95,
                                width: 90,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(10),
                                    bottomRight: Radius.circular(10)
                                  )
                                ),
                                child: Image.asset(cartImg[index], fit: BoxFit.cover,),
                              ),
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 12),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text("فساتين أعراس وسهرات", style: TextStyle(fontSize: 12, color: Color(0xff979491)),),
                                          Text("فستان أبيض", style: TextStyle(fontSize: 12, color: Color(0xff484541))),
                                          SizedBox(height: 6,),
                                          Text("\$150.00", style: TextStyle(fontSize: 18, color: Color(0xffB89367)),)
                                        ],
                                      ),
                                      Container(
                                        width: 72,
                                        height: 32,
                                        decoration: BoxDecoration(
                                         color: Color(0xffF0F0F0),
                                          borderRadius: BorderRadius.circular(10)
                                        ),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children: [
                                            SvgPicture.asset("assets/images/minus.svg"),
                                            SizedBox(width: 8,),
                                            Text("1",style: TextStyle(fontSize: 14,color: Color(0xff484541)),),
                                            SizedBox(width: 8,),
                                            SvgPicture.asset("assets/images/plus.svg"),

                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    );
                  }),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 2),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                        child: Text("كود خصم",style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold, color: Color(0xff484541)),),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                            color: Color(0xffECE9E7),
                          ),
                          borderRadius: BorderRadius.circular(10)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("GLDR3475T04", style: TextStyle(fontSize: 14, color: Color(0xff979491)),),
                              CircleAvatar(
                                radius: 14,
                                backgroundColor: Color(0xff2A9191),
                                child: Icon(Icons.check,color: Colors.white,),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 26),
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 8),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("العناصر المختارة",style: TextStyle(fontSize: 12, color: Color(0xff979491)),),
                              Text("\$1,250.00",style: TextStyle(fontSize: 18, color: Color(0xff484541) ),)
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 4),
                            child: Divider(color: Color(0xffD8D8D8),),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("الخصومات",style: TextStyle(fontSize: 12, color: Color(0xff979491)),),
                              Text("\$128.00",style: TextStyle(fontSize: 18, color: Color(0xff484541) ),)
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 4),
                            child: Divider(color: Color(0xffD8D8D8),),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("المجموع",style: TextStyle(fontSize: 12, color: Color(0xff979491)),),
                              Text("\$1,122.00",style: TextStyle(fontSize: 22, color: Color(0xffB59F7C) ),)
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 1),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: TextButton(
                              onPressed: (){
                              },
                              child: Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 12),
                                child: Text("الدفع الآن", style: TextStyle(fontSize: 13,color: Colors.white),),
                              ),
                              style: TextButton.styleFrom(
                                fixedSize: Size.fromHeight(48),
                                backgroundColor: Color(0xffB59F7C),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(26),
                                ),
                              )),
                        )]),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  List<String> cartImg =[
    "assets/images/cartImg1.png",
    "assets/images/cartImg2.png",
    "assets/images/cartImg3.png",

  ];
}
