import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:training/data_access_layer/constent.dart';

import '../provider/main_provider.dart';
import 'classes_screen.dart';
import 'community_screen.dart';

class TheChallengeScreen extends StatefulWidget {
  const TheChallengeScreen({super.key});

  @override
  State<TheChallengeScreen> createState() => _TheChallengeScreenState();
}

class _TheChallengeScreenState extends State<TheChallengeScreen> {
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


            /// overView classes community
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        /// overView
                        InkWell(
                          onTap: (){
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

                    ///ABOUT THE SERIES

                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Text(
                              "Get ready for the ultimate test .The Challenge Is a monthlong series designed to improve your strength.Get ready for the ultimate test .The Challenge Is a monthlong series designed to improve your strength.Get ready for the ultimate test .The Challenge Is a monthlong series designed to improve your strength",
                              textAlign: TextAlign.start,
                              maxLines: 8,
                              style: TextStyle(
                                color: Colors.black,
                                fontFamily: defENFont,
                                fontWeight: FontWeight.w100,
                                fontSize: 14,
                                height: 2.0,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    heightDIV,

                    ///ABOUT THE SERIES
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "READ MORE",
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
                    heightDIV,
                    ///about instructor
                    Container(
                      color: Colors.grey.shade200,
                      child: Column(
                        children: [
                          Image.asset(
                            "assets/img/class_1.jpg",

                            width: MediaQuery.of(context).size.width,
                          ),
                          heightDIV,
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 12.0),
                            child: Row(
                              children: [
                                Container(
                                  height: 100,
                                  width: 100,
                                  decoration:  const BoxDecoration(
                                    shape: BoxShape.circle,
                                    image: DecorationImage(image: AssetImage("assets/img/profile_img.jpg"),fit: BoxFit.cover)
                                  ),

                                ),
                                const SizedBox(width: 7,),
                                Column(
                                  children: [
                                    Text(
                                      "INSTRUCTOR",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontFamily: defENFont,
                                        fontSize: 16,
                                      ),
                                    ),
                                    heightDIV,
                                    Text(
                                      "Josh Kramer",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontFamily: defENFont,
                                        fontSize: 12,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          heightDIV,
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 16.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: Text(
                                    "Get ready for the ultimate test .The Challenge Is a monthlong series designed to improve your strength.Get ready for the ultimate test .The Challenge Is a monthlong series designed to improve your strength.Get ready for the ultimate test .The Challenge Is a monthlong series designed to improve your strength",
                                    textAlign: TextAlign.start,
                                    maxLines: 8,
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontFamily: defENFont,
                                      fontWeight: FontWeight.w100,
                                      fontSize: 14,
                                      height: 2.0,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          heightDIV,
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 16.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  "See MORE",
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
                        ],
                      ),
                    ),
                    heightDIV,
                    heightDIV,
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "ToTale RUM Time",
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              color: Colors.black54,
                              fontFamily: defENFont,
                              fontWeight: FontWeight.w900,
                              fontSize: 18,

                            ),
                          ),
                        ],
                      ),
                    ),
                    heightDIV,
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(Icons.timer_outlined,),
                          Text(
                            "03 hrs 08 min (7 Videos)",
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              color: Colors.black54,
                              fontFamily: defENFont,

                              fontSize: 14,

                            ),
                          ),
                        ],
                      ),
                    ),
                    heightDIV,
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 21.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,

                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Icon(Icons.network_cell,),
                              Text(
                                "Intermediate",
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  color: Colors.black54,
                                  fontFamily: defENFont,

                                  fontSize: 14,

                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Icon(Icons.network_cell,),
                              Text(
                                "Level 4",
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  color: Colors.black54,
                                  fontFamily: defENFont,

                                  fontSize: 14,

                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      );
    });
  }
}
