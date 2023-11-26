

import 'package:dress/productDetails.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  bool isSearch = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              expandedHeight: 300.0,
              floating: false,
              pinned: true,
              flexibleSpace: FlexibleSpaceBar(
                  centerTitle: true,
                stretchModes: [StretchMode.zoomBackground],
                expandedTitleScale: 10,
                background: Container(
                  height: 300,
                  color: Color(0xfff9d133),
                  child: Stack(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            height: 150,
                            decoration: BoxDecoration(
                                color: Colors.grey[100],
                              borderRadius: BorderRadius.only(topRight: Radius.circular(50),topLeft: Radius.circular(50))
                            ),
                          ),
                        ],
                      ),
                      Positioned(
                        bottom: 10,
                        left: 24,
                        right: 24,
                        child: Container(
                          height: 200,
                          width: MediaQuery.of(context).size.width*.8,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 10),
                            child: Column(
                              //mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  crossAxisAlignment: CrossAxisAlignment.center ,
                                  children: [
                                    Icon(Icons.settings,color: Color(0xff7e809a),)
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 16),
                                  child: Column(
                                    children: [
                                      Text('MahmoudGaber',style: TextStyle(color: Color(0xff1e1e36),fontSize: 18),),
                                      SizedBox(height: 4,),
                                      Text('Avater',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                                    ],
                                  ),
                                ),
                                Divider(),
                                Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 12),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Column(
                                        children: [
                                          Text('100',style: TextStyle(fontSize: 20,color: Color(0xfff9d133),fontWeight: FontWeight.bold),),
                                          SizedBox(height: 4,),
                                          Text('Point',style:TextStyle(color:Color(0xff7e809a),)),
                                        ],
                                      ),
                                      Container(
                                        height: 40,
                                        width: 1,
                                        color: Colors.grey[200],
                                      ),
                                      Column(
                                        children: [
                                          Text('270',style: TextStyle(fontSize: 20,color: Color(0xfff9d133),fontWeight: FontWeight.bold),),
                                          SizedBox(height: 4,),
                                          Row(
                                            children: [
                                              Icon(Icons.flag),
                                              SizedBox(width: 4,),
                                              Text('Egy',style:TextStyle(color:Color(0xff7e809a),)),
                                            ],
                                          )
                                        ],
                                      ),
                                      Container(
                                        height: 40,
                                        width: 1,
                                        color: Colors.grey[200],
                                      ),
                                      Column(
                                        children: [
                                          Text('2070',style: TextStyle(fontSize: 20,color: Color(0xfff9d133),fontWeight: FontWeight.bold),),
                                          SizedBox(height: 4,),
                                          Row(
                                            children: [
                                              Icon(Icons.wordpress),
                                              SizedBox(width: 4,),
                                              Text('Ranking',style:TextStyle(color:Color(0xff7e809a),)),
                                            ],
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                //Divider(height: 0,),
                              ],
                            ),
                          ),

                        ),
                      ),
                      Positioned(
                        top: MediaQuery.of(context).size.height*0.09,
                        left: MediaQuery.of(context).size.width*0.11,
                        child: CircleAvatar(
                          radius: 36,
                          child: Image.asset("assets/images/profile.png",fit: BoxFit.fill,height: 80,width: 80,),),
                      ),

                    ],
                  ),
                ),
              ),
            ),
          ];
        },
        body: SingleChildScrollView(
          physics: NeverScrollableScrollPhysics(),
          child: Container(
            color: Colors.grey[100],
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
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
                                  child: Text("Challenge Now", style: TextStyle(fontSize: 18,color: Colors.black),),
                                ),
                                style: TextButton.styleFrom(
                                  fixedSize: Size.fromHeight(55),
                                  backgroundColor: Color(0xfff9d133),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                )),
                          )]),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8,right: 8,top: 20, bottom: 8),
                    child: Text("Groups"),
                  ),
                  ListView.builder(
                    padding: EdgeInsets.zero,
                    shrinkWrap: true,
                    itemCount: 10,
                    physics: ScrollPhysics(),
                    itemBuilder: (context, index){
                      return Padding(
                        padding: EdgeInsets.symmetric(vertical: 1),
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Row(
                              children: [
                                Column(
                                  children: [
                                    Container(
                                      color: Colors.grey[100],
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(horizontal: 5,vertical: 4),
                                        child: CircleAvatar(
                                          radius: 14,
                                          child: Image.asset("assets/images/profile.png"),),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(width: 8,),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text('ِAvatar'),
                                    Row(
                                      children: List.generate(4, (index) {
                                        return Icon(Icons.star,size: 15,color: Colors.orange,);
                                      }),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  List<String> categoryText =[
    "كل",
    "اكسسوارات",
    "خواتم",
    "حقائب",
    "أحذية",
  ];

  List<String> dressImg =[
    "assets/images/dress1.png",
    "assets/images/dress2.png",
    "assets/images/dress3.png",
    "assets/images/dress4.png",
    "assets/images/dress1.png",
    "assets/images/dress3.png",
    "assets/images/dress2.png",
    "assets/images/dress4.png",
    "assets/images/dress1.png",
    "assets/images/dress3.png",
    "assets/images/dress2.png",
  ];

  List<String> dressImage =[
    "assets/images/img1.svg",
    "assets/images/Image.svg",
    "assets/images/img3.svg",
    "assets/images/img4.svg",
    "assets/images/img3.svg",
    "assets/images/Image.svg",
    "assets/images/img1.svg",
    "assets/images/img4.svg",
    "assets/images/img3.svg",
    "assets/images/Image.svg",
    "assets/images/img1.svg",
    "assets/images/img4.svg",
  ];

  List<String> searchImage =[
    "assets/images/searchModel.svg",
    "assets/images/searchModel2.svg",
    "assets/images/searchModel.svg",
    "assets/images/searchModel2.svg",
    "assets/images/searchModel.svg",
    "assets/images/searchModel2.svg",
  ];
}
