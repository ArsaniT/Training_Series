import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:training/data_access_layer/constent.dart';
import 'package:training/provider/main_provider.dart';
import 'package:training/screen/the_challenge.dart';

class HomeMobScreen extends StatefulWidget {
  const HomeMobScreen({super.key});

  @override
  State<HomeMobScreen> createState() => _HomeMobScreenState();
}

class _HomeMobScreenState extends State<HomeMobScreen> {
  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (_, MainProvider mp, child) {
      return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset("assets/img/cover_image.jpg"),
              heightDIV,
              Text(
                "The CHALLENGE",
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: defENFont,
                  fontSize: 24,
                  fontWeight: FontWeight.w900,
                ),
              ),
              heightDIV,
              Text(
                "Josh Kramer",
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: defENFont,
                  fontSize: 16,
                ),
              ),
              heightDIV,
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const TheChallengeScreen(),
                      ));
                },
                child: Container(
                  decoration: const BoxDecoration(
                    color: Colors.black,
                  ),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 18, vertical: 12),
                  child: Text(
                    "Start PRACTICING",
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: defENFont,
                      fontSize: 17,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              heightDIV,
              heightDIV,

              /// overView classes community
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  /// overView
                  Column(
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
                  const SizedBox(
                    width: 14,
                  ),

                  /// classes
                  Column(
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
                  const SizedBox(
                    width: 14,
                  ),

                  /// community
                  Column(
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
                ],
              ),
              heightDIV,

              ///ABOUT THE SERIES
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "ABOUT THE SERIES",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: defENFont,
                        fontSize: 21,
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
            ],
          ),
        ),
      );
    });
  }
}
