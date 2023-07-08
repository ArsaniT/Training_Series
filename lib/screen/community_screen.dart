import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:training/data_access_layer/constent.dart';
import 'package:training/screen/the_challenge.dart';

import '../provider/main_provider.dart';
import 'classes_screen.dart';

class CommunityScreen extends StatefulWidget {
  const CommunityScreen({super.key});

  @override
  State<CommunityScreen> createState() => _CommunityScreenState();
}

class _CommunityScreenState extends State<CommunityScreen> {
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
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 17.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 75,
                          width: 75,
                          decoration:  const BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(image: AssetImage("assets/img/profile_img.jpg"),fit: BoxFit.cover)
                          ),

                        ),
                        const SizedBox(width: 7,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Dom ",
                              style: TextStyle(
                                color: Colors.black,
                                fontFamily: defENFont,
                                fontSize: 16,
                              ),
                            ),
                            heightDIV,
                            Text(
                              "3 hours ago",
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
                    const SizedBox(height: 12,),
                    Text(
                      "DAY 17:LOWER BODY",
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: defENFont,
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(height: 12,),
                    Text(
                      "29:05",
                      style: TextStyle(
                        color: Colors.black54,
                        fontFamily: defENFont,
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(height: 12,),
                    Text(
                      "THE Challenge",
                      style: TextStyle(
                        color: Colors.black54,
                        fontFamily: defENFont,
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(height: 12,),
                    Text(
                      "Challenge Round:46 jump",
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: defENFont,
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(height: 12,),
                    Container(
                      color: Colors.grey.shade200,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          color: Colors.grey.shade50,
                            child: TextFormField(

                              decoration: const InputDecoration(
                                hintText: " Write a Comment",

                              ),
                            ),
                        ),
                      ),
                    )
                  ],
              ),
                ), separatorBuilder:(context, index) =>  const SizedBox(height: 30), itemCount: 10)
            ),
          ],
        ),
      );
    });
  }
}
