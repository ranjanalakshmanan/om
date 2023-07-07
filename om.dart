import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:om/colors.dart';
import 'package:om/sivan.dart';



class om extends StatefulWidget {
  const om({Key? key}) : super(key: key);

  @override
  State<om> createState() => _omState();
}

class _omState extends State<om> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:cynacc,
        title: Container(
          height: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: wht,
            ),
          child:TextFormField(
           decoration: InputDecoration(
               prefixIcon: Icon(Icons.search),
             suffixIcon: Icon(Icons.camera),
             hintText: "search amazon.in"

           ),
          ),


        ),

      ),
      body: ListView   (
        children: [
          Stack(
            children:[
              CarouselSlider.builder(
                options: CarouselOptions(
                  height: 400,
                  aspectRatio: 1/2,
                  viewportFraction: 1,
                  initialPage: 0,
                  enableInfiniteScroll: true,
                  reverse: false,
                  autoPlay: true,
                  autoPlayInterval: Duration(seconds: 3),
                  autoPlayAnimationDuration: Duration(milliseconds: 800),
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enlargeCenterPage: true,
                  enlargeFactor: 0.3,
                  // onPageChanged: callbackFunction,
                  scrollDirection: Axis.horizontal,
                ),
                itemCount:lissss.length,
                  itemBuilder: (BuildContext context, int itemIndex, int pageViewIndex) {

                  return Container(
                    height:200,
                    width: 400,
                    decoration: BoxDecoration(
                     image:DecorationImage(
                       image: AssetImage(lissss[itemIndex].image),
                       fit: BoxFit.cover,
                     ),
                    ),
                    );

                }),
              Positioned(
               child: Container(
                 height: 50,
                   decoration: BoxDecoration(
                     shape: BoxShape.circle,
                   ), child: Image.asset("assets/dis.jpg"),

               ),

            ),
              SizedBox(width:2000 ,),
              Container(
                width: 100,
                child: Padding(
                  padding: const EdgeInsets.only(left: 350),
                  child: Icon(Icons.share),
                ),
              ),
            ],
          ),
          Container(
            child: Row(
                children: [
                Icon(Icons.favorite_border),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("visit the 100 stores ",style: TextStyle(fontSize:20,color: Colors.blue ),),
                ),
                  SizedBox(width: 50,),

                RatingBarIndicator(
                  rating: 2.75,
                  itemBuilder: (context, index) => Icon(
                    Icons.star,
                    color: Colors.amber,
                  ),
                  itemCount: 5,
                  itemSize: 20.0,
                  direction: Axis.horizontal,
                ),
                  ]
                ),
               ),
          Padding(
            padding: const EdgeInsets.only(right: 350),

          ),
          Text("samsaung galaxy s20 FE 5G (cloud navy,8GBRAM,128GB storage)with no cost EMI&additional Exchange offers"),
          Row(
            children:[
              Container(
                alignment: Alignment.topLeft,
                height:20,
                  width: 100,
                  child: Padding(
                    padding: const EdgeInsets.only(right:10,),
                    child: Image.asset("assets/vvv.png"),
                  ),
              ),
              ],
              ),
          SizedBox(height:10,),
          Row(
            children: [
              Text("Deal",style: TextStyle(fontSize:20,color: Colors.red),),
            ],
          ),
          Container(
            child: Column(
                  children: [
                    Row(
                  children: [
                    Text("-21% '\u{20B9}",),
                    Text("30,999"),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(width:   450,),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 70),
                child: Text("EMI from\u{20B9}1,481.No cost EMI available.EMI options"),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 260),
                child: Text("inclusive of all taxes"),
              ),
            ],
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 300),
                child: Text("Total:\u{20B9}30,999"),

              ),
              Padding(
                padding: const EdgeInsets.only(right: 200),
                child: Text("FREE delivery sunday,14 may.Details"),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Or fastest delivery friday,12May.Order within 7hrs 56 mins.Details"),
              ),
             Container(
               child: Row(
                 children: [
                   Icon(Icons.location_on),
                   Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: Text("select delevery location",),
                   ),
                   SizedBox(height: 20,),
                 ],
               ),
             ),
              Padding(
                padding: const EdgeInsets.only(left:10 ),
                child: Row(
                  children: [
                    Text("in stock"),
                  ],
                ),
              ),
              SizedBox(height: 10,),

              Column(
                children: [
                  Container(
                    height: 60,
                    width: 450,
                    decoration: BoxDecoration(
                      color: Colors.yellow,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Center(child: Text("Add To Cart")),

                  ),
                  SizedBox(height: 20,),
                  Container(
                    height: 60,
                    width: 460,
                    decoration: BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Center(child: Text("Buy Now")),
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 500),
                        child: Icon(Icons.lock),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 300),
                        child:  Text("Secure traction"),

                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}





