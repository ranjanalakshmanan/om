import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:om/sivan.dart';
import 'colors.dart';
import 'om.dart';


class white extends StatefulWidget {
  const white({Key? key}) : super(key: key);

  @override
  State<white> createState() => _whiteState();
}

class _whiteState extends State<white> {
  get itemIndex => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor:wht,
        appBar: AppBar(
          backgroundColor:cynacc,
          title: Container(
            height: 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: wht,
            ),
            child: TextFormField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search),
                suffixIcon: Icon(Icons.camera),
                hintText: "search in amazon",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            ),
          ),
        ),
        body: ListView(
          children: [
            Container(
              height: 50,
              color: cyn,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(Icons.location_on),
                  ),
                  SizedBox(width: 10,),
                  Text("seelect a location to see product avaliability"),
                ],
              ),
            ),
            Container(
              height: 120,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: lissss.length,
                  itemBuilder: (BuildContext context, index) {
                    return GestureDetector(
                      onTap: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const om()),
                        );
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Container(
                              height: 80,
                              width: 70,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(lissss[index].image),
                                    fit: BoxFit.fill
                                ),
                                shape: BoxShape.circle,
                              ),

                            ),
                            Text(lissss[index].text),
                          ],
                        ),
                      ),
                    );
                  }
              ),
            ),
            CarouselSlider.builder(
                options: CarouselOptions(
                  height: 200,
                  aspectRatio: 1.9 / 2,
                  viewportFraction: 1.2,
                  initialPage: 0,
                  enableInfiniteScroll: true,
                  reverse: false,
                  autoPlay: true,
                  autoPlayInterval: Duration(seconds: 3),
                  autoPlayAnimationDuration: Duration(milliseconds: 800),
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enlargeCenterPage: true,
                  enlargeFactor: .5,
                  // onPageChanged: callbackFunction,
                  scrollDirection: Axis.horizontal,
                ),
                itemCount:lissss.length,
                itemBuilder: (BuildContext context, int itemIndex,
                    int pageViewIndex) {
                  return Container(
                    height: 200,
                    width: 390,
                    decoration: BoxDecoration(
                      color: cynacc,
                      image: DecorationImage(
                        image: AssetImage(lissss[itemIndex].image),
                        fit: BoxFit.cover,
                      ),

                    ),

                  );
                }

            ),
            Container(
              height: 250,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: lissss.length,
                  itemBuilder: (BuildContext context, index) {
                    return Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height:190,
                            width:140,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(lissss[index].image),
                                fit: BoxFit.fill,
                              ),
                            ),
                            // child: Image.asset("assets/ll.jpg")
                          ),
                        ),
                        Text("images",style: TextStyle(fontSize: 15,color: Colors.black),),
                      ],
                    );
                  }
              ),
            ),
            Text("select a amazon pictures",style: TextStyle(fontSize: 20,color: Colors.black),),
            Container(
              height: 500,
              color: wht,
              child: GridView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 200,
                      childAspectRatio: 1.5 / 2,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20),
                  itemCount:lissss.length,
                  itemBuilder: (BuildContext ctx, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Container(
                            height: 200,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(lissss[index].image),
                                  fit: BoxFit.cover,
                                ),
                                color: Colors.amber,
                                borderRadius: BorderRadius.circular(15)),
                          ),
                          Text("pictures", style:TextStyle(fontSize: 15,color: Colors.black),),
                        ]
                      ),
                    );
                  }),
            ),
            Text("Avaliable in the image pictures",style: TextStyle(fontSize: 20,color: Colors.black),),
          ],
        )
    );
  }
}
