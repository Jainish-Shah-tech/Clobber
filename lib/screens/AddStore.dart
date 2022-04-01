import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

class AddStore extends StatelessWidget {
  List<Step> stepList() => [
        const Step(
            title: Text('Create Online Store'),
            content: Center(
              child: Text('Account'),
            )),
        const Step(
            title: Text('Add Category and Product'),
            content: Center(
              child: Text('Address'),
            )),
        const Step(
            title: Text('Share Link with Customers'),
            content: Center(
              child: Text('Confirm'),
            ))
      ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      // 	title: Text(""),
      // ),
      body: ListView(
        children: [
          //1st Image of Slider
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Container(
              height: 200.0,
              child: new Carousel(
                boxFit: BoxFit.fill,
                images: [
                  AssetImage('images/C-2.jpeg'),
                  AssetImage('images/C-3.jpeg'),
                  AssetImage('images/C-1.jpeg'),
                  // AssetImage('images/w4.jpeg'),
                  // AssetImage('images/m2.jpg'),
                ],
                autoplay: true,
//      animationCurve: Curves.fastOutSlowIn,
//      animationDuration: Duration(milliseconds: 1000),
                dotSize: 4.0,
                indicatorBgPadding: 4.0,
              ),
            ),
          ),
          Container(
            alignment: Alignment.topCenter,
            child: Card(
              elevation: 10,
              shadowColor: Colors.black,
              color: Colors.white,
              child: SizedBox(
                width: 350,
                height: 380,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      // CircleAvatar(
                      //   backgroundColor: Colors.green[500],
                      //   radius: 40,
                      //   child: CircleAvatar(
                      //     backgroundImage: NetworkImage(
                      //         "https://pbs.twimg.com/profile_images/1304985167476523008/QNHrwL2q_400x400.jpg"), //NetworkImage
                      //     radius: 100,
                      //   ), //CircleAvatar
                      // ), //CirclAvatar
                      SizedBox(
                        height: 0,
                      ), //SizedBox
                      // Text(
                      //   'Create Online Store',
                      //   style: TextStyle(
                      //     fontSize: 15,
                      //     // color: Colors.green[900],
                      //     fontWeight: FontWeight.bold,
                      //   ), //Textstyle
                      // ), //Text
                      SizedBox(
                        height: 10,
                      ), //SizedBox
                      //Text
                      SizedBox(
                        height: 0,
                      ),
                      Stepper(
                        steps: stepList(),
                      ), //SizedBox
                      // SizedBox(
                      //   width: 170,
                      //   child: RaisedButton(
                      //     onPressed: () => null,
                      //     color: Colors.black,
                      //     child: Padding(
                      //       padding: const EdgeInsets.all(4.0),
                      //       child: Row(
                      //         children: [
                      //           // Icon(Icons.touch_app),
                      //           Text('CREATE JOB SLIP',
                      //               style: TextStyle(color: Colors.white)),
                      //         ],
                      //       ), //Row
                      //     ), //Padding
                      //   ), //RaisedButton
                      // ) //SizedBox
                    ],
                  ), //Column
                ), //Padding
              ), //SizedBox
            ),
          ),
        ],
        //4th Image of Slider
        // Container(
        // margin: EdgeInsets.all(6.0),
        // decoration: BoxDecoration(
        // 	borderRadius: BorderRadius.circular(8.0),
        // 	image: DecorationImage(
        // 	image: NetworkImage("ADD IMAGE URL HERE"),
        // 	fit: BoxFit.cover,
        // 	),
        // ),
        // ),

        //5th Image of Slider
        // Container(
        // margin: EdgeInsets.all(6.0),
        // decoration: BoxDecoration(
        // 	borderRadius: BorderRadius.circular(8.0),
        // 	image: DecorationImage(
        // 	image: NetworkImage("ADD IMAGE URL HERE"),
        // 	fit: BoxFit.cover,
        // 	),
        // ),
        // ),

        //Slider Container properties
        //     options: CarouselOptions(
        //       height: 180.0,
        //       enlargeCenterPage: true,
        //       // autoPlay: true,
        //       aspectRatio: 16 / 9,
        //       autoPlayCurve: Curves.fastOutSlowIn,
        //       enableInfiniteScroll: true,
        //       // autoPlayAnimationDuration: Duration(milliseconds: 800),
        //       viewportFraction: 0.8,
        //     ),
        //   ),
        // ],
      ),
    );
  }
}
