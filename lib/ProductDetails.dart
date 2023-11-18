
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ProductDetails extends StatefulWidget {
  const ProductDetails({super.key});

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      //productBottomSheet(context);
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return  Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          automaticallyImplyLeading: false,
          title: Text("مجوهرات",style: TextStyle(fontSize: 20, color: Color(0xff656565)),),
          centerTitle: true,
          actions: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: IconButton(onPressed: (){Navigator.pop(context);},icon: Icon(Icons.arrow_forward_outlined,color: Color(0xff656565),),)
            ),
          ],
          leading:IconButton(onPressed: (){},
            icon: Icon(Icons.more_vert_outlined, color: Color(0xff656565),),),
        ),
        body: SingleChildScrollView(
          child:Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Card(
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 14),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("خاتم ألماس", style: TextStyle(fontSize: 13, color: Color(0xff484541))),
                                  SizedBox(height: 4,),
                                  Text("رقم الموديل GLD-32167", style: TextStyle(fontSize: 13, color: Color(0xff979491)),),
                                ],
                              ),
                               Icon(Icons.favorite, color: Colors.red,size: 28,),

                            ],
                          ),
                        ),
                        SizedBox(height: 6,),
                        ClipRRect(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          child: Image.asset(
                            "assets/images/productDetails.png",
                            height: 234,
                            fit: BoxFit.fitWidth ,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 14),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: List.generate(cartImage.length, (index) => cartWidget(index)),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 30),
                          child: Text("تشكيلة واسعة من المجوهرات الراقية التي بالتأكيد ستلبي                    ذوقك الرفيع", style: TextStyle(fontSize: 12, color: Color(0xff979491)),),
                        ),
                      ],
                    ),
                  ),
            ),
                ),
              ),
              Container(
                height: 294,
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(topRight: Radius.circular(16),topLeft: Radius.circular(16))
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 12),
                          child: Center(
                            child: Container(
                              width: 45,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4),
                                border: Border.all(
                                  width: 3,
                                  strokeAlign: BorderSide.strokeAlignCenter,
                                  color: Color(0xffF0F0F0),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 12),
                          child: Text("مقاس المجوهرات", style: TextStyle(fontSize: 13, color: Color(0xff979491)),),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 4),
                          child: Wrap(
                            runSpacing: 12,
                            spacing: 12,
                            children: List.generate(strings.length, (index) => ringsMeasurment(index)),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 12),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Expanded(
                                  child: TextButton(
                                      onPressed: (){
                                      },
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(horizontal: 12),
                                        child: Text("أضف للسلة", style: TextStyle(fontSize: 13,color: Colors.white),),
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

            ],
          ),
        ),
      ),
    );
  }
  void productBottomSheet(BuildContext context) {
    showModalBottomSheet<void>(
        isScrollControlled:true,
      isDismissible: false,
      useRootNavigator: true,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10)
        ),
        context: context,
        builder: (BuildContext context) {
          return Directionality(
            textDirection: TextDirection.rtl,
            child: Container(
              child: Column(
                children: [

                ],
              ),
            ),
          );
        }
    );
  }

  Widget cartWidget(index){
    return ClipRRect(
      borderRadius: BorderRadius.all(Radius.circular(10)),
      child: Image.asset(
        cartImage[index],
        width: 60,
        height: 60,
        fit: BoxFit.contain,
      ),
    );
  }
  List<String> cartImage =[
    "assets/images/productDetails1.png",
    "assets/images/productDetails2.png",
    "assets/images/productDetails2.png",
    "assets/images/productDetails1.png",
    "assets/images/productDetails2.png",
  ];

  List<String> strings =[
    "6.5",
    "6.0",
    "5.5",
    "5.0",
    "4.5",
    "4.0",
    "9.5",
    "9.0",
    "8.5",
    "8.0",
    "7.5",
    "7.0"
  ];

  Widget ringsMeasurment(index){
    return Container(
      width: 52,
      height: 44,
      decoration: BoxDecoration(
        color:index == 3 ? Color(0xffB59F7C) : Color(0xffF0F0F0),
        borderRadius: BorderRadius.circular(10)
      ),
      child: Center(child: Text(strings[index], style: TextStyle(fontSize: 14, color: index == 3 ? Colors.white: Color(0xff979491)),))
    );
  }
}

class ProductBottomSheet{

}
