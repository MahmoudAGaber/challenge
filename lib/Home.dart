

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
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          elevation: 0.0,
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          title: Text("الصفحة الرئيسية",style: TextStyle(fontSize: 20, color: Color(0xff656565)),),
          centerTitle: true,
          actions: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: SvgPicture.asset("assets/images/menu.svg",height: 16,width: 16,),
            ),
          ],
          leading:Padding(
            padding: const EdgeInsets.all(16.0),
            child: InkWell(
              onTap: (){
                setState(() {
                  isSearch = !isSearch;
                });
              },
                child: isSearch
                    ?  Icon(Icons.notifications_none, color: Color(0xff656565))
                    :SvgPicture.asset("assets/images/search.svg",)),
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("مرحبا أميرة",style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Color(0xff484541)),),
                      Text("لنرى توصيات الفساتين لك....",style: TextStyle(color: Color(0xff979491)),)
                    ],
                  ),
                ),
                isSearch
                    ?Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 6),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width*.8,
                            child: TextField(
                              textDirection: TextDirection.rtl,
                              cursorColor: Colors.grey,
                              style: TextStyle(color: Colors.black),
                              decoration: InputDecoration(
                                  fillColor: Colors.white,
                                  filled: true,
                                  contentPadding: EdgeInsets.zero,
                                  prefixIcon: Padding(
                                    padding: const EdgeInsets.only(left: 12,right: 12),
                                    child: SvgPicture.asset("assets/images/search2.svg"),
                                  ),
                                  hintText: " بحث",
                                  hintStyle: TextStyle(color: Color(0xff979491,), fontSize: 12),
                                  enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      borderSide: BorderSide(
                                        color: Color(0xffECE9E7),
                                      )
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      borderSide: BorderSide(
                                          color: Theme.of(context).primaryColor
                                      )
                                  )
                              ),
                            ),
                          ),
                          SvgPicture.asset("assets/images/filter.svg"),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 18),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 6),
                            child: Row(
                              children: [
                                SvgPicture.asset("assets/images/star.svg"),
                                SizedBox(width: 4,),
                                Text("شائع حاليا",style: TextStyle(fontSize: 11, color: Color(0xff484541)),)
                              ],
                            ),
                          ),
                          SizedBox(height: 8,),
                          ListView.builder(
                            shrinkWrap: true,
                              itemCount: searchImage.length,
                              physics: NeverScrollableScrollPhysics(),
                              itemBuilder: (context,index){
                              return Padding(
                                padding: const EdgeInsets.symmetric(vertical: 2),
                                child: Container(
                                  width: 386,
                                  child: Card(
                                    color: Colors.white,
                                      child: Stack(
                                        children: [
                                          Column(
                                           // mainAxisAlignment: MainAxisAlignment.start,
                                           crossAxisAlignment: CrossAxisAlignment.stretch,
                                            children: [
                                              InkWell(
                                                onTap: (){
                                                  Navigator.push(context, MaterialPageRoute(builder: (context)=> ProductDetails()));
                                                },
                                                child: ClipRRect(
                                                  borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10)),
                                                  child: SvgPicture.asset(
                                                    searchImage[index],
                                                    width: 390,
                                                    fit: BoxFit.cover ,
                                                  ),
                                                ),
                                              ),
                                              SizedBox(height: 6),
                                              Padding(
                                                padding: const EdgeInsets.symmetric(horizontal: 14,vertical: 8),
                                                child: Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Text("فستان سهرة روز", style: TextStyle(fontSize: 10, color: Color(0xff484541))),
                                                    SizedBox(height: 4,),
                                                    Text("رقم الموديل GLD-32167", style: TextStyle(fontSize: 10, color: Color(0xff979491)),),
                                                    Divider(color: Color(0xffD8D8D8),),
                                                    Row(
                                                      crossAxisAlignment: CrossAxisAlignment.center,
                                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                      children: [
                                                        Text("\$1.230.00", style: TextStyle(fontSize: 18, color: Color(0xffB89367)),),
                                                        SvgPicture.asset("assets/images/cartInSearch.svg",height: 35,width: 35,),

                                                      ],
                                                    )

                                                  ],
                                                ),
                                              )
                                            ],
                                          ),
                                          Positioned(
                                            top: 6,
                                            left: 2,
                                            child: IconButton(
                                              onPressed: (){},
                                              icon: Icon(Icons.favorite, color: Color(0xffB59F7C),size: 28,),
                                            ),
                                          ),
                                        ],
                                      ),
                                  ),
                                ),
                              );
                          })
                        ],
                      ),
                    )
                  ],
                )
                :Column(
                  children: [
                    Container(
                      height: 158,
                      child: Stack(
                        children: [
                          Positioned(
                            bottom: 0,
                            left: 0,right: 0,
                            child: Container(
                              height: 142,
                              child: Card(
                                color: Color(0xffB59F7C),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      width: 113,
                                      decoration: BoxDecoration(
                                          color: Color(0xffA48B64),
                                          borderRadius: BorderRadius.only(
                                              topRight: Radius.circular(10),
                                              bottomRight: Radius.circular(10)
                                          )
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 12),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text("تاجر الآن واحصل على خصم فوري",style: TextStyle(color: Colors.white, fontSize: 12),),
                                          Row(
                                            children: [
                                              Text("ابدأ الآن",style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold,fontSize: 10),),
                                              SizedBox(width: 6,),
                                              SvgPicture.asset("assets/images/arrowLeft.svg")
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 2),
                                      child: TextButton(
                                          onPressed: (){},
                                          child: Text("جديدنا", style: TextStyle(fontSize: 8,color: Color(0xffB59F7C)),),
                                          style: TextButton.styleFrom(
                                            padding: EdgeInsets.zero,
                                            minimumSize: Size(46, 15),
                                            backgroundColor: Colors.white,
                                            shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(26),
                                            ),
                                          )),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                              bottom: 4,
                              right: 2,
                              child: SvgPicture.asset("assets/images/homeCardModel.svg")),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 14),
                      child: Container(
                        height: 58,
                        child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            shrinkWrap: true,
                            itemCount: categoryText.length,
                            itemBuilder:(context, index){
                              bool isSelected = index == 0;
                              return Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: InkWell(
                                  onTap: () {
                                    setState(() {
                                      isSelected = !isSelected; // Toggle the selected state
                                    });
                                  },
                                  child: Container(
                                      height: 42,
                                      decoration: BoxDecoration(
                                          color: isSelected ? Color(0xffB59F7C) : Color(0xffF6F6F6),
                                          borderRadius: BorderRadius.circular(10)
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(horizontal: 20,),
                                        child: Center(child: Text(categoryText[index],style: TextStyle(fontSize: 11, color: Color(0xff484541)),)),
                                      )
                                  ),
                                ),
                              );
                            }),
                      ),
                    ),
                    GridView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        childAspectRatio: 0.8, // Adjust this ratio based on your design requirements
                      ),
                      itemCount: dressImg.length,
                      itemBuilder: (context, index) {
                        var item = dressImg[index];
                        return Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: Container(
                            height: 225,
                            // color: Colors.grey,
                            child: Card(
                              color: Colors.white,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  Stack(
                                    children: [
                                      ClipRRect(
                                        borderRadius: BorderRadius.only(topRight: Radius.circular(10),topLeft: Radius.circular(10)),
                                        child: Image.asset(
                                          item,
                                          height: 170,
                                          width: 200,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      Positioned(
                                        top: 18,
                                        left: 12,
                                        child: Container(
                                          height: 40,
                                          width: 40,
                                          decoration: BoxDecoration(
                                            color: Color(0xffF4F2EF),
                                            borderRadius: BorderRadius.circular(10),
                                          ),
                                          child: IconButton(
                                            onPressed: (){},
                                            icon: Icon(Icons.favorite, color: index%2 ==0 ?Colors.red:Color(0xffD9D4CF),),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                  SizedBox(height: 6),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 8),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment: CrossAxisAlignment.end,
                                      children: [
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text("اطلالة تجذب الأنظار", style: TextStyle(fontSize: 10, color: Color(0xff979491)),),
                                            Text("فستان أبيض", style: TextStyle(fontSize: 10, color: Color(0xff484541)))
                                          ],
                                        ),
                                        Column(
                                          children: [
                                            Text("\$150.00", style: TextStyle(fontSize: 14, color: Color(0xffB89367)),)
                                          ],
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    )
                  ],
                )

              ],
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
