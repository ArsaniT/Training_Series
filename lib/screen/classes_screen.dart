import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:training/data_access_layer/constent.dart';
import 'package:training/screen/the_challenge.dart';

import '../provider/main_provider.dart';
import 'community_screen.dart';

class ClassesScreen extends StatefulWidget {
  const ClassesScreen({super.key});

  @override
  State<ClassesScreen> createState() => _ClassesScreenState();
}

class _ClassesScreenState extends State<ClassesScreen> {
  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (_, MainProvider mp, child) {
      return Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height / 5.7,
              width: MediaQuery.of(context).size.width,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Image.asset(
                    "assets/img/cover_image.jpg",
                    fit: BoxFit.fitWidth,
                    height: MediaQuery.of(context).size.height / 5.7,
                    width: MediaQuery.of(context).size.width,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Row(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: const Icon(Icons.arrow_back_ios,
                              color: Colors.black45, size: 37),
                        ),
                        const SizedBox(width: 42,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                                padding: EdgeInsets.only(
                                    top: MediaQuery.of(context).padding.top)),
                            Text(
                              "The CHALLENGE",
                              style: TextStyle(
                                color: Colors.black45,
                                fontFamily: defENFont,
                                fontSize: 24,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                            heightDIV,
                            Text(
                              "Josh Kramer",
                              style: TextStyle(
                                color: Colors.black45,
                                fontFamily: defENFont,
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            heightDIV,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                /// overView
                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const TheChallengeScreen(),));

                    mp.showOverview();
                  },
                  child: Column(
                    children: [
                      Text(
                        "OVERVIEW",
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: defENFont,
                          fontSize: 16,
                        ),
                      ),
                      const SizedBox(
                        height: 9,
                      ),
                      mp.overViewIsSelected
                          ? Container(
                        color: Colors.black,
                        width: 100,
                        height: 1.5,
                      )
                          : const SizedBox(),
                    ],
                  ),
                ),
                const SizedBox(
                  width: 14,
                ),

                /// classes
                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const ClassesScreen(),));
                    mp.showClasses();
                  },
                  child: Column(
                    children: [
                      Text(
                        "CLASSES",
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: defENFont,
                          fontSize: 16,
                        ),
                      ),
                      const SizedBox(
                        height: 9,
                      ),
                      mp.classesViewIsSelected
                          ? Container(
                        color: Colors.black,
                        width: 100,
                        height: 1.5,
                      )
                          : const SizedBox(),
                    ],
                  ),
                ),
                const SizedBox(
                  width: 14,
                ),

                /// community
                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const CommunityScreen(),));
                    mp.showCommunity();
                  },
                  child: Column(
                    children: [
                      Text(
                        "COMMUNITY",
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: defENFont,
                          fontSize: 16,
                        ),
                      ),
                      const SizedBox(
                        height: 9,
                      ),
                      mp.communityViewIsSelected
                          ? Container(
                        color: Colors.black,
                        width: 100,
                        height: 1.5,
                      )
                          : const SizedBox(),
                    ],
                  ),
                ),
              ],
            ),
            heightDIV,

            /// List
            Expanded(
              child: ListView.separated(itemBuilder:(context, index) =>
                Column(
                children: [
                  /// image
                  Image.asset(
                    "assets/img/class_1.jpg",

                    width: MediaQuery.of(context).size.width,
                  ),
                  heightDIV,

                  ///
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Day 1",
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: defENFont,
                            fontWeight: FontWeight.w900,
                            fontSize: 16,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Text(
                            "Test Your Strength And Determination,Test Your Strength And Determination",
                            textAlign: TextAlign.start,
                            maxLines: 2,
                            style: TextStyle(
                              color: Colors.black,
                              fontFamily: defENFont,
                              fontSize: 12,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ), separatorBuilder:(context, index) =>  const SizedBox(height: 30), itemCount: 10)
            ),
          ],
        ),
      );
    });
  }
}
